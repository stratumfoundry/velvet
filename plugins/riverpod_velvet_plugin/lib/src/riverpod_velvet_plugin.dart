import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velvet_framework/velvet_framework.dart';

class RiverpodVelvetPlugin extends VelvetPlugin {
  RiverpodVelvetPlugin({
    this.providerContainer,
  });

  ProviderContainer? providerContainer;

  @override
  FutureOr<void> beforeAppStartup() {
    final instance = container.registerSingleton<ProviderContainer>(
      providerContainer ?? ProviderContainer(),
    );

    kernel().addWidgetCallback(
      (widget) => UncontrolledProviderScope(
        container: instance,
        child: widget,
      ),
    );
  }
}
