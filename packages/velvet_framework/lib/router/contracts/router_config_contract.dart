import 'package:velvet_framework/velvet_framework.dart';

/// A contract defining the configuration for the router.
abstract class RouterConfigContract implements Config<RouterConfigContract> {
  /// The initial path to be displayed when the app starts.
  String get initialPath;

  /// Determines whether to prefer business logic views over UI views.
  bool get doesPrefererBusinessLogicViews;

  /// The default page transition to be used when navigating between pages.
  RouterPageTransitionEnum get defaultPageTransition;

  @override
  ConfigProvider get toOverride => routerConfigProvider;
}
