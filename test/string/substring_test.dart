import 'dart:convert';
import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("string substring allAfter", () {
    expect("hello:world".allAfter(":"), equals("world"));
    expect("hello:world".allAfter("-"), equals(""));
    expect("i   like the cat".allAfter(RegExp("\\s+")), equals("like the cat")); // regex => find any whitespace sequence
  });
}
