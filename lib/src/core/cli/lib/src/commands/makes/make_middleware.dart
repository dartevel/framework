import 'package:dartevel_cli/src/commands/makes/make_command.dart';

class MakeMiddlewareCommand extends MakeCommand {
  @override
  String get description => "Create a new middleware";

  @override
  String get name => "make:middleware";

  late String _middleware_name;

  MakeMiddlewareCommand() {
    argParser..addOption('name', abbr: 'n', help: 'middleware name');
  }

  @override
  void run() async {
    if (argResults == null) {
      return;
    }
    print("make:middleware run");

    _middleware_name = argResults?['name'];
  }
}
