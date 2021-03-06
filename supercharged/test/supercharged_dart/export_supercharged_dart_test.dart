import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test('supercharged_dart exporting', () {
    expect('1'.toInt(), equals(1));
    expect(5.isBetween(3, 6), equals(true));
  });

  test('supercharged_dart replaceWhere example', () {
    expect(
        [1, 2, 3].replaceWhere((n) => n < 3, 0), orderedEquals(<int>[0, 0, 3]));
  });

  test('delay', () async {
    await 1.milliseconds.delay;
  });

  test('pick', () {
    expect([1, 2, 3, 4, 5, 6].pickOne(Random(0)), equals(3));
    expect([1, 2, 3, 4, 5, 6].pickOne() < 10, equals(true));
  });
}
