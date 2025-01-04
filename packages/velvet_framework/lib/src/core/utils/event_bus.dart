import 'package:velvet_framework/src/core/event/contracts/velvet_event_bus_contract.dart';
import 'package:velvet_framework/src/core/velvet_container.dart';

VelvetEventBusContract eventBus() {
  return container.get<VelvetEventBusContract>();
}
