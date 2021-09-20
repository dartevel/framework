
import 'package:dartevel_cli/src/commands/command.dart';

class NewCommand extends DartevelCommand {
  final _description = 'create new project';
  final _name = 'new';

  @override
  String get description => _description;

  @override
  String get name => _name;

  CommitCommand() {
    argParser.addFlag('api', abbr: 'a');
  }

  void run() {
    print(argResults);
  }
}
