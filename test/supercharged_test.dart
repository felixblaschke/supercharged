import 'package:flutter_test/flutter_test.dart';

import 'package:supercharged/supercharged.dart';
import 'package:supercharged/calc_ext.dart';

void main() {
  test('adds one to input values', () {
    final calculator = Calculator();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);
    expect(() => calculator.addOne(null), throwsNoSuchMethodError);
  });

  test('subs one to input values', () {
    final calculator = Calculator();
    expect(calculator.subOne(2), 1);
    expect(calculator.subOne(-7), -8);
    expect(calculator.subOne(0), -1);
    expect(() => calculator.subOne(null), throwsNoSuchMethodError);
  });
}
