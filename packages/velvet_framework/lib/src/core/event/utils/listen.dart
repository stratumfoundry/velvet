import 'dart:async';

import 'package:velvet_framework/src/core/event/contracts/velvet_event_bus_contract.dart';
import 'package:velvet_framework/src/core/event/events/velvet_event.dart';
import 'package:velvet_framework/src/core/velvet_container.dart';

StreamSubscription<T> listen<T extends VelvetEvent>(
  void Function(T event) callback,
) {
  return container.get<VelvetEventBusContract>().listen<T>(callback);
}
