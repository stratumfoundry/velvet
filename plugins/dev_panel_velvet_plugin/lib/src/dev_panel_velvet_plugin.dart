import 'package:dev_panel_velvet_plugin/dev_panel_velvet_plugin.dart';
import 'package:velvet_framework/velvet_framework.dart';

class DevPanelVelvetPlugin extends VelvetPlugin {
  @override
  void register() {
    container.registerLazySingleton<DevInspectorAdapterContract>(
      () => DevInspectorTalkerAdapter(),
    );
  }

  @override
  void boot() {
    container.requireRegistrationOf<DevInspectorConfigContract>();
  }
}
