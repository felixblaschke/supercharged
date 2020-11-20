import 'dart:math';

import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('iterable pickOne', () {
    expect([1, 2, 3, 4, 5, 6].pickOne(Random(0)), equals(3));
    expect([1, 2, 3, 4, 5, 6].pickOne(Random(0)), equals(3));
    expect([1, 2, 3, 4, 5, 6].pickOne(Random(0)), equals(3));
  });

  test('iterable pickSome', () {
    expect([1, 2, 3, 4, 5, 6].pickSome(3, Random(0)), equals([3, 6, 2]));
    expect([1, 2, 3, 4, 5, 6].pickSome(3, Random(0)), equals([3, 6, 2]));
    expect([1, 2, 3, 4, 5, 6].pickSome(3, Random(0)), equals([3, 6, 2]));

    expect(
        [1, 2, 3, 4, 5, 6].pickSome(10, Random(0)), equals([3, 6, 2, 1, 5, 4]));
  });
}
