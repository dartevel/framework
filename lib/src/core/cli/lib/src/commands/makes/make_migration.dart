import 'package:dartevel_cli/src/commands/makes/make_command.dart';

class MakeMigrationCommand extends MakeCommand {
  @override
  String get description => "Create a new migration";

  @override
  String get name => "make:migration";

  late String _migration_name;

  MakeMigrationCommand() {
    argParser..addOption('name', abbr: 'n', help: 'migration name');
  }

  @override
  void run() async {
    if (argResults == null) {
      return;
    }
    print("make:migration run");

    _migration_name = argResults?['name'];
  }
}