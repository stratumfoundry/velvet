import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:velvet_framework/velvet_framework.dart';

import '../../../../mocks/mocks.dart';
import '../../../../mocks/mocks.mocks.dart';

class TestEvent extends VelvetEvent {}

void main() {
  late MockVelvetEventBusContract mockEventBus;

  setUp(() {
    container.registerSingleton<VelvetEventBusContract>(
      VelvetEventBus(),
    );

    mockEventBus = setupEventBusMock();
  });

  test('check if event bus is registered', () {
    expect(
      container.get<VelvetEventBusContract>(),
      isA<VelvetEventBusContract>(),
    );
  });

  test('eventBus should return a event bus', () {
    expect(eventBus(), isA<VelvetEventBusContract>());
  });

  test('dispatch event', () {
    final event = TestEvent();
    mockEventBus.dispatch(event);
    verify(mockEventBus.dispatch(event)).called(1);
  });

  test('subscribe to event', () {
    final event = TestEvent();
    final eventBus = VelvetEventBus();
    int count = 0;

    void handler(TestEvent event) {
      count++;
    }

    eventBus.listen<TestEvent>(handler);
    eventBus.dispatch(event);

    expect(count, 1);
  });

  test('subscribe to event and stop propagation', () {
    final event = TestEvent();
    final eventBus = VelvetEventBus();
    int count = 0;

    void handlerFirst(TestEvent event) {
      count++;

      event.stopPropagation();
    }

    void handlerSecond(TestEvent event) {
      count++;

      event.stopPropagation();
    }

    eventBus.listen<TestEvent>(handlerFirst);
    eventBus.listen<TestEvent>(handlerSecond);
    eventBus.dispatch(event);

    expect(count, 1);
  });
}
