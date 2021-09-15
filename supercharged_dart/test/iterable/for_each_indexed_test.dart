import 'package:collection/collection.dart';
import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('iterable forEachIndex', () {
    var occurredIndices = <int>[];
    var occurredValues = <int>[];
    // ignore: deprecated_member_use_from_same_package
    [5, 9, 11].forEachIndexedSC((index, value) {
      occurredIndices.add(index);
      occurredValues.add(value);
    });
    expect(occurredIndices, equals([0, 1, 2]));
    expect(occurredValues, equals([5, 9, 11]));
  });

  test('iterable forEachIndex (dart)', () {
    var occurredIndices = <int>[];
    var occurredValues = <int>[];
    [5, 9, 11].forEachIndexed((index, value) {
      occurredIndices.add(index);
      occurredValues.add(value);
    });
    expect(occurredIndices, equals([0, 1, 2]));
    expect(occurredValues, equals([5, 9, 11]));
  });
}
