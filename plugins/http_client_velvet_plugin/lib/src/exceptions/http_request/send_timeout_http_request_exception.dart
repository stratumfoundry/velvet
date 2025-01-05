import 'package:dio/dio.dart';
import 'package:http_client_velvet_plugin/src/exceptions/http_request/http_request_exception.dart';

class SendTimeoutHttpRequestException extends HttpRequestException {
  SendTimeoutHttpRequestException({
    required super.httpRequest,
    required super.dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.sendTimeout),
        super(
          message: message ?? dioException.message,
        );
}
