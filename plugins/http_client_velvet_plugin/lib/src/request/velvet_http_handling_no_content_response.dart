import 'package:dio/dio.dart';
import 'package:http_client_velvet_plugin/src/request/velvet_http_request.dart';

abstract class VelvetHttpHandlingNoContentResponse
    extends VelvetHttpRequest<Null, void> {
  /// Handles a request that expects no content.
  @override
  Null fromResponse(Response<void> response) {
    return null;
  }
}
