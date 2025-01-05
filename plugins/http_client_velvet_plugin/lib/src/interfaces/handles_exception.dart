import 'package:dio/dio.dart';
import 'package:http_client_velvet_plugin/src/exceptions/http_request/http_request_exception.dart';
import 'package:http_client_velvet_plugin/src/request/velvet_http_request.dart';

abstract interface class HandlesException {
  /// Handle the original dio exception.
  ///
  /// [exception] is the original dio exception.
  HttpRequestException handleException(
    VelvetHttpRequest httpRequest,
    DioException exception,
  );

  /// Handle the bad response.
  ///
  /// [httpRequest] is the client request that caused the bad response.
  /// [exception] is the dio exception that caused the bad response.
  HttpRequestException handleBadResponse(
    VelvetHttpRequest httpRequest,
    DioException exception,
  );
}
