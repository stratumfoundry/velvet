import 'package:form_velvet_plugin/src/contracts/form_config_contract.dart';
import 'package:form_velvet_plugin/src/hooks/use_form/use_form.dart';
import 'package:form_velvet_plugin/src/hooks/use_input/input_options.dart';
import 'package:form_velvet_plugin/src/hooks/use_input/use_input.dart';
import 'package:velvet_framework/velvet_framework.dart';

class DefaultFormConfig implements FormConfigContract {
  @override
  bool get shouldUsePrecompiledValuesEnabled =>
      envBool('FORM_PRECOMPILED_VALUES_ENABLED', false)!;

  @override
  Map<String, dynamic> get precompiledValues => {};

  @override
  InputOptions get defaultInputOptions => InputOptions();

  @override
  InputOnFailureFactory get defaultInputOnFailureFactory =>
      (exceptionToMessageResolverFactories, error) {
        return (exception) {
          for (final exceptionToMessageResolverFactory
              in exceptionToMessageResolverFactories) {
            final resolver = exceptionToMessageResolverFactory();
            final message = resolver.resolve(exception);

            error.value = message;

            if (message != null) {
              break;
            }
          }
        };
      };

  @override
  FormOnFailure? get defaultFormOnFailure => null;
}
