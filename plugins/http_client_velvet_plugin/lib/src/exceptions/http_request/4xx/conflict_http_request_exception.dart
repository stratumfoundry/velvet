import 'package:dio/dio.dart';
import 'package:http_client_velvet_plugin/src/exceptions/http_request/http_request_exception.dart';

class ConflictHttpRequestException extends HttpRequestException {
  ConflictHttpRequestException({
    required super.httpRequest,
    required super.dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.badResponse),
        assert(dioException.response != null),
        assert(dioException.response!.statusCode == 409),
        super(
          message: message ?? dioException.message,
        );
}
