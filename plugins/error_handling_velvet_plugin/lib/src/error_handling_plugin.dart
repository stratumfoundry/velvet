import 'package:error_handling_velvet_plugin/src/contracts/error_handling_config_contract.dart';
import 'package:error_handling_velvet_plugin/src/interfaces/renderable_exception.dart';
import 'package:flutter/foundation.dart';
import 'package:velvet_framework/velvet_framework.dart';

class ErrorHandlingPlugin extends VelvetPlugin {
  @override
  void boot() {
    if (kDebugMode) {
      container.requireRegistrationOf<ErrorHandlingConfigContract>(
        instructions: 'Create your own or use the DefaultErrorHandlingConfig.',
      );
    }

    FlutterError.onError = (FlutterErrorDetails details) {
      final exception = details.exception;

      if (exception is Exception) {
        renderException(exception);
      }

      FlutterError.presentError(details);
    };

    PlatformDispatcher.instance.onError = (exception, stackTrace) {
      if (exception is Exception) {
        renderException(exception);

        return true;
      }

      return false;
    };
  }

  void renderException(Exception exception) {
    if (exception is RenderableException) {
      (exception as RenderableException).render(navigatorContext());

      return;
    }

    container.get<ErrorHandlingConfigContract>().renderer(
          navigatorContext(),
          exception,
        );
  }
}
