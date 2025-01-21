import 'package:dio/dio.dart';
import 'package:http_client_velvet_plugin/src/request/velvet_http_request.dart';

/// The contract for an HTTP request that returns a map of key-value pairs.
///
/// This class is designed for HTTP requests (e.g., GET, POST) that return a single object
/// in the form of a `Map<String, dynamic>`. It simplifies the process of parsing the
/// response into a strongly-typed object.
///
/// ### How to use
///
/// To use this class, extend it and implement the [itemMapper] function to map the
/// JSON response to your desired model.
///
/// ```dart
/// class User {
///   final int id;
///   final String name;
///
///   User({
///     required this.id,
///     required this.name,
///   });
/// }
///
/// class UserRequest extends VelvetHttpRequestHandlingMapResponse<User> {
///   @override
///   T Function(Map<String, dynamic> json) get itemMapper => (json) => User(
///     id: json['id'],
///     name: json['name'],
///   );
/// }
/// ```
///
/// Alternatively, if you are using a code generator like `json_serializable` or `freezed`,
/// you can simply pass the `fromJson` method:
///
/// ```dart
/// class UserRequest extends VelvetHttpRequestHandlingMapResponse<User> {
///   @override
///   T Function(Map<String, dynamic> json) get itemMapper => User.fromJson;
/// }
/// ```
///
/// This will ensure that the raw JSON data from the response is converted into the
/// specified model class.
///
/// ### Custom Behavior
///
/// You can override the [fromResponse] method if your API returns data in a
/// structure that requires additional transformation before calling the [itemMapper].
abstract class VelvetHttpRequestHandlingMapResponse<T>
    extends VelvetHttpRequest<T, Map<String, dynamic>> {
  /// A function that maps the JSON response to the desired model.
  ///
  /// This function is called by [fromResponse] to convert the JSON map into
  /// the appropriate object of type `T`.
  T Function(Map<String, dynamic> json) get itemMapper;

  /// Converts the response's raw data (a JSON map) to the target model.
  ///
  /// This method is responsible for taking the response data and applying the
  /// [itemMapper] function to produce an instance of the model.
  @override
  T fromResponse(Response<Map<String, dynamic>> response) {
    return itemMapper(response.data!);
  }
}
