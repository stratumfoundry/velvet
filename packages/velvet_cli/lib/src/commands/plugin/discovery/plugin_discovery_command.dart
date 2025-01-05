import 'dart:async';

import 'package:dcli/dcli.dart';
import 'package:velvet_cli/src/services/velvet_plugin_discover.dart';
import 'package:velvet_cli/src/velvet_command.dart';

class PluginDiscoveryCommand extends VelvetCommand {
  @override
  String get description => 'Discover plugins in the project';

  @override
  String get name => 'plugin:discovery';

  @override
  Future<void> run() async {
    final packages = await VelvetPluginDiscover().discover();

    echo('-' * 80, newline: true);
    echo('Found ${packages.length} plugins.', newline: true);
    echo('-' * 80, newline: true);
    echo('', newline: true);
    echo('Plugins:', newline: true);
    echo('', newline: true);
    packages
        .map((e) => '- ${e.velvetYamlResource.name}')
        .forEach((e) => echo(e, newline: true));

    echo('', newline: true);
    echo('-' * 80, newline: true);
    echo('', newline: true);
  }
}
