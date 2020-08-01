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

  removeTaggedLines(String name) {
    var processedDocument = new List<String>();
    var isInsideFlutterBlock = false;

    document.forEach((line) {
      if (line.contains("// @codegen begin block $name")) {
        isInsideFlutterBlock = true;
      } else if (line.contains("// @codegen end block $name")) {
        isInsideFlutterBlock = false;
      } else {
        if (!isInsideFlutterBlock) {
          processedDocument.add(line);
        }
      }
    });

    document = processedDocument;
  }

  void printDocument() {
    print(document.join("\n"));
  }

  void save() {
     File(path).writeAsStringSync(document.join("\n"));
  }

}