/// Store contract
///
/// Can be accessed by [storeProvider] to get the store instance
abstract class VelvetStoreContract {
  /// Clear the store
  Future<void> clear();

  /// Get a value from the store
  Future<T?> get<T>(String key, {T? defaultValue});

  /// Put a value in the store
  Future<void> put<T>(String key, T? value);

  /// Remove a value from the store
  Future<void> remove(String key);
}
