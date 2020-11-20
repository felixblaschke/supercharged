import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('list json', () {
    expect({'a': 1, 'b': 2}.toJSON(), equals('{"a":1,"b":2}'));
  });
}
