import 'package:dartevel_cli/src/commands/makes/make_command.dart';

class MakeFakerCommand extends MakeCommand {
  @override
  String get description => "Create a new faker";

  @override
  String get name => "make:faker";

  void run() {
    print("make:faker run");
  }
}
