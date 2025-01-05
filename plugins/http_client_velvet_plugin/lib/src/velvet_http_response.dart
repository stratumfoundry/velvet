import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:http_client_velvet_plugin/src/exceptions/http_response_parse_exception.dart';
import 'package:http_client_velvet_plugin/src/request/velvet_http_request.dart';

/// The response from the client.
///
/// This class is used to convert the response to the desired object.
/// This class is a wrapper around the original dio response.
///
/// The [Parsed] is the type of the object that the response will be converted to.
/// The [Raw] is the type of the root object of the response.
class VelvetHttpResponse<Parsed, Raw> {
  const VelvetHttpResponse({
    required this.dioResponse,
    required this.httpRequest,
  });

  /// The original dio response.
  ///
  /// Useful for custom handling of the response.
  final Response<Raw> dioResponse;

  /// The client request that was made.
  ///
  /// Internally used for mapping the response to the desired object.
  final VelvetHttpRequest<Parsed, Raw> httpRequest;

  /// Convert the response to the desired object.
  Parsed toObject() {
    try {
      return httpRequest.fromResponse(dioResponse);
    } catch (exception) {
      if (exception is Error) {
        JsonEncoder encoder = const JsonEncoder.withIndent('  ');
        final prettyDioResponse = encoder.convert(dioResponse.data);

        if (kDebugMode) {
          FlutterError.reportError(
            FlutterErrorDetails(
              exception: exception,
              stack: exception.stackTrace,
              context: ErrorDescription(
                'HttpResponse toObject(). \nDio response: $prettyDioResponse',
              ),
            ),
          );
        }
      }

      throw HttpResponseParseException(
        message: 'Failed to parse the response.',
        dioResponse: dioResponse,
      );
    }
  }
}
