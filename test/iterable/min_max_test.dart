import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("iterable minBy", () {
    expect(() => [0, 1, 2].minBy(null), throwsArgumentError);
    expect([1, 0, 2].minBy((a, b) => a.compareTo(b)), equals(0));
    expect(["flutter","dart"].minBy((a, b) => a.compareTo(b)), equals("dart"));
  });

  test("iterable maxBy", () {
    expect(() => [0, 1, 2].maxBy(null), throwsArgumentError);
    expect([1, 2, 0].maxBy((a, b) => a.compareTo(b)), equals(2));
    expect(["flutter","dart"].maxBy((a, b) => a.compareTo(b)), equals("flutter"));
  });
}
