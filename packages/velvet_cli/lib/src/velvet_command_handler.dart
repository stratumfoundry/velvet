import 'package:dcli/dcli.dart';
import 'package:velvet_cli/src/core/container.dart';
import 'package:velvet_cli/src/core/velvet_args.dart';
import 'package:velvet_cli/src/velvet_command.dart';

class VelvetCommandHandler {
  VelvetCommandHandler({this.commands = const []});

  final List<VelvetCommand> commands;

  void add(VelvetCommand command) {
    commands.add(command);
  }

  String _commandName(List<String> arguments) {
    return arguments.isEmpty ? 'list' : arguments.first;
  }

  void handle() {
    final velvetArgs = container.get<VelvetArgs>();
    final commandName = _commandName(velvetArgs.arguments);

    final command =
        commands.where((command) => command.name == commandName).firstOrNull;

    if (command == null) {
      echo(red('No command found for name: $commandName'), newline: true);

      container.registerSingleton<VelvetArgs>(VelvetArgs(['list']));

      handle();

      return;
    }

    command.run();
  }
}
