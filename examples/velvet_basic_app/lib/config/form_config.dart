import 'package:form_velvet_plugin/form_velvet_plugin.dart';
import 'package:velvet_framework/velvet_framework.dart';

class FormConfig extends DefaultFormConfig {
  @override
  Map<String, dynamic> get precompiledValues => {
        'name': env('APP_NAME', 'Daniele'),
        'email': 'danieletulone.work@gmail.com',
      };

  @override
  InputOptions get defaultInputOptions => InputOptions(
        shouldValidateOnChange: false,
        shouldValidateOnFocusLost: false,
        shouldClearErrorOnFocus: false,
        shouldClearErrorOnChange: true,
        shouldTrim: false,
      );
}
