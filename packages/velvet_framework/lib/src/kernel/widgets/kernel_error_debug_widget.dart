import 'package:flutter/material.dart';
import 'package:velvet_framework/src/core/event/utils/dispatch.dart';
import 'package:velvet_framework/src/kernel/events/hide_loading_widget_event.dart';

class KernelErrorDebugWidget extends StatefulWidget {
  const KernelErrorDebugWidget({
    super.key,
    required this.error,
    required this.stackTrace,
  });

  final Object error;
  final StackTrace stackTrace;

  @override
  State<KernelErrorDebugWidget> createState() => _KernelErrorDebugWidgetState();
}

class _KernelErrorDebugWidgetState extends State<KernelErrorDebugWidget> {
  _KernelErrorDebugWidgetState();

  @override
  void initState() {
    super.initState();
    dispatch(HideLoadingWidgetEvent());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => Builder(
        builder: (context) => Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white38,
            elevation: 1,
            title: Text(
              'Velvet | Stack'.toUpperCase(),
              style: TextStyle(
                color: Colors.redAccent.withAlpha(200),
                fontSize: 14,
                letterSpacing: 1.2,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.error.toString()),
                const SizedBox(height: 24),
                Text(widget.stackTrace.toString()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
