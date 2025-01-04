import 'dart:convert';
import 'dart:io';

import 'package:velvet_cli/src/resources/package_config_resource.dart';

class PackageConfig {
  PackageConfig({
    File? packageConfigFile,
  }) : packageConfigFile =
            packageConfigFile ?? File('.dart_tool/package_config.json') {
    load();
  }

  late final PackageConfigResource resource;
  final File packageConfigFile;

  void load() {
    final file = File('.dart_tool/package_config.json');

    if (!file.existsSync()) {
      throw Exception('package_config.json not found');
    }

    resource = PackageConfigResource.fromJson(
      jsonDecode(file.readAsStringSync()),
    );
  }
}
