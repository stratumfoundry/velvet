import 'package:velvet_framework/src/core/config/velvet_config.dart';

abstract class VelvetEventConfigContract implements VelvetConfig {
  /// Whether the event stream should be synchronous or not.
  /// This do not enforce the event to be dispatched synchronously,
  /// it just means that the event will be dispatched in the same thread as the one that dispatched it.
  bool get shouldBeSync;
}
