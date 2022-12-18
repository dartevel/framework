import 'package:dartevel_cli/src/commands/command.dart';

class UpCommand extends DartevelCommand {

  @override
  String get name => "up";

  @override
  String get description => "Bring the project out of maintenance mode";

  UpCommand();


}