#!/usr/bin/env dart

import 'dart:io';
import 'package:args/command_runner.dart';
import 'package:dartevel_cli/src/commands/new.dart';
import 'package:dartevel_cli/src/commands/serve.dart';
import 'package:dartevel_cli/src/commands/version.dart';
import 'package:dartevel_cli/src/utils.dart';
import 'banners.dart';

Future<void> main(List<String> args) async {
  String description = '''
  $banner
  
  https://dartevel.com

  dartevel framework cli $version
  ''';

  var runner = CommandRunner("dartevel", description)
    ..addCommand(ServeCommand())
    ..addCommand(NewCommand())
    ..addCommand(VersionCommand());

  runner.argParser.addFlag('verbose',
      help: 'Print verbose output.', negatable: false, abbr: 'v');

  return await runner.run(args).onError((error, stackTrace) {
    stderr.writeln('Error -- something went wrong: $error');
    if (args.contains('--verbose') || args.contains('-v')) {
      stderr.writeln(stackTrace);
    }
  }).whenComplete(() => null);
}
