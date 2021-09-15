import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('iterable filter', () {
    expect(<int>[].filter((n) => n < 3).toList(), equals(<int>[]));
    expect([1, 2, 3, 4].filter((n) => n < 3).toList(), equals([1, 2]));
    expect(
        [1, 2, 3, 4]
            .filter((n) => n < 3)
            .map((n) => n * 2)
            .reduce((value, n) => value + n),
        equals(6));
  });
}
