import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velvet_framework/hooks/use_provider/use_provider.dart';
import 'package:velvet_framework/theme/providers/theme_data_provider.dart';
import 'package:velvet_framework/theme/providers/theme_light_provider.dart';

ThemeData useLightTheme() {
  final context = useContext();
  final themeData = useProvider(themeDataProvider, context: context);
  final themeDefinition = useProvider(themeLightProvider, context: context);

  return themeData.copyWith(
    brightness: Brightness.light,
    extensions: [
      themeDefinition,
    ],
  );
}
