/// A contract for a simple key-value store adapter.
abstract class VelvetStoreAdapterContract {
  /// Put a value for the given key.
  Future<void> put<T>(String key, T? value);

  /// Retrive value for the given key.
  /// If the value is not found, returns [defaultValue].
  /// If [defaultValue] is not provided, returns `null`.
  Future<T?> get<T>(String key, {T? defaultValue});

  /// Removes the data associated with the given [key] from the store.
  ///
  /// Throws an exception if the removal fails.
  Future<void> remove(String key);

  /// Clears all data from the store.
  ///
  /// Throws an exception if the clearing fails.
  Future<void> clear();
}
