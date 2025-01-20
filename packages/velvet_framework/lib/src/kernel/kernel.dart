import 'package:flutter/material.dart';
import 'package:velvet_framework/src/core/velvet_container.dart';
import 'package:velvet_framework/src/kernel/contracts/kernel_contract.dart';
import 'package:velvet_framework/src/kernel/mixins/setup_container_composition_mixin.dart';
import 'package:velvet_framework/src/kernel/mixins/setup_env_mixin.dart';
import 'package:velvet_framework/src/kernel/mixins/setup_event_but_mixin.dart';
import 'package:velvet_framework/src/kernel/mixins/setup_logger_mixin.dart';
import 'package:velvet_framework/src/kernel/mixins/setup_plugin_manager_mixin.dart';
import 'package:velvet_framework/src/kernel/mixins/setup_widgets_mixin.dart';
import 'package:velvet_framework/src/kernel/widgets/kernel_widget.dart';

class Kernel extends KernelContract
    with
        SetupContainerCompositionMixin,
        SetupEnvMixin,
        SetupEventButMixin,
        SetupLoggerMixin,
        SetupPluginManagerMixin,
        SetupWidgetsMixin {
  Kernel() {
    _init();
  }

  void _init() {
    registerItSelf();
    registerLoggerConfig();
    registerLogger();
    registerEventBus();
    registerPluginManager();
    registerEnvConfig();
    addCorePlugins();
  }

  /// Register the Kernel to the container
  /// so it can be accessed from the container
  ///
  /// This is very important to make sure the Kernel is accessible
  /// from the container
  @protected
  void registerItSelf() {
    container.registerSingleton<KernelContract>(this);
  }

  /// See [navigatorKey] for more information
  static final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  /// See [resolutionKey] for more information
  static final _resolutionKey = GlobalKey();

  @override
  GlobalKey get resolutionKey => _resolutionKey;

  Future<void> _appStartup() async {
    await loadEnv();
    await pluginManager.runRegister();
    await runRegisterCallbacks();
    await container.allReady();
    await pluginManager.runBoot();
    await runBootCallbacks();
    await container.allReady();
  }

  @override
  void run() async {
    WidgetsFlutterBinding.ensureInitialized();

    runBeforeAppStartupCallbacks();

    super.run();

    await pluginManager.runBeforeAppStartup();

    runApp(
      applyWidgetCallbacks(
        KernelWidget(
          appStartup: _appStartup,
          errorWidget: errorWidget,
          loadingWidget: loadingWidget,
        ),
      ),
    );
  }
}
