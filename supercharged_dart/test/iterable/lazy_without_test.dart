import 'package:test/test.dart';
import 'package:supercharged_dart/supercharged_dart.dart';

void main() {
  test('iterable withoutFirst', () {
    expect([1, 2, 3].withoutFirst(), equals([2, 3]));
    expect([1].withoutFirst(), equals([]));
    expect([].withoutFirst(), equals([]));
  });

  test('iterable withoutLast', () {
    expect([1, 2, 3].withoutLast(), equals([1, 2]));
    expect([1].withoutLast(), equals([]));
    expect([].withoutLast(), equals([]));
  });

  test('iterable withoutFirst and withoutLast combined', () {
    expect([1, 2, 3].withoutFirst().withoutLast(), equals([2]));
    expect([1, 2, 3].withoutLast().withoutFirst(), equals([2]));
    expect([].withoutFirst().withoutLast(), equals([]));
  });
}
