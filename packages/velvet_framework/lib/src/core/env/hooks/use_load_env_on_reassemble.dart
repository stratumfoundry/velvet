import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velvet_framework/src/core/env/contracts/env_config_contract.dart';
import 'package:velvet_framework/src/core/env/events/env_read_event.dart';
import 'package:velvet_framework/src/core/event/utils/dispatch.dart';
import 'package:velvet_framework/src/core/utils/logger.dart';
import 'package:velvet_framework/src/core/velvet_container.dart';

/// A hook that listens to the reassemble event and reloads the .env file.
/// This is useful when you want to reload the .env file when it changes.
/// By default, this hook is implemented in the [KernelWidget].
void useLoadEnvOnReassemble() {
  useReassemble(() async {
    if (container.get<EnvConfigContract>().isEnabled == false) {
      return;
    }

    try {
      String envContent = await rootBundle.loadString('.env');
      dispatch(EnvReadEvent(envContent));
    } catch (e) {
      logger().warning('No .env file found');
    }
  });
}
