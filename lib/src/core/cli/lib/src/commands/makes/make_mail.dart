import 'package:dartevel_cli/src/commands/makes/make_command.dart';

class MakeMailCommand extends MakeCommand {
  @override
  String get description => "Create a new mail";

  @override
  String get name => "make:mail";

  late String mail_name;

  MakeMailCommand() {
    argParser..addOption('name', abbr: 'n', help: 'mail name');
  }

  @override
  void run() async {
    if (argResults == null) {
      return;
    }
    print("make:mail run");

    mail_name = argResults?['name'];
  }
}
