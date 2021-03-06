import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';
import 'package:collection/collection.dart';

void main() {
  test('iterable forEachIndex', () {
    var occurredIndices = [];
    var occurredValues = [];
    // ignore: deprecated_member_use_from_same_package
    [5, 9, 11].forEachIndexedSC((index, value) {
      occurredIndices.add(index);
      occurredValues.add(value);
    });
    expect(occurredIndices, equals([0, 1, 2]));
    expect(occurredValues, equals([5, 9, 11]));
  });

  test('iterable forEachIndex (dart)', () {
    var occurredIndices = [];
    var occurredValues = [];
    [5, 9, 11].forEachIndexed((index, value) {
      occurredIndices.add(index);
      occurredValues.add(value);
    });
    expect(occurredIndices, equals([0, 1, 2]));
    expect(occurredValues, equals([5, 9, 11]));
  });
}
