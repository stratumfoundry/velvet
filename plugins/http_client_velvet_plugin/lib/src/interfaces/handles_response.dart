import 'package:dio/dio.dart';
import 'package:http_client_velvet_plugin/src/velvet_http_response.dart';

abstract interface class HandlesResponse<Parsed, RawResponseRoot> {
  /// The custom handling of the request.
  VelvetHttpResponse<Parsed, RawResponseRoot> handle(
    Dio defaultDioInstance,
    Options httpRequestOptions,
  );
}
