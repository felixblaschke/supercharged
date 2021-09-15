import 'dart:convert';

import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('string parseJSON', () {
    var jsonString = '''
  [
    {"score": 40},
    {"score": 80},
    {"score": 120, "isValid": true, "label": "highscore"}
  ]
''';
    dynamic object = jsonString.parseJSON();
    expect(object[0]['score'], equals(40));
    expect(object[1]['score'], equals(80));
    expect(object[2]['score'], equals(120));
    expect(object[2]['isValid'], isTrue);
    expect(object[2]['label'], equals('highscore'));
  });

  test('string parseJSON with reviver', () {
    var jsonString = jsonEncode([_Score(20), _Score(40)], toEncodable: (obj) {
      if (obj is _Score) {
        return '@score:${obj.score}';
      }
      return null;
    });
    var scoreList = jsonString.parseJSON(reviver: (key, value) {
      if (value is String && value.startsWith('@score')) {
        return _Score(value.allAfter(':').toInt()!);
      }
      if (value is List && value[0] is _Score) {
        return value.map((dynamic e) => e as _Score).toList();
      }
      return value;
    }) as List<_Score>;
    expect(scoreList.length, equals(2));
    expect(scoreList[0].score, equals(20));
    expect(scoreList[1].score, equals(40));
  });
}

class _Score {
  int score;

  _Score(this.score);

  @override
  String toString() {
    return 'Instance of _Score (Score: $score)';
  }
}
