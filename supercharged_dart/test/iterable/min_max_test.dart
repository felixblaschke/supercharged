import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('iterable minBy', () {
    expect(<int>[].minBy((a, b) => a.compareTo(b)), equals(null));
    expect([1, 0, 2].minBy((a, b) => a.compareTo(b)), equals(0));
    expect(['flutter', 'dart'].minBy((a, b) => a.compareTo(b)), equals('dart'));
  });

  test('iterable maxBy', () {
    expect(<int>[].maxBy((a, b) => a.compareTo(b)), equals(null));
    expect([1, 2, 0].maxBy((a, b) => a.compareTo(b)), equals(2));
    expect(
        ['flutter', 'dart'].maxBy((a, b) => a.compareTo(b)), equals('flutter'));
  });
}
