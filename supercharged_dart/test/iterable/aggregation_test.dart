import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('iterable sumBy', () {
    expect(<int>[].sumBy((n) => n), equals(0));
    expect([1, 2, 3].sumBy((n) => n), equals(6));
    expect([1, 2, 3].sumBy((n) => 2 * n), equals(12));
  });

  test('iterable sumByDouble', () {
    expect(<double>[].sumByDouble((n) => n), equals(0.0));
    expect([1.5, 2.5, 3.5].sumByDouble((n) => n), equals(7.5));
    expect([8, 4, 2].sumByDouble((n) => 0.5 * n), equals(7));
  });

  test('iterable averageBy', () {
    expect(<int>[].averageBy((n) => n), isNull);
    expect([1, 2, 3].averageBy((n) => n), equals(2.0));
    expect([9.0, 6.0, 3.0].averageBy((n) => 0.5 * n), equals(3.0));
  });
}
