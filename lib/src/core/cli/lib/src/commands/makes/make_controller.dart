import 'package:dartevel_cli/src/commands/makes/make_command.dart';

class MakeControllerCommand extends MakeCommand {
  @override
  String get description => "Create a new controller";

  @override
  String get name => "make:controller";

  late String _controller_name;

  MakeControllerCommand() {
    argParser..addOption('name', abbr: 'n', help: 'controller name');
  }

  @override
  void run() async {
    if (argResults == null) {
      return;
    }
    print("make:controller run");

    _controller_name = argResults?['name'];
  }
}
