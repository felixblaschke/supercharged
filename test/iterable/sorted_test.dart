import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("iterable sortedBy", () {
    expect([].sortedBy((a, b) => a.compareTo(b)), equals([]));
    expect(() => [0, 1, 2].sortedBy(null), throwsArgumentError);
    expect([3, 1, 5, 9, 7].sortedBy((a, b) => a.compareTo(b)),
        equals([1, 3, 5, 7, 9]));
    expect([1, 3, 5, 7, 9].sortedBy((a, b) => a.compareTo(b)),
        equals([1, 3, 5, 7, 9]));
    expect([9, 7, 5, 3, 1].sortedBy((a, b) => a.compareTo(b)),
        equals([1, 3, 5, 7, 9]));
  });
}
