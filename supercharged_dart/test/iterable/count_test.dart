import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('iterable count', () {
    expect(<int>[].count(), equals(0));
    expect([1, 2, 3].count(), equals(3));
    expect([1, 2, 3, 13, 14, 15].count(), equals(6));
    expect([1, 2, 3, 13, 14, 15].count((n) => n > 9), equals(3));
    expect([1, 2, 3, 13, 14, 15].count((n) => n % 2 == 0), equals(2));
    // ignore: equal_elements_in_set
    expect({1, 2, 3, 1, 2, 3}.count(), equals(3));
    // ignore: equal_elements_in_set
    expect({1, 2, 3, 1, 2, 3}.count((n) => n % 2 == 0), equals(1));
  });
}
