import 'dart:io';
import 'package:yaml/yaml.dart';

final pubFile = File('pubspec.yaml');
final yamlString = pubFile.readAsStringSync();
final dynamic config = loadYaml(yamlString);

final version = config['version'];
