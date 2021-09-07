import 'package:args/command_runner.dart';

class NewCommand extends Command {
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
