import 'package:flutter/foundation.dart';
import 'package:form_velvet_plugin/src/contracts/form_config_contract.dart';
import 'package:velvet_framework/velvet_framework.dart';

class FormVelvetPlugin extends VelvetPlugin {
  @override
  Future<void> boot() async {
    if (kDebugMode) {
      container.requireRegistrationOf<FormConfigContract>(
        instructions: 'Create your own or use the DefaultFormConfig.',
      );
    }
  }
}
