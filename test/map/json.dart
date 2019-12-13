import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("list json", () {
    expect({"a": 1, "b": 2}.toJSON(), equals("""{"a":1,"b":2}"""));
  });
}
