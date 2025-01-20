/// Base class for all events in Velvet.
///
/// This class serves as the foundation for all events within the Velvet framework. It includes a feature to control the propagation
/// of events, allowing you to stop the event from being passed along to other listeners once it has been handled.
///
/// ### Features:
/// - **Propagation Control**: The event can be stopped, preventing further listeners from reacting to the event. This is useful in cases where an event
///   has been handled, and you don't want other listeners to process it.
///
/// ### Methods:
/// - `stopPropagation()`: Stops the propagation of the event. Once an event's propagation is stopped, no other listeners will be notified of the event.
/// - `wasPropagationStopped`: A getter that checks whether the propagation of the event has been stopped. It returns `true` if the event's propagation
///   has been stopped, otherwise it returns `false`.
///
/// ### Example:
/// ```dart
/// class CustomEvent extends VelvetEvent {
///   final String message;
///
///   CustomEvent(this.message);
/// }
///
/// listen<CustomEvent>((event) {
///  print(event.message);
///  event.stopPropagation(); // if this line is commented out, the next listener will be notified
/// });
///
/// listen<CustomEvent>((event) {
///   print('Second listener: ${event.message}');
/// });
///
/// dispatch(CustomEvent('Hello, world!'));
/// ```
/// In this example, after calling `stopPropagation()`, any further listeners for `CustomEvent` will not be notified.
abstract class VelvetEvent {
  /// Indicates if the event was stopped.
  bool _wasPropagationStopped = false;

  /// Stops the propagation of the event.
  void stopPropagation() {
    _wasPropagationStopped = true;
  }

  /// Checks if the propagation of the event has been stopped.
  bool get wasPropagationStopped => _wasPropagationStopped;
}
