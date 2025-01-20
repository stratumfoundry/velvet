import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:velvet_framework/velvet_framework.dart';

class KernelWidget extends StatefulWidget {
  const KernelWidget({
    super.key,
    required this.appStartup,
    this.loadingWidget,
    this.errorWidget,
  });

  final KernelErrorWidget? errorWidget;
  final KernelLoadingWidget? loadingWidget;
  final AsyncCallback appStartup;

  @override
  State<KernelWidget> createState() => _KernelWidgetState();
}

class _KernelWidgetState extends State<KernelWidget> {
  late Future<void> appStartupFuture;
  bool shouldShowSplash = true;
  bool hasError = false;
  bool isSuccess = false;
  StreamSubscription<HideLoadingWidgetEvent>? _hideLoadingEventSubscription;

  @override
  void initState() {
    super.initState();
    appStartupFuture = widget.appStartup();
    _hideLoadingEventSubscription = listen<HideLoadingWidgetEvent>((_) {
      setState(() {
        shouldShowSplash = false;
      });
    });

    _initializeState();
  }

  @override
  void dispose() {
    _hideLoadingEventSubscription?.cancel();
    super.dispose();
  }

  Future<void> _initializeState() async {
    try {
      await appStartupFuture;
      setState(() {
        shouldShowSplash = false;
        hasError = false;
        isSuccess = true;
      });
    } catch (_) {
      setState(() {
        shouldShowSplash = false;
        hasError = true;
        isSuccess = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => Stack(
        children: [
          if (hasError)
            widget.errorWidget ?? KernelErrorWidget(onRetry: widget.appStartup),
          if (isSuccess) KernelAppWidget(),
          if (shouldShowSplash)
            widget.loadingWidget ?? const KernelLoadingWidget(),
        ],
      ),
    );
  }
}
