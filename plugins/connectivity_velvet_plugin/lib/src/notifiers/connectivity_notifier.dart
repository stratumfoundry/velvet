import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:connectivity_velvet_plugin/connectivity_velvet_plugin.dart';
import 'package:flutter/foundation.dart';
import 'package:velvet_framework/velvet_framework.dart';

class ConnectivityNotifier extends ChangeNotifier {
  ConnectivityNotifier();

  /// Whether the device is online
  final bool _isOnline = true;

  /// Whether the device is online
  bool get isOnline => _isOnline;

  /// Whether the device is offline
  bool get isOffline => !_isOnline;

  /// Handle the connectivity change event
  /// and dispatch the appropriate event
  Future<void> onConnectivityChanged() async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.none)) {
      event(OfflineEvent());
    } else {
      event(OnlineEvent());
    }
  }

  void registerListeners() {
    Connectivity().onConnectivityChanged.listen((_) => onConnectivityChanged());
  }
}
