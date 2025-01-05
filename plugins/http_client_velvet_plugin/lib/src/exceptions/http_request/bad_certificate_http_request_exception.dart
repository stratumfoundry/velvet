import 'package:dio/dio.dart';
import 'package:http_client_velvet_plugin/src/exceptions/http_request/http_request_exception.dart';

class BadCertificateHttpRequestException extends HttpRequestException {
  BadCertificateHttpRequestException({
    required super.httpRequest,
    required super.dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.badCertificate),
        super(
          message: message ?? dioException.message,
        );
}
