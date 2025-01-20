import 'package:flutter/material.dart';
import 'package:velvet_framework/src/core/event/utils/dispatch.dart';
import 'package:velvet_framework/src/kernel/events/hide_loading_widget_event.dart';
import 'package:velvet_framework/src/translation/utils/translate.dart';

class KernelErrorWidget extends StatefulWidget {
  const KernelErrorWidget({
    super.key,
    required this.onRetry,
  });

  final VoidCallback onRetry;

  @override
  State<KernelErrorWidget> createState() => _KernelErrorWidgetState();
}

class _KernelErrorWidgetState extends State<KernelErrorWidget> {
  @override
  void initState() {
    super.initState();
    dispatch(HideLoadingWidgetEvent());
  }

  String _getErrorMessage() {
    return translate('kernel.error_message') ?? 'An error occurred.';
  }

  @override
  Widget build(BuildContext context) {
    final errorMessage = _getErrorMessage();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              errorMessage,
              style: const TextStyle(fontSize: 18, color: Colors.red),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: widget.onRetry,
              child: Text(
                translate('kernel.retry_button' ?? 'Retry'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
