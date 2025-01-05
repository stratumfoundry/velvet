import 'package:dio/dio.dart';
import 'package:http_client_velvet_plugin/src/exceptions/http_request/http_request_exception.dart';

class UnprocessableContentHttpRequestException extends HttpRequestException {
  UnprocessableContentHttpRequestException({
    required super.httpRequest,
    required super.dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.badResponse),
        assert(dioException.response != null),
        assert(dioException.response!.statusCode == 422),
        super(
          message: message ?? dioException.message,
        );
}
