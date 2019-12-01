import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("object types", () {
    expect("hello".isType(String), isTrue);
    expect("hello".isType(bool), isFalse);
    expect(12.isType(int), isTrue);
    expect(12.isType(double), isFalse);
    expect(_SomeClass().isType(_SomeClass), isTrue);
    expect(Container().isType(Container), isTrue);
    expect(Container().isType(Widget), isFalse);
  });
}

class _SomeClass {

}