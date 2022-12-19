import 'package:dartevel_cli/src/commands/command.dart';

class ListCommand extends DartevelCommand {

  @override
  String get name => "list";

  @override
  String get description => "List commands";

  ListCommand();

  void run() {
    print("list run");
  }
}