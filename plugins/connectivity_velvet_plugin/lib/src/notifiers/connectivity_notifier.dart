import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:connectivity_velvet_plugin/connectivity_velvet_plugin.dart';
import 'package:flutter/foundation.dart';
import 'package:velvet_framework/velvet_framework.dart';

/// A notifier class that monitors device connectivity and handles connectivity change events.
///
/// This class is built on top of `ChangeNotifier` to provide reactive connectivity status updates.
/// It integrates with `connectivity_plus` to detect network changes and dispatches appropriate events
/// using the `Velvet Framework`.
///
/// ### How to use
///
/// To use this class, create an instance and register listeners to monitor connectivity changes:
///
/// ```dart
/// final connectivityNotifier = ConnectivityNotifier();
/// connectivityNotifier.registerListeners();
/// ```
///
/// You can use the `isOnline` or `isOffline` properties to query the current connectivity status,
/// or listen to `OnlineEvent` and `OfflineEvent` for connectivity updates.
///
/// ### Features
///
/// - Monitors network connectivity in real-time.
/// - Dispatches `OnlineEvent` or `OfflineEvent` based on the network status.
/// - Provides reactive properties `isOnline` and `isOffline` for UI updates.
///
/// ### Events Dispatched
///
/// - **`OnlineEvent`**: When the device is connected to a network (Wi-Fi, mobile data, etc.).
/// - **`OfflineEvent`**: When the device has no network connectivity.
class ConnectivityNotifier extends ChangeNotifier {
  ConnectivityNotifier();

  /// Whether the device is currently online.
  final bool _isOnline = true;

  /// Returns `true` if the device is online.
  bool get isOnline => _isOnline;

  /// Returns `true` if the device is offline.
  bool get isOffline => !_isOnline;

  /// Handles connectivity change events and dispatches the appropriate event.
  ///
  /// This method checks the current connectivity status using `Connectivity` and
  /// dispatches either an `OnlineEvent` or `OfflineEvent` based on the result.
  Future<void> onConnectivityChanged() async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.none)) {
      dispatch(OfflineEvent());
    } else {
      dispatch(OnlineEvent());
    }
  }

  /// Registers listeners for real-time connectivity changes.
  ///
  /// This method sets up a listener on `onConnectivityChanged` from `Connectivity`,
  /// which invokes [onConnectivityChanged] whenever the network status changes.
  void registerListeners() {
    Connectivity().onConnectivityChanged.listen((_) => onConnectivityChanged());
  }
}
