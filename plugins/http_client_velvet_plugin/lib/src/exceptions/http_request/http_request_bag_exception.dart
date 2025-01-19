import 'package:http_client_velvet_plugin/src/exceptions/http_request/http_request_exception.dart';
import 'package:velvet_support/velvet_support.dart';

class HttpRequestBagException extends HttpRequestException
    implements BagException<HttpRequestException> {
  HttpRequestBagException({
    required super.httpRequest,
    required super.dioException,
    super.message,
  });

  @override
  void add(HttpRequestException exception) {
    exceptions.add(exception);
  }

  @override
  List<HttpRequestException> exceptions = [];

  @override
  bool get isEmpty => exceptions.isEmpty;
}
