import 'package:form_velvet_plugin/form_velvet_plugin.dart';

InputOptions useInputOptions() {
  return InputOptions(
    shouldValidateOnChange: false,
    shouldValidateOnFocusLost: false,
    shouldClearErrorOnFocus: false,
    shouldClearErrorOnChange: true,
  );
}
