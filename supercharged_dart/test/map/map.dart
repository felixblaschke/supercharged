import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('map filter', () {
    var map = {'a': 1, 'b': 2, 'c': 3};
    expect(map.filter((e) => e.key == 'a').toMap(), equals({'a': 1}));
  });

  test('map count', () {
    var map = {'a': 1, 'b': 2, 'c': 3, 'd': -1};
    expect(map.count(), equals(4));
    expect(map.count((e) => e.value > 0), equals(3));
    expect(map.count((e) => e.value < 0), equals(1));
    expect(map.count((e) => e.value == 42), equals(0));

    var emptyMap = <String, int>{};
    expect(emptyMap.count(), equals(0));
    expect(emptyMap.count((e) => e.value >= 0), equals(0));
  });
}
