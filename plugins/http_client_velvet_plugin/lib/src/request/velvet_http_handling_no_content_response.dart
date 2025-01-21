import 'package:dio/dio.dart';
import 'package:http_client_velvet_plugin/src/request/velvet_http_request.dart';

/// The contract for an HTTP request that expects no content in the response.
///
/// This class is designed for HTTP requests (e.g., DELETE, POST, PUT) that return no content
/// in the response body. It simplifies handling responses where the body is intentionally empty,
/// such as when a request succeeds with a `204 No Content` status.
///
/// ### How to use
///
/// To use this class, extend it and define the specific request details in the subclass.
///
/// ```dart
/// class DeleteUserRequest extends VelvetHttpHandlingNoContentResponse {
///   @override
///   String get path => '/users/{id}';
///
///   @override
///   HttpRequestMethodEnum get method => HttpRequestMethodEnum.delete;
/// }
/// ```
///
/// ### Notes
///
/// - This class ensures that the response body is ignored and provides a `null` result,
///   making it suitable for requests where only the HTTP status code indicates success.
/// - You can override additional properties or methods if needed to customize the request.
abstract class VelvetHttpHandlingNoContentResponse
    extends VelvetHttpRequest<Null, void> {
  /// Converts the response to `null` since no content is expected.
  ///
  /// This method ensures that the response body is not processed and always returns `null`.
  @override
  Null fromResponse(Response<void> response) {
    return null;
  }
}
