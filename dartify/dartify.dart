import 'dart:io';

import 'file_editor.dart';

void main() async {
  FileEditor("pubspec.yaml")
    ..replaceLine(RegExp(r"^name:"), "name: supercharged_for_dart")
    ..replaceLine(RegExp(r"^description:"), "description: Supercharged brings all the comfort features from languages like Kotlin to all Dart developers.")
    ..removeTaggedLines("flutter")
    ..save();

  Directory("test").deleteSync(recursive: true);

  Directory("lib").listSync(recursive: true).forEach((file) {
    if (file.path.endsWith(".dart")) {
      FileEditor(file.path)
        ..removeTaggedLines("flutter")
        ..save();
    }
  });

  File("dartify/assets/README.md").copySync("README.md");
}
