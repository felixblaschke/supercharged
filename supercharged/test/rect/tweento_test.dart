import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test('Rect.tweenTo sets up Tween properly', () {
    final tween = const Rect.fromLTWH(0, -100, 300, 400)
        .tweenTo(const Rect.fromLTWH(100, 0, 250, 200));

    expect(tween.runtimeType.toString(), 'RectTween');
    expect(tween.begin, const Rect.fromLTWH(0, -100, 300, 400));
    expect(tween.end, const Rect.fromLTWH(100, 0, 250, 200));
  });

  test('Rect.tweenTo result lerps as expected', () {
    final tween = const Rect.fromLTWH(0, -100, 300, 400)
        .tweenTo(const Rect.fromLTWH(100, 0, 250, 200));

    final half = tween.transform(0.5)!;
    expect(half.left, 50);
    expect(half.top, -50);
    expect(half.width, 275);
    expect(half.height, 300);
  });
}
