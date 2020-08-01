import 'dart:io';

import 'file_editor.dart';

void main() async {
  /*FileEditor("pubspec.yaml")
      ..replaceLine(RegExp(r"^name:"), "name: supercharged_for_dart")
      ..save();*/

  Directory("lib").listSync(recursive: true).forEach((file) {
    if (file.path.endsWith(".dart")) {
      FileEditor(file.path)..removeTaggedLines("flutter")..save();
    }
  });
}
