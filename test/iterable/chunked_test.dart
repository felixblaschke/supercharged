import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("iterable chunked", () {
    expect(() => [].chunked(-1), throwsArgumentError);
    expect(() => [].chunked(0), throwsArgumentError);
    expect([].chunked(2).toList(), equals([]));
    expect(
        [1, 2, 3, 4, 5, 6].chunked(2).toList(),
        equals([
          [1, 2],
          [3, 4],
          [5, 6]
        ]));
    expect(
        [1, 2, 3, 4, 5].chunked(2).toList(),
        equals([
          [1, 2],
          [3, 4],
          [5]
        ]));
    expect(
        [1, 2, 3, 4, 5, 6].chunked(4).toList(),
        equals([
          [1, 2, 3, 4],
          [5, 6]
        ]));
  });
}
