import 'package:test/test.dart';
import 'package:supercharged_dart/supercharged_dart.dart';

void main() {
  test('iterable chunked', () {
    expect(() => [1, 2, 3].chunked(null), throwsArgumentError);
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

  test('iterable chunked with fill', () {
    expect([].chunked(2, fill: () => 99).toList(), equals([]));

    expect(
        [1].chunked(2, fill: () => 99).toList(),
        equals([
          [1, 99]
        ]));

    expect(
        [1, 2, 3, 4, 5].chunked(3, fill: () => 0).toList(),
        equals([
          [1, 2, 3],
          [4, 5, 0],
        ]));
  });
}
