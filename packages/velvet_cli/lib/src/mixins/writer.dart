import 'dart:io';

import 'package:dcli/dcli.dart';
import 'package:path/path.dart';
import 'package:velvet_cli/src/core/container.dart';
import 'package:velvet_cli/src/services/pubspec.dart';
import 'package:velvet_support/velvet_support.dart';

mixin Writer {
  void write(String path, String content) {
    if (!exists(path)) {
      createRecursiveDirectory(path);
      File(path).writeAsStringSync(content);
    } else {
      printerr('File already exists: $path');
    }
  }

  void createRecursiveDirectory(String path) {
    if (!exists(dirname(path))) {
      createDir(dirname(path), recursive: true);
    }
  }

  String addLocalImport(String path, {String? hide, String? as}) {
    path = path
        .ensureStartsWith('package:${container.get<Pubspec>().resource.name}/')
        .ensureEndsWith('.dart');

    var import = "import '$path';";

    if (hide != null) {
      import += " hide $hide;";
    }

    if (as != null) {
      import += " as $as;";
    }

    return import;
  }

  String addPackageImport(String path, {String? hide, String? as}) {
    path = path.ensureStartsWith('package:').ensureEndsWith('.dart');

    var import = "import '$path';";

    if (hide != null) {
      import += " hide $hide;";
    }

    if (as != null) {
      import += " as $as;";
    }

    return import;
  }
}
