import 'package:test/test.dart';
import 'package:supercharged_dart/supercharged_dart.dart';

void main() {
  test(
      'replaceFirstWhere should replace the first item which matches the comparator',
      () {
    final numbers = [1, 2, 3, 4, 5];
    final replacedNumbers =
        numbers.replaceFirstWhere((number) => number % 2 == 0, 10);
    expect(replacedNumbers, orderedEquals([1, 10, 3, 4, 5]));
  });

  test('replaceWhere should replace every item which matches the comparator',
      () {
    final numbers = [1, 2, 3, 4, 5];
    final replacedNumbers =
        numbers.replaceWhere((number) => number % 2 == 0, 10);
    expect(replacedNumbers, orderedEquals([1, 10, 3, 10, 5]));
  });
}
