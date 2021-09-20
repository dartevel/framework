import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:dartevel_cli/src/utils.dart';

class VersionCommand extends Command {
  final _description = 'current framework version';
  final _name = 'version';

  @override
  String get description => _description;

  @override
  String get name => _name;


  void run() {
    stdout.write('Dartevel CLI Version: ' + version);
  }
}
