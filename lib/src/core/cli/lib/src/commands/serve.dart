import 'package:dartevel_cli/src/commands/command.dart';

import 'package:dartevel_cli/src/commands/command.dart';
import 'package:http/http.dart';

typedef void HttpHandler(Request req, Response res);

class ServeCommand extends DartevelCommand {
  final _description = 'serve project';
  final _name = 'serve';
  final _address = '127.0.0.1';
  final _port = 8001;

  // final Logger logger = new Logger<Logger>();

  @override
  String get name => _name;

  @override
  String get description => _description;

  void serve() {}
}
