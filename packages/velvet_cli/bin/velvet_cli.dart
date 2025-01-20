import 'package:velvet_cli/velvet_cli.dart';

void main(List<String> arguments) {
  createVelvetCli()
    ..addCommand(InstallCommand())
    ..addCommand(MakeRouteCommand())
    ..addCommand(PluginDiscoveryCommand())
    ..addCommand(PubCommand())
    ..run(arguments);
}
