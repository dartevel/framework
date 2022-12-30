import 'package:dartevel_cli/src/commands/command.dart';
import 'package:prompts/prompts.dart' as prompts;

class NewCommand extends DartevelCommand {
  final _description = 'create new dartevel project';
  final _name = 'new';

  late String _project_name;
  String repoUrl = "https://github.com/dartevel/dartevel.git";

  @override
  String get name => _name;

  @override
  String get description => _description;


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
        prompts.choose("Chose project types.dart: ", projectTypes, defaultsTo: 'web');
    print(type);

    // _project_name = argResults?['name'];
    // _is_api = argResults?['api'];
    // _is_web = argResults?['web'];
  }

  createNewProject() {
    return true;
  }
}
