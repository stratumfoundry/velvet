import 'dart:async';

import 'package:connectivity_velvet_plugin/src/notifiers/connectivity_notifier.dart';
import 'package:velvet_framework/velvet_framework.dart';

class ConnectivityVelvetPlugin extends VelvetPlugin {
  @override
  FutureOr<void> register() {
    container.registerSingleton<ConnectivityNotifier>(ConnectivityNotifier());
  }

  @override
  FutureOr<void> boot() async {
    // Enforce the initial state
    await container.get<ConnectivityNotifier>().onConnectivityChanged();
  }
}
