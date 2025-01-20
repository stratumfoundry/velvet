import 'package:flutter/widgets.dart';
import 'package:velvet_framework/src/core/event/utils/dispatch.dart';
import 'package:velvet_framework/src/core/plugin/velvet_plugin.dart';
import 'package:velvet_framework/src/core/velvet_container.dart';
import 'package:velvet_framework/src/translation/adapters/flutter_i18n_translator_adapter.dart';
import 'package:velvet_framework/src/translation/config/default_velvet_translation_config.dart';
import 'package:velvet_framework/src/translation/contracts/velvet_translation_config_contract.dart';
import 'package:velvet_framework/src/translation/contracts/velvet_translator_adapter_contract.dart';
import 'package:velvet_framework/src/translation/contracts/velvet_translator_contract.dart';
import 'package:velvet_framework/src/translation/events/locale_loaded_from_store.dart';
import 'package:velvet_framework/src/translation/storables/locale_storable.dart';
import 'package:velvet_framework/src/translation/velvet_translator.dart';

class VelvetTranslationPlugin extends VelvetPlugin {
  @override
  void register() {
    container.registerSingleton<VelvetTranslationConfigContract>(
      DefaultVelvetTranslationConfig(),
    );

    container.registerLazySingleton<VelvetTranslatorAdapterContract>(
      () => FlutterI18nTranslatorAdapter(),
    );

    container.registerLazySingleton<VelvetTranslatorContract>(
      () => VelvetTranslator(),
    );
  }

  @override
  Future<void> boot() async {
    await _loadLocaleFromStore();
  }

  Future<void> _loadLocaleFromStore() async {
    final translator = container.get<VelvetTranslatorContract>();
    final localeStorable = LocaleStorable();

    final locale = await localeStorable.get();

    if (locale == null) {
      return;
    }

    translator.currentLocale = Locale(locale);

    dispatch(LocaleLoadedFromStore(Locale(locale)));
  }
}
