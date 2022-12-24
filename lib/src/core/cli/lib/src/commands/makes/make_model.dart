import 'package:dartevel_cli/src/commands/makes/make_command.dart';

class MakeModelCommand extends MakeCommand {
  @override
  String get description => "Create a new model";

  @override
  String get name => "make:model";

  void run() {
    print("make:model run");
  }
}
