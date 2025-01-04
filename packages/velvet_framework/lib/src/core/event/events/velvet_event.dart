/// Base class for all events
/// This class now includes a propagation feature to control event propagation.
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
