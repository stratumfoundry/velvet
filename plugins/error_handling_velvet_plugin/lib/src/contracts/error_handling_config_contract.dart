import 'package:flutter/material.dart';
import 'package:velvet_framework/velvet_framework.dart';

abstract class ErrorHandlingConfigContract extends VelvetConfig {
  void renderer(BuildContext context, Exception exception);
}
