import 'package:velvet_framework/src/core/velvet_container.dart';
import 'package:velvet_framework/src/translation/contracts/velvet_translator_contract.dart';
import 'package:velvet_framework/src/utils/kernel_context.dart';

String translate(String key, {Map<String, String>? args}) {
  return container.get<VelvetTranslatorContract>().translate(
        kernelContext(),
        key,
        args: args,
      );
}
