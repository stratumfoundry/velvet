import 'package:velvet_framework/src/core/container/contracts/velvet_container_contract.dart';
import 'package:velvet_framework/src/core/container/mixins/proxy_to_get_it_mixin.dart';

/// The container for the Velvet framework.
/// This container is used to register and resolve dependencies.
///
/// Behind the scenes, it uses the `get_it` package and operates mostly as a proxy to the `GetIt` instance.
class VelvetContainer extends VelvetContainerContract with ProxyToGetItMixin {
  VelvetContainer() {
    getIt.allowReassignment = true;
  }

  @override
  void requireRegistrationOf<T extends Object>({
    String? instanceName,
    String? instructions,
  }) {
    if (isRegistered<T>(instanceName: instanceName)) {
      return;
    }

    throw Exception('Registration of type $T is required. $instructions');
  }

  @override
  void enableRegisteringMultipleInstancesOfOneType() {
    getIt.enableRegisteringMultipleInstancesOfOneType();
  }
}
