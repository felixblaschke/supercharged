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
}
