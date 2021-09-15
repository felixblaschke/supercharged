import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('iterable withoutFirst', () {
    expect([1, 2, 3].withoutFirst(), equals([2, 3]));
    expect([1].withoutFirst(), equals(<int>[]));
    expect(<int>[].withoutFirst(), equals(<int>[]));
  });

  test('iterable withoutLast', () {
    expect([1, 2, 3].withoutLast(), equals([1, 2]));
    expect([1].withoutLast(), equals(<int>[]));
    expect(<int>[].withoutLast(), equals(<int>[]));
  });

  test('iterable withoutFirst and withoutLast combined', () {
    expect([1, 2, 3].withoutFirst().withoutLast(), equals([2]));
    expect([1, 2, 3].withoutLast().withoutFirst(), equals([2]));
    expect(<int>[].withoutFirst().withoutLast(), equals(<int>[]));
  });
}
