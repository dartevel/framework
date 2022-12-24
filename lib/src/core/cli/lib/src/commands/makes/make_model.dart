import 'package:dartevel_cli/src/commands/makes/make_command.dart';

class MakeModelCommand extends MakeCommand {
  @override
  String get description => "Create a new model";

  @override
  String get name => "make:model";

  late String _model_name;

  MakeModelCommand() {
    argParser..addOption('name', abbr: 'n', help: 'model name');
  }

  @override
  void run() async {
    if (argResults == null) {
      return;
    }
    print("make:model run");

    _model_name = argResults?['name'];
  }
}
