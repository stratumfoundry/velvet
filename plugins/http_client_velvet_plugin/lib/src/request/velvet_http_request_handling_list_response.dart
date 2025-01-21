import 'package:dio/dio.dart';
import 'package:http_client_velvet_plugin/src/request/velvet_http_request.dart';

/// The contract for an HTTP request that returns a list of items.
///
/// This class is tailored for HTTP requests (e.g., GET) that return a list of objects
/// in the form of a JSON array. It provides a simple way to map the response to a list
/// of strongly-typed objects.
///
/// ### How to use
///
/// To use this class, extend it and implement the [itemMapper] function to define
/// how each item in the list should be parsed into your desired model.
///
/// ```dart
/// class Post {
///   final int id;
///   final String title;
///
///   Post({
///     required this.id,
///     required this.title,
///   });
/// }
///
/// class PostRequest extends VelvetHttpRequestHandlingListResponse<Post> {
///   @override
///   T Function(Map<String, dynamic> json) get itemMapper => (json) => Post(
///     id: json['id'],
///     title: json['title'],
///   );
/// }
/// ```
///
/// ### Using Generated Model Classes
///
/// If you are using code generators like `json_serializable` or `freezed`,
/// you can directly pass the `fromJson` method of your model class to [itemMapper]:
///
/// ```dart
/// class PostRequest extends VelvetHttpRequestHandlingListResponse<Post> {
///   @override
///   T Function(Map<String, dynamic> json) get itemMapper => Post.fromJson;
/// }
/// ```
///
/// ### Custom Behavior
///
/// If the API response requires additional processing (e.g., extracting the list
/// from a nested field), you can override the [fromResponse] method to handle
/// such cases.
abstract class VelvetHttpRequestHandlingListResponse<T>
    extends VelvetHttpRequest<List<T>, List> {
  /// A function that maps each JSON object in the response list to an instance of the model.
  ///
  /// This function is called for every item in the list to convert it from a
  /// `Map<String, dynamic>` to an object of type `T`.
  T Function(Map<String, dynamic> json) get itemMapper;

  /// Converts the response's raw data (a JSON list) to a list of strongly-typed models.
  ///
  /// This method iterates over the response data, applying the [itemMapper] function
  /// to each item in the list.
  @override
  List<T> fromResponse(Response<List> response) {
    return response.data!.map((e) => itemMapper(e)).toList();
  }
}
