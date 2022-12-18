import 'package:http/http.dart';
import 'package:dartevel_cli/src/commands/command.dart';

typedef void HttpHandler(Request req, Response res);

class ServeCommand extends DartevelCommand {
  final _name = 'serve';
  final _description = 'serve project';
  final _host = '127.0.0.1';
  final _port = 8001;

  ServeCommand() {
    argParser
      ..addOption("host", help: "The host address to serve project")
      ..addOption("port", help: "The port to serve project");
  }

  @override
  String get name => _name;

  @override
  String get description => _description;

  run() {
    print(argResults!['port']);
  }

  void serve() {}
}
