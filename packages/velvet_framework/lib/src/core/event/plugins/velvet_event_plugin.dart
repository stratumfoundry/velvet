import 'dart:async';

import 'package:velvet_framework/src/core/event/bus/velvet_event_bus.dart';
import 'package:velvet_framework/src/core/event/configs/default_velvet_event_config.dart';
import 'package:velvet_framework/src/core/event/contracts/velvet_event_bus_contract.dart';
import 'package:velvet_framework/src/core/event/contracts/velvet_event_config_contract.dart';
import 'package:velvet_framework/src/core/plugin/velvet_plugin.dart';
import 'package:velvet_framework/src/core/velvet_container.dart';

class VelvetEventPlugin extends VelvetPlugin {
  @override
  FutureOr<void> register() async {
    container.registerSingleton<VelvetEventConfigContract>(
      DefaultVelvetEventConfig(),
    );

    container.registerSingleton<VelvetEventBusContract>(VelvetEventBus());
  }
}
