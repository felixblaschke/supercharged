import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test('Size.tweenTo sets up Tween properly', () {
    final tween = Size(300, 400).tweenTo(Size(250, 200));

    expect(tween.runtimeType.toString(), 'SizeTween');
    expect(tween.begin, Size(300, 400));
    expect(tween.end, Size(250, 200));
  });

  test('Size.tweenTo result lerps as expected', () {
    final tween = Size(300, 400).tweenTo(Size(250, 200));

    final half = tween.transform(0.5)!;
    expect(half.width, 275);
    expect(half.height, 300);
  });
}
