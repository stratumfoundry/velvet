import 'package:form_velvet_plugin/src/config/default_form_config.dart';
import 'package:form_velvet_plugin/src/contracts/form_config_contract.dart';
import 'package:velvet_framework/velvet_framework.dart';

class FormVelvetPlugin extends VelvetPlugin {
  @override
  void register() {
    container.registerSingleton<FormConfigContract>(
      DefaultFormConfig(),
    );
  }
}
