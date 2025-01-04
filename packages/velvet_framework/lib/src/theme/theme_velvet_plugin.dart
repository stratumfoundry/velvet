import 'dart:async';

import 'package:velvet_framework/src/core/plugin/velvet_plugin.dart';
import 'package:velvet_framework/src/core/velvet_container.dart';
import 'package:velvet_framework/src/theme/config/default_theme_config.dart';
import 'package:velvet_framework/src/theme/contracts/theme_config_contract.dart';

class ThemeVelvetPlugin extends VelvetPlugin {
  @override
  FutureOr<void> register() {
    container.registerSingleton<ThemeConfigContract>(DefaultThemeConfig());
  }
}
