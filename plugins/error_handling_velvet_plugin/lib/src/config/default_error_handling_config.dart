import 'package:error_handling_velvet_plugin/src/contracts/error_handling_config_contract.dart';
import 'package:flutter/material.dart';

class DefaultErrorHandlingConfig extends ErrorHandlingConfigContract {
  @override
  void renderer(BuildContext context, Exception exception) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('An error occurred'),
        content: Text(exception.toString()),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
