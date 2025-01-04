import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart';
import 'package:velvet_cli/src/resources/pubspec_resource.dart';
import 'package:yaml/yaml.dart';

class Pubspec {
  late PubspecResource resource;

  Pubspec() {
    _init();
  }

  _init() {
    final pubspec = join('pubspec.yaml');

    final projectYaml = loadYaml(File(pubspec).readAsStringSync()) as YamlMap;

    resource = PubspecResource.fromJson(jsonDecode(jsonEncode(projectYaml)));
  }

  String get name => resource.name;
  Dependencies? get dependencies => resource.dependencies;
  Dependencies? get devDependencies => resource.devDependencies;
  String? get version => resource.version;
  String? get description => resource.description;
  String? get homepage => resource.homepage;
  String? get repository => resource.repository;
  String? get issueTracker => resource.issueTracker;
  String? get documentation => resource.documentation;
  List<Executable>? get executables => resource.executables;
  Platforms? get platforms => resource.platforms;
  String? get publishTo => resource.publishTo;
  List<String>? get funding => resource.funding;
  List<String>? get falseSecrets => resource.falseSecrets;
  List<Screenshot>? get screenshots => resource.screenshots;
  List<String>? get topics => resource.topics;
  List<String>? get ignoredAdvisories => resource.ignoredAdvisories;
  Environment? get environment => resource.environment;
  Dependencies? get dependencyOverrides => resource.dependencyOverrides;
  Flutter? get flutter => resource.flutter;

  bool hasDependency(String name) {
    return resource.dependencies?.dependencies?.containsKey(name) ?? false;
  }

  bool hasDevDependency(String name) {
    return resource.devDependencies?.dependencies?.containsKey(name) ?? false;
  }

  bool hasExecutable(String name) {
    return resource.executables?.any((executable) => executable.name == name) ??
        false;
  }

  bool supportsPlatform(String platform) {
    switch (platform.toLowerCase()) {
      case 'android':
        return resource.platforms?.android ?? false;
      case 'ios':
        return resource.platforms?.ios ?? false;
      case 'linux':
        return resource.platforms?.linux ?? false;
      case 'macos':
        return resource.platforms?.macos ?? false;
      case 'web':
        return resource.platforms?.web ?? false;
      case 'windows':
        return resource.platforms?.windows ?? false;
      default:
        return false;
    }
  }
}
