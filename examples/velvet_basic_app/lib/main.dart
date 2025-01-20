import 'package:connectivity_velvet_plugin/connectivity_velvet_plugin.dart';
import 'package:form_velvet_plugin/form_velvet_plugin.dart';
import 'package:riverpod_velvet_plugin/riverpod_velvet_plugin.dart';
import 'package:velvet_basic_app/config/form_config.dart';
import 'package:velvet_basic_app/config/router_config.dart';
import 'package:velvet_basic_app/config/translation_config.dart';
import 'package:velvet_framework/velvet_framework.dart';

void main() {
  createVelvetApp()
    ..addRegisterCallback(() {
      container
        ..registerSingleton<FormConfigContract>(FormConfig())
        ..registerSingleton<VelvetTranslationConfigContract>(
          TranslationConfig(),
        )
        ..registerSingleton<VelvetRouterConfigContract>(RouterConfig());
    })
    ..addPlugin(RiverpodVelvetPlugin())
    ..addPlugin(ConnectivityVelvetPlugin())
    ..addPlugin(FormVelvetPlugin())
    ..run();
}
