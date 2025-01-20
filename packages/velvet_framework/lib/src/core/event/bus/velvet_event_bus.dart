import 'dart:async';

import 'package:event_bus/event_bus.dart' as event_bus;
import 'package:velvet_framework/src/core/event/contracts/velvet_event_bus_contract.dart';
import 'package:velvet_framework/src/core/event/events/velvet_event.dart';

/// A concrete implementation of the `VelvetEventBusContract`.
///
/// The `VelvetEventBus` facilitates the publishing and subscription of events
/// within the Velvet Framework, enabling decoupled communication between components.
///
/// ### Features
/// - Dispatch events of type [VelvetEvent].
/// - Listen to specific events and handle them with custom callbacks.
/// - Ensures event propagation can be stopped for certain events.
///
/// ### Usage
///
/// ```dart
/// final eventBus = container.get<VelvetEventBusContract>();
///
/// // Dispatch an event
/// eventBus.dispatch(MyCustomEvent());
///
/// // Listen to an event
/// eventBus.listen<MyCustomEvent>((event) {
///   print('Event received: ${event.toString()}');
/// });
/// ```
///
/// ### Event Handling and Propagation
/// If an event's propagation is stopped using [VelvetEvent.stopPropagation],
/// it will not trigger any subsequent listeners for that event type.
class VelvetEventBus implements VelvetEventBusContract {
  /// Creates an instance of `VelvetEventBus`.
  VelvetEventBus() : super();

  /// The internal instance of the `EventBus` from the `event_bus` package.
  final _instance = event_bus.EventBus(sync: true);

  /// Dispatches an event to all registered listeners.
  ///
  /// - [event]: The event to be dispatched, which must extend [VelvetEvent].
  ///
  /// ### Example
  /// ```dart
  /// eventBus.dispatch(MyCustomEvent());
  /// ```
  @override
  void dispatch<T extends VelvetEvent>(T event) {
    _instance.fire(event);
  }

  /// Listens for events of a specific type and handles them with the provided callback.
  ///
  /// - [onEvent]: A callback executed when an event of type [T] is received.
  /// - [onSkipped]: Optional. A callback executed if the event's propagation was stopped.
  ///
  /// Returns a [StreamSubscription] that can be used to manage the listener's lifecycle.
  ///
  /// ### Example
  /// ```dart
  /// eventBus.listen<MyCustomEvent>((event) {
  ///   print('Received: ${event.message}');
  /// }, onSkipped: (event) {
  ///   print('Skipped: ${event.message}');
  /// });
  /// ```
  ///
  /// ### Propagation Control
  /// If an event's propagation is stopped using [VelvetEvent.stopPropagation], the [onSkipped]
  /// callback (if provided) will be invoked instead of [onEvent].
  @override
  StreamSubscription<T> listen<T extends VelvetEvent>(
    void Function(T event) onEvent, {
    void Function(T event)? onSkipped,
  }) {
    return _instance.on<T>().listen((event) {
      if (event.wasPropagationStopped) {
        onSkipped?.call(event);
        return;
      }

      onEvent(event);
    });
  }
}
