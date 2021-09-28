import 'dart:io';
import 'package:yaml/yaml.dart';
import 'dart:math';

final pubFile = File('pubspec.yaml');
final yamlString = pubFile.readAsStringSync();
final dynamic config = loadYaml(yamlString);

final version = config['version'];

const String _valid =
    'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
final Random _rnd = Random.secure();

String randomAlphaNumeric(int length) {
  var b = StringBuffer();

  for (var i = 0; i < length; i++) {
    b.writeCharCode(_valid.codeUnitAt(_rnd.nextInt(_valid.length)));
  }

  return b.toString();
}
