import 'package:dio/dio.dart';
import 'package:http_client_velvet_plugin/src/request/velvet_http_request.dart';

class HttpRequestException implements Exception {
  HttpRequestException({
    required this.httpRequest,
    required this.dioException,
    String? message,
  }) : message = message ?? dioException.message;

  final String? message;
  final VelvetHttpRequest httpRequest;
  final DioException dioException;

  @override
  String toString() => '$dioException';
}
