import 'dart:async';

import 'package:velvet_framework/src/core/event/events/velvet_event.dart';

abstract class VelvetEventBusContract {
  /// Dispatches an event to the event bus.
  void dispatch<T extends VelvetEvent>(T event);

  /// Subscribes to an event.
  ///
  /// [onEvent] is called when the event is dispatched.
  StreamSubscription<T> listen<T extends VelvetEvent>(
    void Function(T event) onEvent,
  );
}
