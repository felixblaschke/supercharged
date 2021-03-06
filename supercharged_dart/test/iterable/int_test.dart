import 'package:collection/collection.dart';
import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('iterable<int> sum', () {
    // ignore: deprecated_member_use_from_same_package
    expect([2, 6, 4, 8].sumSC(), equals(20));
    // ignore: deprecated_member_use_from_same_package
    expect([0].sumSC(), equals(0));
  });

  test('iterable<int> average', () {
    // ignore: deprecated_member_use_from_same_package
    expect([2, 4, 6, 8].averageSC(), equals(5.0));
  });

  test('iterable<int> sum (dart)', () {
    expect([2, 6, 4, 8].sum, equals(20));
    expect([0].sum, equals(0));
  });

  test('iterable<int> average (dart)', () {
    expect([2, 4, 6, 8].average, equals(5.0));
  });

  test('iterable<int> max', () {
    expect([2, 3, 1].max(), equals(3));
  });

  test('iterable<int> min', () {
    expect([21, 11, 31].min(), equals(11));
  });
}
