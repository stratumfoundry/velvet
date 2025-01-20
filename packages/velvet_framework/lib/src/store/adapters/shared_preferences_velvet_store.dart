import 'package:shared_preferences/shared_preferences.dart';
import 'package:velvet_framework/src/store/contracts/velvet_store_contract.dart';

/// A simple storage adapter that uses [SharedPreferences] as the storage mechanism.
class SharedPreferencesVelvetStore implements VelvetStoreContract {
  SharedPreferencesVelvetStore(this._sharedPreferencesInstance);

  final SharedPreferences _sharedPreferencesInstance;

  @override
  Future<void> clear() {
    return _sharedPreferencesInstance.clear();
  }

  Future<bool?> _getBool(String token, {bool? defaultValue}) async {
    bool? value = _sharedPreferencesInstance.getBool(token);

    if (value == null) {
      return defaultValue;
    }

    return value;
  }

  double? _getDouble(String token, {double? defaultValue}) {
    double? value = _sharedPreferencesInstance.getDouble(token);

    if (value == null) {
      return defaultValue;
    }

    return value;
  }

  int? _getInt(String token, {int? defaultValue}) {
    int? value = _sharedPreferencesInstance.getInt(token);

    if (value == null) {
      return defaultValue;
    }

    return value;
  }

  String? _getString(String token, {String? defaultValue}) {
    String? value = _sharedPreferencesInstance.getString(token);

    if (value == null) {
      return defaultValue;
    }

    return value;
  }

  List<String>? _getStringList(
    String token, {
    List<String>? defaultValue,
  }) {
    List<String>? value = _sharedPreferencesInstance.getStringList(token);

    if (value == null) {
      return defaultValue;
    }

    return value;
  }

  @override
  Future<void> remove(String token) {
    return _sharedPreferencesInstance.remove(token);
  }

  Future<void> _setBool(String token, bool value) {
    return _sharedPreferencesInstance.setBool(token, value);
  }

  Future<void> _setDouble(String token, double value) {
    return _sharedPreferencesInstance.setDouble(token, value);
  }

  Future<void> _setInt(String token, int value) {
    return _sharedPreferencesInstance.setInt(token, value);
  }

  Future<void> _setString(String token, String value) {
    return _sharedPreferencesInstance.setString(token, value);
  }

  Future<void> _setStringList(String token, List<String> value) {
    return _sharedPreferencesInstance.setStringList(token, value);
  }

  @override
  Future<T?> get<T>(String token, {T? defaultValue}) async {
    if (T == bool) {
      return _getBool(token, defaultValue: defaultValue as bool?) as T?;
    } else if (T == double) {
      return _getDouble(token, defaultValue: defaultValue as double?) as T?;
    } else if (T == int) {
      return _getInt(token, defaultValue: defaultValue as int?) as T?;
    } else if (T == String) {
      return _getString(token, defaultValue: defaultValue as String?) as T?;
    } else if (T == List<String>) {
      return _getStringList(token, defaultValue: defaultValue as List<String>?)
          as T?;
    }

    throw Exception(
      'The SharedPreferencesStorage does not support the type $T',
    );
  }

  @override
  Future<void> put<T>(String token, T? value) {
    if (value is bool) {
      return _setBool(token, value);
    } else if (value is double) {
      return _setDouble(token, value);
    } else if (value is int) {
      return _setInt(token, value);
    } else if (value is String) {
      return _setString(token, value);
    } else if (value is List<String>) {
      return _setStringList(token, value);
    }

    throw Exception(
      'The SharedPreferencesStorage does not support the type $T',
    );
  }
}
