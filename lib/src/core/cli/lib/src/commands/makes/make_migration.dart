import 'package:dartevel_cli/src/commands/makes/make_command.dart';

class MakeMigrationCommand extends MakeCommand {
  @override
  String get description => "Create a new migration";

  @override
  String get name => "make:migration";

  void run() {
    print("make:migration run");
  }
}