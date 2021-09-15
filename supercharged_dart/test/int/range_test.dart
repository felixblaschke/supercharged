import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('int rangeTo', () {
    expect(0.rangeTo(10).toList(), equals([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
    expect(5.rangeTo(5).toList(), equals([5]));
    expect(3.rangeTo(5).toList(), equals([3, 4, 5]));
    expect(5.rangeTo(3).toList(), equals([5, 4, 3]));
  });

  test('int until', () {
    expect(0.until(10).toList(), equals([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]));
    expect(5.until(5).toList(), equals(<int>[]));
    expect(3.until(5).toList(), equals([3, 4]));
    expect(5.until(3).toList(), equals([5, 4]));
  });
}
