// 📦 Package imports:
import 'package:hive_ce/hive.dart';

// 🌎 Project imports:
import 'package:hive_ce_test/src/get_temp_dir.dart';

/// Initializes a [Hive] in a temporary directory.
///
/// Be sure to run [tearDownTestHive] once your test has completed.
Future<void> setUpTestHive() async {
  final tempDir = await getTempDir();
  Hive.init(tempDir.path);
}

/// Deletes the temporary [Hive].
Future<void> tearDownTestHive() async {
  await Hive.deleteFromDisk();
}
