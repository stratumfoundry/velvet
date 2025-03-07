import 'dart:async';
import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:velvet_framework/src/core/event/utils/dispatch.dart';
import 'package:velvet_framework/src/core/velvet_container.dart';
import 'package:velvet_framework/src/translation/contracts/velvet_translation_config_contract.dart';
import 'package:velvet_framework/src/translation/contracts/velvet_translator_adapter_contract.dart';
import 'package:velvet_framework/src/translation/contracts/velvet_translator_contract.dart';
import 'package:velvet_framework/src/translation/events/locale_loaded_from_os.dart';
import 'package:velvet_framework/src/translation/exceptions/locale_not_available_exception.dart';
import 'package:velvet_framework/src/translation/mixins/interacts_with_velvet_translation_components.dart';
import 'package:velvet_framework/src/translation/storables/locale_storable.dart';

class VelvetTranslator extends VelvetTranslatorContract
    with InteractsWithVelvetTranslationComponents {
  VelvetTranslator() {
    currentLocale =
        container.get<VelvetTranslationConfigContract>().defaultLocale;

    if (config.shouldUseOperatingSystemLocale) {
      _loadFromOS();
    }
  }

  final _localeStream = StreamController<Locale?>.broadcast();

  @override
  Stream<Locale?> get localeStream => _localeStream.stream;

  @override
  FutureOr<void> setLocale(BuildContext context, Locale locale) {
    if (!config.supportedLocales.contains(locale)) {
      throw LocaleNotAvailableException(locale);
    }

    currentLocale = locale;
    _localeStream.add(locale);

    LocaleStorable().put(locale.languageCode);
    container.get<VelvetTranslatorAdapterContract>().refresh(context, locale);
  }

  // Load the locale from the operating system
  // Here we can't use the setLocale because no context is available.
  void _loadFromOS() {
    var locale = PlatformDispatcher.instance.locale;

    var languageCode = locale.languageCode;

    if (!config.supportedLocales.contains(Locale(languageCode))) {
      return;
    }

    currentLocale = locale;

    dispatch(LocaleLoadedFromOs(locale));
  }

  @override
  List<LocalizationsDelegate> delegates() {
    return [
      adapter.delegate,
      ...GlobalMaterialLocalizations.delegates,
      GlobalWidgetsLocalizations.delegate,
    ];
  }

  @override
  List<Locale> get supportedLocales {
    return config.supportedLocales;
  }

  @override
  String translate(
    BuildContext context,
    String key, {
    Map<String, String>? args,
  }) {
    return adapter.translate(context, key, args);
  }
}
