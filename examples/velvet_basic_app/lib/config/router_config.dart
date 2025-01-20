import 'package:go_router/go_router.dart';
import 'package:velvet_basic_app/routing/routes.dart';
import 'package:velvet_framework/velvet_framework.dart';

class RouterConfig extends DefaultVelvetRouterConfig {
  @override
  String get initialPath => '/home';

  @override
  List<RouteBase> get routes => $routes.routes;
}
