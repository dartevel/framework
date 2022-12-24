#!/usr/bin/env dart

import 'dart:io';
import 'package:args/command_runner.dart';
import 'package:dartevel_cli/src/commands/docs.dart';
import 'package:dartevel_cli/src/commands/down.dart';
import 'package:dartevel_cli/src/commands/makes/make_controller.dart';
import 'package:dartevel_cli/src/commands/makes/make_faker.dart';
import 'package:dartevel_cli/src/commands/makes/make_mail.dart';
import 'package:dartevel_cli/src/commands/makes/make_middleware.dart';
import 'package:dartevel_cli/src/commands/makes/make_migration.dart';
import 'package:dartevel_cli/src/commands/makes/make_model.dart';
import 'package:dartevel_cli/src/commands/new.dart';
import 'package:dartevel_cli/src/commands/serve.dart';
import 'package:dartevel_cli/src/commands/test.dart';
import 'package:dartevel_cli/src/commands/up.dart';
import 'package:dartevel_cli/src/commands/version.dart';
import 'banners.dart';

Future<void> main(List<String> args) async {
  String description = '''
  $banner
  
  https://dartevel.com

  dartevel framework cli 
  ''';

  var runner = CommandRunner("dartevel", description)
    ..addCommand(NewCommand())
    ..addCommand(ServeCommand())
    ..addCommand(DocsCommand())
    ..addCommand(UpCommand())
    ..addCommand(DownCommand())
    ..addCommand(TestCommand())
    ..addCommand(MakeControllerCommand())
    ..addCommand(MakeFakerCommand())
    ..addCommand(MakeMailCommand())
    ..addCommand(MakeMiddlewareCommand())
    ..addCommand(MakeMigrationCommand())
    ..addCommand(MakeModelCommand())
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
