import 'file_editor.dart';

void main() async {
  FileEditor("pubspec.yaml")
      ..replaceLine(RegExp(r"^name:"), "name: supercharged_for_dart")
      ..save();
}