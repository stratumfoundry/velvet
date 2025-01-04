import 'package:velvet_framework/src/core/event/contracts/velvet_event_config_contract.dart';

class DefaultVelvetEventConfig implements VelvetEventConfigContract {
  @override
  bool get shouldBeSync => true;
}
