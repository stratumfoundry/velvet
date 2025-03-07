import 'package:dio/dio.dart';
import 'package:http_client_velvet_plugin/src/exceptions/http_request/http_request_exception.dart';

class BadGatewayHttpRequestException extends HttpRequestException {
  BadGatewayHttpRequestException({
    required super.httpRequest,
    required super.dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.badResponse),
        assert(dioException.response != null),
        assert(dioException.response!.statusCode == 502),
        super(
          message: message ?? dioException.message,
        );
}
