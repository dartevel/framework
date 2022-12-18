import 'dart:io';

import 'package:dartevel_cli/src/commands/command.dart';
import 'package:dartevel_cli/src/utils.dart';

class VersionCommand extends DartevelCommand {
  final _description = 'current framework version';
  final _name = 'version';

  @override
  String get name => _name;

  @override
  String get description => _description;

  void run() {
    stdout.write('Dartevel CLI Version: ' + version);
  }
}
