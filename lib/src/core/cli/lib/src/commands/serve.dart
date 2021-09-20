import 'package:dartevel_cli/src/commands/command.dart';

import 'package:dartevel_cli/src/commands/command.dart';


class ServeCommand extends DartevelCommand {
  final _description = 'serve project';
  final _name = 'serve';

  @override
  String get description => _description;

  @override
  String get name => _name;

}