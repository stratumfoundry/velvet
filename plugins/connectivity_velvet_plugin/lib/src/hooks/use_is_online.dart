import 'package:connectivity_velvet_plugin/connectivity_velvet_plugin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velvet_framework/velvet_framework.dart';

ValueNotifier<bool> useIsOnline() {
  final initState = useMemoized(
    () => container.get<ConnectivityNotifier>().isOnline,
  );

  final isOnline = useState(initState);

  useOnOnline(() {
    isOnline.value = true;
  });

  useOnOffline(() {
    isOnline.value = false;
  });

  return isOnline;
}
