import 'package:flutter/material.dart';
import 'package:velvet_framework/src/core/config/velvet_config.dart';

abstract class ThemeConfigContract extends VelvetConfig {
  /// The theme mode to be used for the application.
  ThemeMode get themeMode;

  /// The light theme to be used for the application.
  ThemeData get lightTheme;

  /// The dark theme to be used for the application.
  ThemeData get darkTheme;
}
