import 'dart:async';

import 'package:flutter/widgets.dart';

abstract class VelvetTranslatorContract {
  late Locale currentLocale;

  Stream<Locale?> get localeStream;

  FutureOr<void> setLocale(BuildContext context, Locale locale);

  List<LocalizationsDelegate> delegates();

  List<Locale> get supportedLocales;

  String translate(
    BuildContext context,
    String key, {
    Map<String, String>? args,
  });
}
