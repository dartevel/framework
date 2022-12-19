import 'package:dartevel_cli/src/commands/command.dart';

class DocsCommand extends DartevelCommand {

  @override
  String get name => "docs";

  @override
  String get description => "Open dartevel docs in your browser";

  DocsCommand();

  void run() {
    print("docs run");
  }
}