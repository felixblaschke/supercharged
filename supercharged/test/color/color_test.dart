import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test('color tweenTo', () {
    final tween = Colors.red.tweenTo(Colors.blue);
    expect(tween.runtimeType.toString(), 'ColorTween');
    expect(tween.begin, Colors.red);
    expect(tween.end, Colors.blue);
  });
}
