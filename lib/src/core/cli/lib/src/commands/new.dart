import 'package:dartevel_cli/src/commands/command.dart';
import 'package:prompts/prompts.dart' as prompts;

class NewCommand extends DartevelCommand {
  final _description = 'create new dartevel project';
  final _name = 'new';

  @override
  String get name => _name;

  @override
  String get description => _description;

  late String _project_name;

  NewCommand() {
    argParser..addOption('name', abbr: 'n', help: 'project name');
  }

  @override
  void run() async {
    if (argResults == null) {
      print("Invalid arguments");
      return;
    }

    List<String> projectTypes = [
      "web",
      "api",
    ];
    var type =
        prompts.choose("Chose project type: ", projectTypes, defaultsTo: 'web');
    print(type);

    // _project_name = argResults?['name'];
    // _is_api = argResults?['api'];
    // _is_web = argResults?['web'];
  }

  createNewProject() {
    return true;
  }
}
