import 'package:dio/dio.dart';
import 'package:http_client_velvet_plugin/src/exceptions/http_request/http_request_exception.dart';

class ConnectionTimeoutHttpRequestException extends HttpRequestException {
  ConnectionTimeoutHttpRequestException({
    required super.httpRequest,
    required super.dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.connectionTimeout),
        super(
          message: message ?? dioException.message,
        );
}
