import 'package:flutter/widgets.dart';

abstract class VelvetTranslatorAdapterContract {
  VelvetTranslatorAdapterContract();

  /// Returns the localizations delegate for the adapter.
  LocalizationsDelegate get delegate;

  /// Translates the given [key].
  ///
  /// The [args] parameter is an optional map of arguments that can be used to
  /// replace placeholders in the translated string.
  ///
  /// Returns the translated string.
  String translate(BuildContext context, String key, Map<String, String>? args);

  /// Refreshes the translations for the given [locale].
  /// This method is used to force the translations to be reloaded.
  /// Returns a [Future] that completes with a [bool] value.
  /// If the translations are successfully refreshed, the [Future] completes
  /// with `true`. Otherwise, it completes with `false`.
  Future<bool> refresh(BuildContext context, Locale locale);
}
