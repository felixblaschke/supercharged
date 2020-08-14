import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test('supercharged_dart exporting', () {
    expect('1'.toInt(), equals(1));
    expect(5.isBetween(3, 6), equals(true));
  });

  test('supercharged_dart replaceWhere example', () {
    expect([1, 2, 3].replaceWhere((n) => n < 3, 0), orderedEquals([0, 0, 3]));
  });

  test('delay', () async {
    await 1.milliseconds.delay;
  });
}
