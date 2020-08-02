import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test('supercharged_dart exporting', () {
    expect('1'.toInt(), equals(1));
    expect(5.isBetween(3, 6), equals(true));
  });
}
