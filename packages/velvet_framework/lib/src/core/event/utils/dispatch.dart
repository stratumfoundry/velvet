import 'package:velvet_framework/src/core/event/contracts/velvet_event_bus_contract.dart';
import 'package:velvet_framework/src/core/event/events/velvet_event.dart';
import 'package:velvet_framework/src/core/velvet_container.dart';

void dispatch(VelvetEvent event) {
  container.get<VelvetEventBusContract>().dispatch(event);
}
