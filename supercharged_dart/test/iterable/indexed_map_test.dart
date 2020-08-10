import 'package:test/test.dart';
import 'package:supercharged_dart/supercharged_dart.dart';

void main() {
  test('indexedMap should map values', () {
    final numbers = [1, 2, 3, 4, 5];
    final replacedNumbers = numbers.indexedMap((_, number) => number * 2);
    expect(replacedNumbers, orderedEquals([2, 4, 6, 8, 10]));
  });
  // and pass the index of the current element
  test('indexedMap should pass the index of the current element', () {
    final numbers = [10, 20, 30, 40, 50];
    final indexes = numbers.indexedMap((index, _) => index);
    expect(indexes, orderedEquals([0, 1, 2, 3, 4]));
  });
}
