import 'package:connectivity_velvet_plugin/connectivity_velvet_plugin.dart';
import 'package:form_velvet_plugin/form_velvet_plugin.dart';
import 'package:riverpod_velvet_plugin/riverpod_velvet_plugin.dart';
import 'package:velvet_basic_app/config/form_config.dart';
import 'package:velvet_basic_app/config/router_config.dart';
import 'package:velvet_framework/velvet_framework.dart';

void main() {
  createVelvetApp()
    ..addBeforeAppStartupCallback(() {
      container.onRegisteredForType<FormConfigContract>(() {
        print('Some config registered');
      });

      container.onRegisteredForType<VelvetEventBusContract>(
        () {
          print('Event bus registered');
        },
      );

      container.onResolvedForType<VelvetEventBusContract>(
        (instance) {
          print('Event bus resolved: $instance');
        },
      );

      // container.onResolved((instance) {
      //   print('Some instance resolved: $instance');
      // });
    })
    ..addRegisterCallback(() {
      container
        ..registerSingleton<FormConfigContract>(FormConfig())
        ..registerSingleton<VelvetRouterConfigContract>(RouterConfig());
    })
    ..addPlugin(RiverpodVelvetPlugin())
    ..addPlugin(ConnectivityVelvetPlugin())
    ..addPlugin(FormVelvetPlugin())
    ..run();
}
