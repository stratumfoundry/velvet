import 'package:velvet_framework/velvet_framework.dart';

/// A contract defining the configuration for the developer inspector.
abstract class DevInspectorConfigContract extends VelvetConfig {
  /// Whether the developer inspector is enabled or not.
  bool get isEnabled;

  /// The number of taps required to activate the developer inspector.
  int get tapCount;
}
