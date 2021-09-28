import 'package:dartevel_cli/src/commands/command.dart';

class NewCommand extends DartevelCommand {
  final _description = 'create new dartevel project';
  final _name = 'new';

  @override
  String get name => _name;

  @override
  String get description => _description;

  late String _project_name;

  late bool _is_api;
  late bool _is_web;

  NewCommand() {
    argParser
      ..addOption('name', abbr: 'n', help: 'project name')
      ..addFlag('web', abbr: 'w', help: 'create full mvc web project')
      ..addFlag('api', abbr: 'a', help: 'create resetfull api project');
  }

  @override
  void run() async {
    if (argResults == null) {
      return;
    }

    _project_name = argResults?['name'];
    _is_api = argResults?['api'];
    _is_web = argResults?['web'];

  }
}
