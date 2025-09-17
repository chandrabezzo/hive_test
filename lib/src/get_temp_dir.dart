// 🎯 Dart imports:
import 'dart:io';
import 'dart:math';

// 📦 Package imports:
import 'package:path/path.dart' as path;

final _random = Random();
String _tempPath =
    path.join(Directory.current.path, '.dart_tool', 'test', 'tmp');

/// Returns a temporary directory in which a Hive can be initialized
Future<Directory> getTempDir() async {
  final name = _random.nextInt(pow(2, 32) as int);
  final dir = Directory(path.join(_tempPath, '${name}_tmp'));
  final isDirExists = dir.existsSync();
  if (isDirExists) await dir.delete(recursive: true);

  await dir.create(recursive: true);
  return dir;
}
