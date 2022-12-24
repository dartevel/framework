import 'package:dartevel_cli/src/commands/makes/make_command.dart';

class MakeControllerCommand extends MakeCommand {

  @override
  String get description => "Create a new controller";

  @override
  String get name => "make:controller";

  void run() {
    print("make:controller run");
  }
}