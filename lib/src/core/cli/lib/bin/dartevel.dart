#!/usr/bin/env dart

import 'dart:io';
import 'package:args/command_runner.dart';
import 'package:dartevel_cli/src/commands/new.dart';
import 'package:dartevel_cli/src/commands/version.dart';
import 'package:dartevel_cli/src/utils.dart';
import 'banners.dart';

Future<void> main(List<String> args) async {



  String description =
  '''
  $banner
  dartevel framework cli $version
  ''';
  var runner = CommandRunner("dartevel", description)
    ..addCommand(NewCommand())
    ..addCommand(VersionCommand());

  return await runner
      .run(args)
      .onError((error, stackTrace) => stderr.write(error))
      .whenComplete(() => null);
}
