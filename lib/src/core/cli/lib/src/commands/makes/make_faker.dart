import 'package:dartevel_cli/src/commands/makes/make_command.dart';

class MakeFakerCommand extends MakeCommand {
  @override
  String get description => "Create a new faker";

  @override
  String get name => "make:faker";

  late String _faker_name;

  MakeFakerCommand() {
    argParser..addOption('name', abbr: 'n', help: 'faker name');
  }

  @override
  void run() async {
    if (argResults == null) {
      return;
    }
    print("make:faker run");

    _faker_name = argResults?['name'];
  }
}
