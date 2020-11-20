import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('iterable<MapEntry> toMap', () {
    expect(
        [MapEntry('a', 1), MapEntry('b', 2)].toMap(), equals({'a': 1, 'b': 2}));
  });
}
