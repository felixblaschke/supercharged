import 'dart:io';

import 'package:supercharged_dart/supercharged_dart.dart';

void main() {
  process(File('tool/templates/README.md'), File('README.md'));
  updateDartDoc(Directory('lib'));
}

void updateDartDoc(Directory directory) {
  directory.listSync().forEach((entity) {
    if (entity is Directory) {
      updateDartDoc(entity);
    } else if (entity is File && entity.path.toLowerCase().endsWith('.dart')) {
      updateDartDocFile(entity);
    }
  });
}

void updateDartDocFile(File file) {
  var result = '';
  var skipLine = false;
  file.readAsLinesSync().forEach((line) {
    if (line.trim().startsWith('/// Example: <!--') &&
        line.trim().endsWith('-->')) {
      final ref = line.allBetween('<!--', '-->').trim();
      final whitespace = line.allBefore('///');
      result += line + '\n';
      final codeFile = File('tool/templates/code/$ref.dart');
      skipLine = true;
      result += '$whitespace/// ```dart\n';
      result += manualTrim(codeFile.readAsLinesSync())
              .map((line) => '$whitespace/// $line')
              .join('\n') +
          '\n';
      result += '$whitespace/// ```\n';
    } else if (skipLine) {
      if (!line.trim().startsWith('///')) {
        skipLine = false;
      }
    }

    if (!skipLine) {
      result += line + '\n';
    }
  });
  file.writeAsString(result);
}

void process(File file, File to) {
  print('Processing $file...');
  var lines = file.readAsLinesSync();

  lines = includeMacro(file, lines);
  lines = gapMacro(file, lines);
  lines = codeMacro(file, lines);
  lines = indexMacro(file, lines);

  to.writeAsStringSync(lines.join('\n'));
}

List<String> gapMacro(File docFile, List<String> lines) {
  final result = <String>[];

  for (var line in lines) {
    if (line.trim().startsWith('@gap')) {
      var size = int.parse(
          line.substring(line.indexOf('@gap') + '@gap'.length).trim());

      for (var i = 0; i < size; i++) {
        result.add('');
        result.add('&nbsp;');
        result.add('');
      }
    } else {
      result.add(line);
    }
  }

  return result;
}

List<String> indexMacro(File docFile, List<String> lines) {
  final result = <String>[];

  for (var line in lines) {
    if (line.trim().startsWith('@index')) {
      result.add('## Table of contents');

      lines
          .map((line) => line.trim())
          .where((line) => line.startsWith('##'))
          .forEach((line) {
        var depth = line.indexOf(' ');
        var title = line.substring(depth + 1);
        var link = '#' + title.toLowerCase().replaceAll(' ', '-');

        print('$depth $title');

        if (depth == 2) {
          result.add('');
          result.add('[**$title**]($link)');
        } else if (depth == 3) {
          result.add('  - [$title]($link)');
        }
      });
    } else {
      result.add(line);
    }
  }

  return result;
}

List<String> includeMacro(File docFile, List<String> lines) {
  final result = <String>[];

  for (var line in lines) {
    if (line.trim().startsWith('@include')) {
      var path =
          line.substring(line.indexOf('@include') + '@include'.length).trim();
      var file = File(path);
      var code = file.readAsStringSync().trim().split('\n');
      result.addAll(code);
    } else {
      result.add(line);
    }
  }

  return result;
}

List<String> codeMacro(File docFile, List<String> lines) {
  final result = <String>[];

  for (var line in lines) {
    if (line.trim().startsWith('@code')) {
      var path = line.substring(line.indexOf('@code') + '@code'.length).trim();
      var file = File(path);
      var extension =
          file.path.substring(file.path.lastIndexOf('.') + '.'.length);
      var code = file.readAsStringSync().trim().split('\n');

      code =
          code.where((line) => !line.trim().startsWith('// ignore:')).toList();

      code = manualTrim(code);

      result.add('```$extension');
      result.addAll(code);
      result.add('```');
    } else {
      result.add(line);
    }
  }

  return result;
}

List<String> manualTrim(List<String> code) {
  if (code.any((line) => line.contains('//@start'))) {
    var startLine = code.firstWhere((line) => line.contains('//@start'));
    var endLine = code.firstWhere((line) => line.contains('//@end'));
    var indent = startLine.indexOf('//');

    // Cut out lines
    var result = code
        .getRange(code.indexOf(startLine) + 1, code.indexOf(endLine))
        .toList();

    // Intend based on comment
    result = result
        .map((line) => line.length > indent ? line.substring(indent) : line)
        .toList();

    return result;
  } else {
    return code;
  }
}
