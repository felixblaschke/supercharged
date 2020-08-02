import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test('string to color', () {
    expect('#ff00ff'.toColor(), equals(Color(0xFFFF00FF)));
    expect('ff0000'.toColor(), equals(Color(0xFFFF0000)));
    expect('#fff'.toColor(), equals(Color(0xFFFFFFFF)));
    expect('00f'.toColor(), equals(Color(0xFF0000FF)));
    expect('red'.toColor(), equals(Color(0xFFFF0000)));
    expect('GOLD'.toColor(), equals(Color(0xFFFFD700)));
    expect(() => ''.toColor(), throwsArgumentError);
    expect(() => '#red'.toColor(), throwsArgumentError);
    expect(() => '#'.toColor(), throwsArgumentError);
    expect(() => '#ff'.toColor(), throwsArgumentError);
    expect(() => '#ffff'.toColor(), throwsArgumentError);
  });
}
