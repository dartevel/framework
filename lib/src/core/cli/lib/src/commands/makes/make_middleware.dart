import 'package:dartevel_cli/src/commands/makes/make_command.dart';

class MakeMiddlewareCommand extends MakeCommand {
  @override
  String get description => "Create a new middleware";

  @override
  String get name => "make:middleware";

  void run() {
    print("make:middleware run");
  }
}