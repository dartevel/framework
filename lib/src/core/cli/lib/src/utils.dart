import 'dart:io';
import 'dart:math';
import 'package:yaml/yaml.dart';
import 'package:path/path.dart' as path;


// void configureUtils() {
  
String pubspecPath = path.join(path.dirname(path.current), 'pubspec.yaml');


File(pubspecPath).readAsString().then((String content) {
  final dynamic config = loadYaml(content);
  final version = config['version'];
});


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
// }
