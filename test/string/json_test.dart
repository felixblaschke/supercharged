import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("string parseJSON", () {
    var jsonString = '''
  [
    {"score": 40},
    {"score": 80},
    {"score": 120, "isValid": true, "label": "highscore"}
  ]
''';
    dynamic object = jsonString.parseJSON();
    expect(object[0]["score"], equals(40));
    expect(object[1]["score"], equals(80));
    expect(object[2]["score"], equals(120));
    expect(object[2]["isValid"], isTrue);
    expect(object[2]["label"], equals("highscore"));
  });

  test("string parseJSON with reviver", () {
    // TODO needs more work
    /*
    var jsonString = jsonEncode([_Score(20), _Score(40)], toEncodable: (obj) {
      if (obj.isType(_Score)) {
        return "@score:${(obj as _Score).score}";
      }
      return null;
    });
    List<_Score> scoreList = jsonString.parseJSON(reviver: (key, value) {
      if (value.isType(String) && (value as String).startsWith("@score")) {
        return _Score((value as String).allAfter(":").toInt());
      }
      if (value.isType(List) && (value as List)[0].isType(_Score)) {
        return (value as List).map((e) => e as _Score);
      }
      print(value.runtimeType);
      return value;
    });
    expect(scoreList, equals([_Score(20), _Score(40)]));
     */
  });
}

class _Score {
  int score;

  _Score(this.score);
  @override
  String toString() {
    return "Instance of _Score (Score: $score)";
  }
}
