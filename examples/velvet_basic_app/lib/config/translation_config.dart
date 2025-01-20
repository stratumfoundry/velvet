import 'package:flutter/widgets.dart';
import 'package:velvet_framework/velvet_framework.dart';

class TranslationConfig extends DefaultVelvetTranslationConfig {
  @override
  Locale get defaultLocale => Locale('en');

  @override
  List<Locale> get supportedLocales => [
        Locale('it'),
        Locale('en'),
      ];
}
