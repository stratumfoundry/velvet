import 'dart:async';

import 'package:event_bus/event_bus.dart' as event_bus;
import 'package:velvet_framework/src/core/event/contracts/velvet_event_bus_contract.dart';
import 'package:velvet_framework/src/core/event/events/velvet_event.dart';

class VelvetEventBus implements VelvetEventBusContract {
  VelvetEventBus() : super();

  final _instance = event_bus.EventBus(sync: true);

  @override
  void dispatch<T extends VelvetEvent>(T event) {
    _instance.fire(event);
  }

  @override
  StreamSubscription<T> listen<T extends VelvetEvent>(
    void Function(T event) onEvent, {
    void Function(T event)? onSkipped,
  }) {
    return _instance.on<T>().listen((event) {
      if (event.wasPropagationStopped) {
        return;
      }

      onEvent(event);
    });
  }
}
