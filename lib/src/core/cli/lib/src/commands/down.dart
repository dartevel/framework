import 'package:dartevel_cli/src/commands/command.dart';

class DownCommand extends DartevelCommand {

  @override
  String get name => "down";

  @override
  String get description => "Change mood of project to maintenance";

  DownCommand();

  void run() {
    print("down run");
  }
}