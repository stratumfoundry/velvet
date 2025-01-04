class ListenerManager<T> {
  final List<T> _callbacks = [];

  /// Adds a callback to the manager.
  void addCallback(T callback) {
    if (!_callbacks.contains(callback)) {
      _callbacks.add(callback);
    }
  }

  /// Removes a callback from the manager.
  void removeCallback(T callback) {
    _callbacks.remove(callback);
  }

  /// Runs all callbacks synchronously, passing the provided arguments.
  /// This assumes the generic T is a function.
  void runAllSync(void Function(T callback) executor) {
    for (var callback in _callbacks) {
      executor(callback);
    }
  }

  /// Runs all callbacks concurrently, passing the provided arguments.
  /// This assumes the generic T is a function.
  Future<void> runAllConcurrent(
    Future<void> Function(T callback) executor,
  ) async {
    await Future.wait(_callbacks.map(executor));
  }
}

class TypeListenerManager<T> {
  final Map<Type, List<T>> _typeCallbacks = {};

  /// Adds a callback for a specific type.
  void addCallbackForType<U>(T callback) {
    final type = U;
    _typeCallbacks.putIfAbsent(type, () => []).add(callback);
  }

  /// Removes a callback for a specific type.
  void removeCallbackForType<U>(T callback) {
    final type = U;
    _typeCallbacks[type]?.remove(callback);
    if (_typeCallbacks[type]?.isEmpty ?? false) {
      _typeCallbacks.remove(type);
    }
  }

  /// Runs all callbacks for a specific type.
  void runAllForType<U>(void Function(T callback) executor) {
    final type = U;
    for (var callback in _typeCallbacks[type] ?? []) {
      executor(callback);
    }
  }
}
