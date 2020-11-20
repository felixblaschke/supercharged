import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('iterable forEachIndex', () {
    var occuredIndized = [];
    var occuredValues = [];
    [5, 9, 11].forEachIndexed((index, value) {
      occuredIndized.add(index);
      occuredValues.add(value);
    });
    expect(occuredIndized, equals([0, 1, 2]));
    expect(occuredValues, equals([5, 9, 11]));
  });
}
