import 'dart:async';
import 'dart:io';

import 'package:velvet_cli/src/utils/container_shortcuts.dart';
import 'package:velvet_cli/src/velvet_command.dart';

class PubCommand extends VelvetCommand {
  @override
  String get name => 'pub';

  @override
  String get description => 'Wraps the pub command and performs hooks.';

  String get subcommand => velvetArgs.arguments.skip(1).first;

  @override
  FutureOr<void> run() async {
    final result = await Process.run(
      'dart',
      ['pub', ...velvetArgs.arguments.skip(1)],
    );

    if (result.exitCode != 0) {
      print('Error: ${result.stderr}');
    } else {
      print(result.stdout);
    }
  }

  _performHooks() {
    // TODO: Implement hooks
  }
}
