import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:io/ansi.dart';
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';

final String checkmark = ansiOutputEnabled ? '\u2714' : '[Success]';

final String ballot = ansiOutputEnabled ? '\u2717' : '[Failure]';

// import "package:os_detect/os_detect.dart" as Platform;

Future<Pubspec> loadPubspec([Directory? directory]) {
  directory ??= Directory.current;
  var file = File.fromUri(directory.uri.resolve('pubspec.yaml'));
  return file
      .readAsString()
      .then((yaml) => Pubspec.parse(yaml, sourceUrl: file.uri));
}

Future<void> copyDirectory(Directory source, Directory destination) async {
  // if (!topLevel) stdout.write('\r');
  // print(darkGray
  //     .wrap('Copying dir "${source.path}" -> "${destination.path}..."'));

  await for (var entity in source.list(recursive: false)) {
    if (path.basename(entity.path) == '.git') continue;
    if (entity is Directory) {
      var newDirectory =
          Directory(path.join(destination.absolute.path, path.basename(entity.path)));
      await newDirectory.create(recursive: true);
      await copyDirectory(entity.absolute, newDirectory);
    } else if (entity is File) {
      var newPath = path.join(destination.path, path.basename(entity.path));
      // print(darkGray.wrap('\rCopying file "${entity.path}" -> "$newPath"'));
      await File(newPath).create(recursive: true);
      await entity.copy(newPath);
    }
  }

  // print('\rCopied "${source.path}" -> "${destination.path}.');
}

Future<bool> runCommand(String exec, List<String> args) async {
  var s = '$exec ${args.join(' ')}'.trim();
  stdout.write(darkGray.wrap('Running `$s`... '));

  try {
    var p = await Process.start(exec, args);
    var code = await p.exitCode;

    if (code == 0) {
      print(green.wrap(checkmark));
      return true;
    } else {
      print(red.wrap(ballot));
      await stdout.addStream(p.stdout);
      await stderr.addStream(p.stderr);
      return false;
    }
  } catch (e) {
    print(red.wrap('$ballot Failed to run process.'));
    return false;
  }
}

// void configureUtils() {

String pubspecPath = path.join(path.dirname(path.current), 'pubspec.yaml');

// File(pubspecPath).readAsString().then((String content) {
//   final dynamic config = loadYaml(content);
//   final version = config['version'];
// });
//

const String _valid =
    'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
final Random _rnd = Random.secure();

String randomString(int length) {
  var b = StringBuffer();

  for (var i = 0; i < length; i++) {
    b.writeCharCode(_valid.codeUnitAt(_rnd.nextInt(_valid.length)));
  }

  return b.toString();
}
// }

String filesize(dynamic size, [int round = 2]) {
  /**
   * [size] can be passed as number or as string
   *
   * the optional parameter [round] specifies the number
   * of digits after comma/point (default is 2)
   */
  var divider = 1024;
  int _size;
  try {
    _size = int.parse(size.toString());
  } catch (e) {
    throw ArgumentError('Can not parse the size parameter: $e');
  }

  if (_size < divider) {
    return '$_size B';
  }

  if (_size < divider * divider && _size % divider == 0) {
    return '${(_size / divider).toStringAsFixed(0)} KB';
  }

  if (_size < divider * divider) {
    return '${(_size / divider).toStringAsFixed(round)} KB';
  }

  if (_size < divider * divider * divider && _size % divider == 0) {
    return '${(_size / (divider * divider)).toStringAsFixed(0)} MB';
  }

  if (_size < divider * divider * divider) {
    return '${(_size / divider / divider).toStringAsFixed(round)} MB';
  }

  if (_size < divider * divider * divider * divider && _size % divider == 0) {
    return '${(_size / (divider * divider * divider)).toStringAsFixed(0)} GB';
  }

  if (_size < divider * divider * divider * divider) {
    return '${(_size / divider / divider / divider).toStringAsFixed(round)} GB';
  }

  if (_size < divider * divider * divider * divider * divider &&
      _size % divider == 0) {
    num r = _size / divider / divider / divider / divider;
    return '${r.toStringAsFixed(0)} TB';
  }

  if (_size < divider * divider * divider * divider * divider) {
    num r = _size / divider / divider / divider / divider;
    return '${r.toStringAsFixed(round)} TB';
  }

  if (_size < divider * divider * divider * divider * divider * divider &&
      _size % divider == 0) {
    num r = _size / divider / divider / divider / divider / divider;
    return '${r.toStringAsFixed(0)} PB';
  } else {
    num r = _size / divider / divider / divider / divider / divider;
    return '${r.toStringAsFixed(round)} PB';
  }
}

Future _checkForGit() async {
  try {
    var git = await Process.start('git', ['--version']);
    if (await git.exitCode == 0) {
      var version = await git.stdout.transform(utf8.decoder).join();
      print(green.wrap(
          "Git executable found: v${version.replaceAll('git version', '').trim()}"));
    } else {
      throw Exception('Git executable exit code not 0');
    }
  } catch (exc) {
    print(red.wrap(' Git executable not found'));
  }
}

Future getStubFile(String name) async {
  var stubFilePath =
      path.join(path.current, "lib\\src\\stubs\\") + name + ".stub";
  var file = File(stubFilePath);
  late var content;

  if (await file.exists() == true) {
    content = await file.readAsString();
    return content.toString();
  } else {
    print("stub file Not Exists");
    return;
  }
}
