import 'package:dartevel_cli/src/commands/makes/make_command.dart';
import 'package:dartevel_cli/src/utils.dart';
import 'package:recase/recase.dart';
import 'package:prompts/prompts.dart' as prompts;

class MakeControllerCommand extends MakeCommand {
  @override
  String get description => "Create a new controller";

  @override
  String get name => "make:controller";

  late String _controller_name;

  MakeControllerCommand() {
    argParser..addOption('name', abbr: 'n', help: 'controller name');
  }

  @override
  void run() async {
    print("make:controller run");

    if (argResults!.wasParsed("name") == true) {
      _controller_name = finalNameController(argResults!['name']);
      print(_controller_name);
    } else {
      _controller_name =
          finalNameController(prompts.get("Enter controller name: "));
      print(_controller_name);
    }

    stub_file = await getStubFile("controller");

    print(await makeFromStub());
  }

  Future makeFromStub() async {
    var finalContent;
    finalContent = stub_file.replaceFirst("{{name}}", _controller_name);
    return finalContent.toString();
  }

  String finalNameController(String name) {
    String finalName = name.pascalCase + "Controller";

    return finalName;
  }
}
