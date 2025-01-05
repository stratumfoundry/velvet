import 'package:flutter/material.dart';
import 'package:velvet_framework/src/core/plugin/velvet_plugin.dart';
import 'package:velvet_framework/src/kernel/exceptions/kernel_is_already_running_exception.dart';
import 'package:velvet_framework/src/kernel/mixins/setup_container_composition_mixin.dart';
import 'package:velvet_framework/src/kernel/widgets/kernel_error_widget.dart';
import 'package:velvet_framework/src/kernel/widgets/kernel_loading_widget.dart';

typedef WidgetWrapperCallback = Widget Function(
  Widget child,
);

abstract class KernelContract {
  KernelErrorWidget? errorWidget;
  KernelLoadingWidget? loadingWidget;

  /// Indicates if the kernel is running
  var _isRunning = false;

  /// This key is used to get the context of the Navigator
  /// It will be used to show dialogs, snackbars.
  ///
  /// ```dart
  /// showAboutDialog(
  ///  context: Kernel.navigatorKey.currentState!.context,
  ///  applicationName: 'Velvet Framework',
  /// );
  /// ```
  ///
  /// IMPORTANT: This key should be used only for showing dialogs, snackbars, custom error handling.
  /// If you need to read providers or get global context, use the [resolutionKey] instead.
  /// or use the [kernelContext] util function directly.
  GlobalKey<NavigatorState> get navigatorKey;

  /// This key is used to get the context of the KernelWidget
  /// It, combined with the [ProviderContainer], will be used to read providers
  ///
  /// ```dart
  /// ProviderScope
  ///   .riverpodContainerOf(Kernel.resolutionKey.currentContext!)
  ///   .read(...);
  /// ```
  GlobalKey get resolutionKey;

  // Set the initialization's error widget of the application
  /// If not set, the default error widget will be used
  void overrideErrorWidget(KernelErrorWidget errorWidget);

  /// Set the initialization's loading widget of the application
  /// If not set, the default loading widget will be used
  void overrideLoadingWidget(KernelLoadingWidget loadingWidget);

  /// Register a callback that will be executed before the app startup
  void addBeforeAppStartupCallback(BeforeAppStartupCallback callback);

  /// Register a callback that will be executed when the app is booting
  void addBootCallback(BootCallback callback);

  /// Register a callback that will be executed when the app is registering
  void addRegisterCallback(RegisterCallback callback);

  /// Register a plugin
  void addPlugin(VelvetPlugin plugin);

  /// Registers a callback that wraps a widget
  /// This callback will be applied to all widgets that are wrapped by the KernelAppWidget
  ///
  /// IMPORTANT: This callback will be applied to all widgets that are wrapped by the KernelAppWidget
  /// and will be applied in reverse order for nesting
  ///
  /// ```dart
  /// kernel.registerWidgetCallback((context, child) => child);
  /// ```
  void addWidgetCallback(WidgetWrapperCallback callback);

  /// Run the application
  ///
  /// This method should be called at the end of the configuration
  /// This will initialize the application with the provided configuration.
  @mustCallSuper
  void run() {
    throwIfRunning();

    setAsRunning();
  }

  /// Set the kernel as running
  void setAsRunning() {
    _isRunning = true;
  }

  @protected
  void throwIfRunning() {
    if (_isRunning) {
      throw KernelIsAlreadyRunningException();
    }
  }
}
