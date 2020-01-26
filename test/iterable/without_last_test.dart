import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("iterable withoutLast", () {
    expect([1, 2, 3].withoutLast(), equals([1, 2]));
    expect([1].withoutLast(), equals([]));
    expect([].withoutLast(), equals([]));
  });
}
