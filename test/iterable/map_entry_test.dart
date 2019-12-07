import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("iterable<MapEntry> toMap", () {
    expect([MapEntry("a", 1), MapEntry("b", 2)].toMap(), equals({"a": 1, "b": 2}));
  });
}
