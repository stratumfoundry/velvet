import 'package:mockito/annotations.dart';
import 'package:velvet_framework/velvet_framework.dart';

@GenerateNiceMocks([
  MockSpec<EnvConfigContract>(),
  MockSpec<VelvetEventBusContract>(),
  MockSpec<VelvetLoggerContract>(),
])
import 'mocks.mocks.dart';

MockVelvetEventBusContract setupEventBusMock() {
  final mock = MockVelvetEventBusContract();

  container.registerSingleton<VelvetEventBusContract>(mock);

  return mock;
}

MockVelvetLoggerContract setupLoggerMock() {
  final mock = MockVelvetLoggerContract();

  container.registerSingleton<VelvetLoggerContract>(mock);

  return mock;
}

MockEnvConfigContract setupEnvConfigMock() {
  final mock = MockEnvConfigContract();

  container.registerSingleton<EnvConfigContract>(mock);

  return mock;
}
