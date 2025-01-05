import 'dart:async';

import 'package:velvet_framework/src/core/plugin/contracts/velvet_plugin_manager_contract.dart';
import 'package:velvet_framework/src/core/plugin/velvet_plugin.dart';

class VelvetPluginManager implements VelvetPluginManagerContract {
  final List<VelvetPlugin> _plugins = [];

  @override
  void addPlugin(VelvetPlugin plugin) {
    _plugins.add(plugin);
  }

  @override
  FutureOr<void> runRegister() async {
    for (final plugin in _plugins) {
      await plugin.register();
    }
  }

  @override
  FutureOr<void> runBoot() async {
    for (final plugin in _plugins) {
      await plugin.boot();
    }
  }

  @override
  FutureOr<void> runBeforeAppStartup() async {
    for (final plugin in _plugins) {
      await plugin.beforeAppStartup();
    }
  }
}
