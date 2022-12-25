import 'package:dartevel_cli/src/commands/command.dart';

abstract class MakeCommand extends DartevelCommand {
  late var stub_file;
  var path_to_make; // path for make file from stub
}
