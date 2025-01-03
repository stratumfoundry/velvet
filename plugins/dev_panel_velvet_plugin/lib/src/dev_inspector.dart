import 'package:dev_panel_velvet_plugin/src/contracts/dev_inspector_adapter_contract.dart';
import 'package:dev_panel_velvet_plugin/src/contracts/dev_inspector_config_contract.dart';
import 'package:flutter/widgets.dart';

class DevInspector {
  DevInspector(
    this.config,
    this.adapter,
  );

  /// The configuration for the developer inspector.
  final DevInspectorConfigContract config;

  /// The adapter for the developer inspector.
  final DevInspectorAdapterContract adapter;

  /// Opens the developer inspector.
  void open(BuildContext context) {
    adapter.open(context);
  }
}
