import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:velvet_cli/src/core/container.dart';
import 'package:velvet_cli/src/resources/package_config_resource.dart';
import 'package:velvet_cli/src/resources/velvet_yaml_resource.dart';
import 'package:velvet_cli/src/services/package_config.dart';
import 'package:velvet_cli/src/services/velvet_config_manager.dart';
import 'package:velvet_cli/src/services/velvet_yaml.dart';
import 'package:yaml/yaml.dart';

class VelvetPluginDiscover {
  VelvetPluginDiscover();

  Future<List<VelvetYaml>> discover() async {
    await Future.wait(
        container.get<PackageConfig>().resource.packages.map((package) async {
      try {
        final velvetYamlPath = await resolveVelvetYamlFile(package);

        if (velvetYamlPath != null) {
          final yamlContent = File(velvetYamlPath).readAsStringSync();
          final yamlMap = loadYaml(yamlContent);
          final json = jsonEncode(yamlMap);
          final map = jsonDecode(json);

          container.get<VelvetConfigManager>().addConfig(
                VelvetYaml(
                  velvetYamlResource: VelvetYamlResource.fromJson(map),
                ),
              );
        }
      } catch (e, stackTrace) {
        print('Error processing package ${package.name}: $e');
        print(stackTrace);
      }

      return null;
    }));

    return container.get<VelvetConfigManager>().configs;
  }

  Future<String?> resolveVelvetYamlFile(
    PackageConfigPackageResource package,
  ) async {
    final rootUri = Uri.parse(package.rootUri);

    final resolvedUri = rootUri.isAbsolute
        ? rootUri
        : container
            .get<PackageConfig>()
            .packageConfigFile
            .uri
            .resolveUri(rootUri);

    final packagePath = Uri.base.resolveUri(resolvedUri).toFilePath();

    if (!Directory(packagePath).existsSync()) {
      throw Exception('Package ${package.name} not found at $packagePath');
    }

    final absolutePackagePath = File(packagePath).absolute.path;
    final velvetYamlPath = '$absolutePackagePath/velvet.yaml';

    if (File(velvetYamlPath).existsSync()) {
      return velvetYamlPath;
    }

    return null;
  }
}
