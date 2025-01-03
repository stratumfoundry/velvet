import 'package:error_handling_velvet_plugin/src/config/default_error_handling_config.dart';
import 'package:error_handling_velvet_plugin/src/contracts/error_handling_config_contract.dart';
import 'package:error_handling_velvet_plugin/src/renderable_exception.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:velvet_framework/velvet_framework.dart';

class ErrorHandlingPlugin extends VelvetPlugin {
  @override
  void register() {
    container.registerSingleton<ErrorHandlingConfigContract>(
      DefaultErrorHandlingConfig(),
    );
  }

  @override
  void boot() {
    WidgetsFlutterBinding.ensureInitialized();

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
