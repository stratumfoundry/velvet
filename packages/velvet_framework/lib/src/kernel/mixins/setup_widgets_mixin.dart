import 'package:flutter/widgets.dart';
import 'package:velvet_framework/src/kernel/contracts/kernel_contract.dart';
import 'package:velvet_framework/src/kernel/widgets/kernel_error_widget.dart';
import 'package:velvet_framework/src/kernel/widgets/kernel_loading_widget.dart';

mixin SetupWidgetsMixin on KernelContract {
  final List<WidgetWrapperCallback> _widgetCallbacks = [];

  // Set the initialization's error widget of the application
  /// If not set, the default error widget will be used
  ///
  /// NOTE: The widget must return a MaterialApp at its root
  @override
  void overrideErrorWidget(KernelErrorWidget errorWidget) {
    throwIfRunning();

    this.errorWidget = errorWidget;
  }

  /// Set the initialization's loading widget of the application
  /// If not set, the default loading widget will be used
  ///
  @override
  void overrideLoadingWidget(KernelLoadingWidget loadingWidget) {
    throwIfRunning();

    this.loadingWidget = loadingWidget;
  }

  /// Register a callback to be called when the widget is created
  ///
  /// The callback will receive the widget as a parameter and must return the
  /// widget to be used
  @override
  void addWidgetCallback(WidgetWrapperCallback callback) {
    _widgetCallbacks.add(callback);
  }

  /// Apply the widget callbacks to the widget
  ///
  /// The widget callbacks are applied in the order they were registered
  ///
  /// The widget callbacks are applied to the widget before the widget is
  /// returned
  // ignore: unused_element, avoid_returning_widgets
  @protected
  Widget applyWidgetCallbacks(Widget baseWidget) {
    Widget currentWidget = baseWidget;

    for (final callback in _widgetCallbacks) {
      currentWidget = callback(currentWidget);
    }

    return currentWidget;
  }
}
