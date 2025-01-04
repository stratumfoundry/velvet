import 'package:velvet_cli/src/services/velvet_yaml.dart';

class VelvetConfigManager {
  VelvetConfigManager();

  final List<VelvetYaml> _configs = [];

  void addConfig(VelvetYaml config) {
    _configs.add(config);
  }

  void removeConfig(VelvetYaml config) {
    _configs.remove(config);
  }

  List<VelvetYaml> get configs => _configs.toList(growable: false);
}
