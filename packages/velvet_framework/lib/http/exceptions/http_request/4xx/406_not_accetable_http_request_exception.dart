import 'package:dio/dio.dart';
import 'package:velvet_framework/http/exceptions/http_request/http_request_exception.dart';

class NotAcceptableAllowedHttpException extends HttpRequestException {
  NotAcceptableAllowedHttpException({
    required super.httpRequest,
    required super.dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.badResponse),
        assert(dioException.response != null),
        assert(dioException.response!.statusCode == 406),
        super(
          message: message ?? dioException.message,
        );
}
