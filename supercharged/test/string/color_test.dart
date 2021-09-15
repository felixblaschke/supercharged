import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test('string to color', () {
    expect('#ff00ff'.toColor(), equals(const Color(0xFFFF00FF)));
    expect('ff0000'.toColor(), equals(const Color(0xFFFF0000)));
    expect('00ff0080'.toColor(), equals(const Color(0x8000FF00)));
    expect('0f08'.toColor(), equals(const Color(0x8800FF00)));
    expect('#fff'.toColor(), equals(const Color(0xFFFFFFFF)));
    expect('00f'.toColor(), equals(const Color(0xFF0000FF)));
    expect('red'.toColor(), equals(const Color(0xFFFF0000)));
    expect('GOLD'.toColor(), equals(const Color(0xFFFFD700)));
    expect(''.toColor(), equals(const Color.fromARGB(255, 0, 0, 0)));
    expect('#red'.toColor(), equals(const Color.fromARGB(255, 0, 0, 0)));
    expect('#'.toColor(), equals(const Color.fromARGB(255, 0, 0, 0)));
    expect('#ff'.toColor(), equals(const Color.fromARGB(255, 0, 0, 0)));
  });
}
