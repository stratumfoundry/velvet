import 'package:dio/dio.dart';
import 'package:http_client_velvet_plugin/src/enums/http_request_method_enum.dart';
import 'package:velvet_support/velvet_support.dart';

/// The base class for defining HTTP requests in the Velvet framework.
///
/// This class serves as the foundation for creating strongly-typed HTTP requests.
/// It provides properties and methods for building requests, including path parameters,
/// query parameters, headers, and request bodies. Additionally, it enforces a contract
/// for parsing the response into a strongly-typed result.
///
/// ### How to use
///
/// To use this class, extend it and define the required properties such as [rawPath],
/// [method], and the [fromResponse] function.
///
/// ```dart
/// class GetUserRequest extends VelvetHttpRequest<User, Map<String, dynamic>> {
///   @override
///   String get rawPath => '/users/{id}';
///
///   @override
///   Map<String, dynamic>? get pathParameters => {'id': userId};
///
///   @override
///   HttpRequestMethodEnum get method => HttpRequestMethodEnum.get;
///
///   @override
///   User fromResponse(Response<Map<String, dynamic>> response) {
///     return User.fromJson(response.data!);
///   }
///
///   final String userId;
///
///   GetUserRequest(this.userId);
/// }
/// ```
///
/// ### Key Features
///
/// - **Path Building**: Supports dynamic path parameters through the [rawPath] and [pathParameters].
/// - **Query Parameters**: Allows adding query parameters to the request URL via [queryParameters].
/// - **Request Body**: Supports sending data with the request using the [body].
/// - **Headers**: Enables adding custom headers to the request with [headers].
/// - **Response Parsing**: Enforces implementation of [fromResponse] to convert the raw response into a strongly-typed result.
///
/// ### Notes
///
/// - The [path] property automatically resolves placeholders in the [rawPath] using the [pathParameters].
/// - Override [fromResponse] in subclasses to define how the response should be parsed.
abstract class VelvetHttpRequest<Parsed, Raw> {
  /// The path parameters for the current request.
  ///
  /// These parameters replace placeholders in the [rawPath].
  /// For example, if [rawPath] is `/users/{id}`, the [pathParameters] should include
  /// a key-value pair like `{'id': 1}` to replace `{id}` with `1`.
  Map<String, dynamic>? get pathParameters => null;

  /// The query parameters for the current request.
  ///
  /// These parameters are appended to the URL as query strings.
  /// For example, if [queryParameters] is `{'search': 'John'}`, the resulting URL
  /// will include `?search=John`.
  Map<String, dynamic>? get queryParameters => null;

  /// The body of the request.
  ///
  /// This is used for requests that require a payload, such as `POST` or `PUT`.
  Map<String, dynamic>? get body => null;

  /// The raw path of the API endpoint.
  ///
  /// Example: `/users/{id}`. Placeholders like `{id}` are resolved using [pathParameters].
  String get rawPath;

  /// The built path of the API endpoint with resolved placeholders.
  ///
  /// Automatically replaces placeholders in [rawPath] with values from [pathParameters].
  /// Ensures the path starts with a `/`.
  String get path {
    if (pathParameters == null) {
      return rawPath;
    }

    return rawPath.replaceAllMapped(
      RegExp(r'{(\w+)}'),
      (match) {
        var key = match.group(1);
        var value = pathParameters![key!];

        return value.toString();
      },
    ).ensureStartsWith('/');
  }

  /// Additional headers for the current request.
  ///
  /// These headers are merged with any global headers configured in the HTTP client.
  Map<String, dynamic>? get headers => null;

  /// The HTTP method of the request.
  ///
  /// Example: `HttpRequestMethodEnum.get`, `HttpRequestMethodEnum.post`.
  HttpRequestMethodEnum get method;

  /// Converts the raw response to a strongly-typed result.
  ///
  /// This method must be implemented in subclasses to define how the response
  /// data should be parsed into the desired type [Parsed].
  ///
  /// - [response]: The raw HTTP response.
  /// - Returns: The parsed result of type [Parsed].
  Parsed fromResponse(Response<Raw> response);
}
