import 'package:dio/dio.dart';
import 'package:http_client_velvet_plugin/src/request/velvet_http_request.dart';

mixin VelvetHttpHandlesMapResponse<T>
    on VelvetHttpRequest<T, Map<String, dynamic>> {
  T Function(Map<String, dynamic> json) get itemMapper;

  @override
  T fromResponse(Response<Map<String, dynamic>> response) {
    return itemMapper(response.data!);
  }
}
