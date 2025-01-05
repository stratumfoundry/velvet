import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Get environment variable.
String? env(String key, [String? defaultValue]) {
  return dotenv.env[key] ?? defaultValue;
}

/// Get environment variable as string.
String? envString(String key, [String? defaultValue]) {
  return env(key, defaultValue);
}

/// Get environment variable as integer.
int? envInt(String key, [int? defaultValue]) {
  return int.tryParse(dotenv.env[key] ?? '') ?? defaultValue;
}

/// Get environment variable as double.
double? envDouble(String key, [double? defaultValue]) {
  return double.tryParse(dotenv.env[key] ?? '') ?? defaultValue;
}

/// Get environment variable as boolean.
// ignore: boolean_prefixes
bool? envBool(String key, [bool? defaultValue]) {
  final value = dotenv.env[key] ?? defaultValue.toString();

  return value == 'true' ? true : false;
}
