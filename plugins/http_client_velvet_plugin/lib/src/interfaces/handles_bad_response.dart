import 'package:dio/dio.dart';
import 'package:http_client_velvet_plugin/src/exceptions/http_request/http_request_exception.dart';
import 'package:http_client_velvet_plugin/src/request/velvet_http_request.dart';

abstract interface class HandlesBadResponse {
  /// Handle the bad response.
  ///
  /// [dioException] is the exception that was thrown.
  /// [httpRequest] is the request that was made.
  /// [response] is the response that is considered bad.
  HttpRequestException? handleBadResponse(
    DioException dioException,
    VelvetHttpRequest httpRequest,
    Response response,
  );
}
