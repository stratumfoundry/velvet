import 'dart:async';

import 'package:connectivity_velvet_plugin/src/notifiers/connectivity_notifier.dart';
import 'package:velvet_framework/velvet_framework.dart';

/// A plugin for managing connectivity within the Velvet Framework.
///
/// The `ConnectivityVelvetPlugin` integrates network connectivity monitoring into the Velvet Framework.
/// It registers a [ConnectivityNotifier] as a singleton and ensures that the initial connectivity state
/// is enforced at boot time. It also sets up listeners to monitor real-time connectivity changes.
///
/// ### Features
///
/// - Registers a `ConnectivityNotifier` as a singleton in the Velvet container.
/// - Initializes and enforces the current connectivity state during boot.
/// - Registers listeners for monitoring network status changes.
///
/// ### Usage
///
/// Add this plugin to the Velvet Framework's plugin list:
///
/// ```dart
/// import 'package:connectivity_velvet_plugin/connectivity_velvet_plugin.dart';
///
/// main() {
///   createVelvetApp()
///     ..addPlugin(ConnectivityVelvetPlugin())
///     ..run();
/// }
/// ```
///
/// The `ConnectivityNotifier` can then be accessed anywhere in the application using the container:
///
/// ```dart
/// final notifier = container.get<ConnectivityNotifier>();
/// print(notifier.isOnline); // Check if the device is online
/// ```
///
/// ## Helpers
///
/// Listen to connectivity changes using the `OnlineEvent` and `OfflineEvent` events:
///
/// ```dart
/// import 'dart:async';
///
/// import 'package:velvet_framework/velvet_framework.dart';
/// import 'package:connectivity_velvet_plugin/connectivity_velvet_plugin.dart';
/// import 'package:flutter/material.dart';
///
/// class MyWidget extends StatefulWidget {
///   @override
///   _MyWidgetState createState() => _MyWidgetState();
/// }
///
/// class _MyWidgetState extends State<MyWidget> {
///   // Subscriptions for online and offline events
///   late final StreamSubscription<OnlineEvent> _onOnlineSubscription;
///   late final StreamSubscription<OfflineEvent> _onOfflineSubscription;
///
///   @override
///   void initState() {
///     super.initState();
///     // Listen to online and offline events
///     _onOnlineSubscription = listen<OnlineEvent>(onOnline);
///     _onOfflineSubscription = listen<OfflineEvent>(onOffline);
///   }
///
///   void onOnline(OnlineEvent event) {
///     print('Device is online');
///   }
///
///   void onOffline(OfflineEvent event) {
///     print('Device is offline');
///   }
///
///   @override
///   void dispose() {
///     // Cancel subscriptions to prevent memory leaks
///     _onOnlineSubscription.cancel();
///     _onOfflineSubscription.cancel();
///     super.dispose();
///   }
///
///   @override
///   Widget build(BuildContext context) {
///     return Container();
///   }
/// }
/// ```
///
class ConnectivityVelvetPlugin extends VelvetPlugin {
  /// Registers the `ConnectivityNotifier` as a singleton.
  ///
  /// This method is called during the plugin registration phase and ensures that
  /// the `ConnectivityNotifier` is available throughout the application lifecycle.
  @override
  FutureOr<void> register() {
    container.registerSingleton<ConnectivityNotifier>(ConnectivityNotifier());
  }

  /// Boots the plugin and enforces the initial connectivity state.
  ///
  /// This method is called during the plugin boot phase and ensures:
  /// 1. The current connectivity state is checked and the appropriate event is dispatched.
  /// 2. Connectivity listeners are registered for real-time monitoring.
  @override
  FutureOr<void> boot() async {
    await _enforceInitialConnectivityState();
    registerListeners();
  }

  /// Enforces the initial connectivity state.
  ///
  /// This method retrieves the `ConnectivityNotifier` from the container and checks
  /// the current connectivity status, ensuring that the appropriate event (`OnlineEvent` or `OfflineEvent`)
  /// is dispatched at startup.
  Future<void> _enforceInitialConnectivityState() async {
    await container.get<ConnectivityNotifier>().onConnectivityChanged();
  }

  /// Registers listeners for real-time connectivity changes.
  ///
  /// This method sets up the `ConnectivityNotifier` to monitor network status changes
  /// and dispatch appropriate events during the application's runtime.
  void registerListeners() {
    container.get<ConnectivityNotifier>().registerListeners();
  }
}
