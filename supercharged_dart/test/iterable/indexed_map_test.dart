import 'package:collection/collection.dart';
import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('indexedMap should map values', () {
    final numbers = [1, 2, 3, 4, 5];
    // ignore: deprecated_member_use_from_same_package
    final replacedNumbers = numbers.mapIndexedSC((number, index) => number * 2);
    expect(replacedNumbers, orderedEquals(<int>[2, 4, 6, 8, 10]));
  });

  test('indexedMap should pass the index of the current element', () {
    final numbers = [10, 20, 30, 40, 50];
    // ignore: deprecated_member_use_from_same_package
    final indexes = numbers.mapIndexedSC((number, index) => index);
    expect(indexes, orderedEquals(<int>[0, 1, 2, 3, 4]));
  });

  test('indexedMap should map values (dart)', () {
    final numbers = [1, 2, 3, 4, 5];
    final replacedNumbers = numbers.mapIndexed((index, number) => number * 2);
    expect(replacedNumbers, orderedEquals(<int>[2, 4, 6, 8, 10]));
  });

  test('indexedMap should pass the index of the current element (dart)', () {
    final numbers = [10, 20, 30, 40, 50];
    final indexes = numbers.mapIndexed((index, number) => index);
    expect(indexes, orderedEquals(<int>[0, 1, 2, 3, 4]));
  });
}
