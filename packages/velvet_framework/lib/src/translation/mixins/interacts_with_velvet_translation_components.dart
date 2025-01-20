import 'package:velvet_framework/src/core/velvet_container.dart';
import 'package:velvet_framework/src/translation/contracts/velvet_translation_config_contract.dart';
import 'package:velvet_framework/src/translation/contracts/velvet_translator_adapter_contract.dart';

mixin InteractsWithVelvetTranslationComponents {
  VelvetTranslatorAdapterContract get adapter {
    return container.get<VelvetTranslatorAdapterContract>();
  }

  VelvetTranslationConfigContract get config {
    return container.get<VelvetTranslationConfigContract>();
  }
}
