import 'package:velvet_cli/src/commands/list/list_command.dart';
import 'package:velvet_cli/src/core/container.dart';
import 'package:velvet_cli/src/core/velvet_args.dart';
import 'package:velvet_cli/src/services/package_config.dart';
import 'package:velvet_cli/src/services/pubspec.dart';
import 'package:velvet_cli/src/services/velvet_config_manager.dart';
import 'package:velvet_cli/src/velvet_command.dart';
import 'package:velvet_cli/src/velvet_command_handler.dart';

class VelvetCli {
  VelvetCli() {
    _init();
  }

  void _init() {
    container.registerLazySingleton<Pubspec>(() => Pubspec());

    container.registerLazySingleton<PackageConfig>(() => PackageConfig());

    container.registerLazySingleton<VelvetConfigManager>(
      () => VelvetConfigManager(),
    );

    container.registerSingleton<VelvetCommandHandler>(VelvetCommandHandler(
      commands: [
        ListCommand(),
      ],
    ));
  }

  void addCommand(VelvetCommand command) {
    container.get<VelvetCommandHandler>().add(command);
  }

  void run(List<String> arguments) {
    container.registerSingleton<VelvetArgs>(
      VelvetArgs(arguments),
    );

    container.get<VelvetCommandHandler>().handle();
  }
}
