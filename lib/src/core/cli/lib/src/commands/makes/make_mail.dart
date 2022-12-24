import 'package:dartevel_cli/src/commands/makes/make_command.dart';

class MakeMailCommand extends MakeCommand {
  @override
  String get description => "Create a new mail";

  @override
  String get name => "make:mail";

  void run() {
    print("make:mail run");
  }
}