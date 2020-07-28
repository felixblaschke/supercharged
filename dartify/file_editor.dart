import 'dart:io';

class FileEditor {
  String path;
  List<String> document;

  FileEditor(this.path) {
    document = File(path).readAsStringSync().split("\n");
  }

  replaceLine(RegExp matcher, String replacement) {
    document = document.map((line) {
      if (matcher.hasMatch(line)) {
        return replacement;
      }
      return line;
    }).toList();
  }

  void save() {
     File(path).writeAsStringSync(document.join("\n"));
  }

}