import 'dart:io';
import 'package:dartevel_cli/src/commands/command.dart';
import 'package:dartevel_cli/src/utils.dart';

class KeyGenerateCommand extends DartevelCommand {
  @override
  String get name => "key:generate";

  @override
  String get description => "Regenerate secret key";

  KeyGenerateCommand();

  @override
  Future run() async {
    var secret = randomString(32);
    print('Generated new development secret key: $secret');
    await changeSecret(File('config/default.yaml'), secret);

    // secret = randomString(32);
    // print('Generated new production secret key: $secret');
    // await changeSecret(File('config/production.yaml'), secret);
  }

  Future changeSecret(File file, String secret) async {
    if (await file.exists()) {
      var contents = await file.readAsString();
      contents = contents.replaceAll(RegExp(r'jwt_secret:[^\n]+\n?'), '');
      await file.writeAsString('${contents.trim()}\njwt_secret: "$secret"');
    }
  }
}
