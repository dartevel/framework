import 'package:dartevel_cli/src/commands/makes/make_command.dart';

class MakeModelCommand extends MakeCommand {
  @override
  String get description => "Create a new model.dart";

  @override
  String get name => "make:model.dart";

  late String _model_name;

  MakeModelCommand() {
    argParser..addOption('name', abbr: 'n', help: 'model.dart name');
  }

  @override
  void run() async {
    if (argResults == null) {
      return;
    }
    print("make:model.dart run");

    _model_name = argResults?['name'];
  }
}
