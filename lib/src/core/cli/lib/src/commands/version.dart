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

  VersionCommand();
  
  void run() {
    // color("Bold Italic Underline", front: Styles.RED, isBold: true, isItalic: true, isUnderline: true);

    stdout.write('Dartevel CLI Version: ');
  }
}
