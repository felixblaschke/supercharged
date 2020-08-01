import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("animation interval and curve", () {
    test1() {
      final controller = AnimationController(
        vsync: const TestVSync(),
      );
      final compare = compareAnimation(
        parent: controller,
        actual: controller.interval(0.3, 0.7),
        matcher: controller.drive(CurveTween(curve: Interval(0.3, 0.7))),
      );
      controller.dispose();
      return compare;
    }

    test2() {
      final controller = AnimationController(
        vsync: const TestVSync(),
      );

      final compare = compareAnimation(
        parent: controller,
        actual: controller.interval(0.3, 0.7, curve: Curves.easeInOut),
        matcher: controller.drive(
            CurveTween(curve: Interval(0.3, 0.7, curve: Curves.easeInOut))),
      );
      controller.dispose();
      return compare;
    }

    test3() {
      final controller = AnimationController(
        vsync: const TestVSync(),
      );

      final compare = compareAnimation(
        parent: controller,
        actual: controller.curve(Curves.easeOut),
        matcher: controller.drive(CurveTween(curve: Curves.easeOut)),
      );
      controller.dispose();
      return compare;
    }

    expect(test1(), true);
    expect(test2(), true);
    expect(test3(), true);
  });
}

compareAnimation({
  AnimationController parent,
  Animation actual,
  Animation matcher,
}) {
  double v = 0.0;
  while (v <= 1) {
    v += 0.01;
    parent.value = v;
    if (actual.value != matcher.value) return false;
  }
  return true;
}
