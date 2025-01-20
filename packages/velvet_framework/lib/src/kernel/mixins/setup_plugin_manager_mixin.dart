import 'package:flutter/foundation.dart';
import 'package:velvet_framework/src/core/plugin/contracts/velvet_plugin_manager_contract.dart';
import 'package:velvet_framework/src/core/plugin/velvet_plugin.dart';
import 'package:velvet_framework/src/core/plugin/velvet_plugin_manager.dart';
import 'package:velvet_framework/src/core/velvet_container.dart';
import 'package:velvet_framework/src/kernel/contracts/kernel_contract.dart';
import 'package:velvet_framework/src/kernel/loaders/velvet_plugin_loader.dart';

mixin SetupPluginManagerMixin on KernelContract {
  @protected
  VelvetPluginManagerContract get pluginManager =>
      container.get<VelvetPluginManagerContract>();

  @protected
  void registerPluginManager() {
    container.registerSingleton<VelvetPluginManagerContract>(
      VelvetPluginManager(),
    );
  }

  @override
  void addPlugin(VelvetPlugin plugin) {
    throwIfRunning();

    pluginManager.addPlugin(plugin);
  }

  @protected
  void addCorePlugins() {
    velvetPluginLoader().forEach((plugin) {
      pluginManager.addPlugin(plugin);
    });
  }
}
