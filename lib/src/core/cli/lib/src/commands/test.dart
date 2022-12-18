import 'package:dartevel_cli/src/commands/command.dart';

class TestCommand extends DartevelCommand {

  @override
  String get name => "test";

  @override
  String get description => "Run tests";

  TestCommand();
}