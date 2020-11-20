import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test('animatable curve', () {
    final tween = 0.0.tweenTo(100.0).curved(Curves.easeInOut);

    expect(tween.transform(0.0), 0.0);
    expect(tween.transform(0.25), 12.868531048297882);
    expect(tween.transform(0.5), 50.0);
    expect(tween.transform(0.75), 87.13146895170212);
    expect(tween.transform(1.0), 100.0);
  });
}
