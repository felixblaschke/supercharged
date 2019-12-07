import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("map filter", () {
    var map = {"a": 1, "b": 2, "c": 3};
    expect(() => map.filter(null), throwsArgumentError);
    expect(map.filter((e) => e.key == "a").toMap(),
        equals({"a": 1}));
  });

}
