import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:velvet_framework/src/kernel/contracts/kernel_contract.dart';
import 'package:velvet_support/velvet_support.dart';

typedef RegisterCallback = FutureOr<void> Function();

typedef BootCallback = FutureOr<void> Function();

typedef BeforeAppStartupCallback = void Function();

mixin SetupContainerCompositionMixin on KernelContract {
  final ListenerManager<RegisterCallback> _registerCallbacks =
      ListenerManager();

  final ListenerManager<BootCallback> _bootCallbacks = ListenerManager();

  final ListenerManager<BeforeAppStartupCallback> _beforeAppStartupCallbacks =
      ListenerManager();

  /// Register a callback to be called when the container is ready
  @override
  void addRegisterCallback(RegisterCallback callback) {
    throwIfRunning();

    _registerCallbacks.addCallback(callback);
  }

  /// Register a callback to be called when the container is booted
  @override
  void addBootCallback(BootCallback callback) {
    throwIfRunning();

    _bootCallbacks.addCallback(callback);
  }

  @override
  void addBeforeAppStartupCallback(BeforeAppStartupCallback callback) {
    throwIfRunning();

    _beforeAppStartupCallbacks.addCallback(callback);
  }

  @protected
  Future<void> runRegisterCallbacks() async {
    _registerCallbacks.runAllConcurrent((callback) async => await callback());
  }

  @protected
  Future<void> runBootCallbacks() async {
    _bootCallbacks.runAllConcurrent((callback) async => await callback());
  }

  @protected
  void runBeforeAppStartupCallbacks() {
    _beforeAppStartupCallbacks.runAllSync(
      (callback) => callback(),
    );
  }
}
