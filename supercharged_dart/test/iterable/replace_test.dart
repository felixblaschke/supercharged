import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test(
      'replaceFirstWhere should replace the first item which matches the comparator',
      () {
    final numbers = [1, 2, 3, 4, 5];
    final replacedNumbers =
        numbers.replaceFirstWhere((number) => number % 2 == 0, 10);
    expect(replacedNumbers, orderedEquals(<int>[1, 10, 3, 4, 5]));
  });

  test('replaceWhere should replace every item which matches the comparator',
      () {
    final numbers = [1, 2, 3, 4, 5];
    final replacedNumbers =
        numbers.replaceWhere((number) => number % 2 == 0, 10);
    expect(replacedNumbers, orderedEquals(<int>[1, 10, 3, 10, 5]));
  });

  test('replaceWhere example', () {
    expect(
        [1, 2, 3].replaceWhere((n) => n < 3, 0), orderedEquals(<int>[0, 0, 3]));
    expect([1, 2, 3].replaceFirstWhere((n) => n < 3, 0),
        orderedEquals(<int>[0, 2, 3]));
  });
}
