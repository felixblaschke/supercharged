import 'package:collection/collection.dart';
import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('iterable<double> sum', () {
    // ignore: deprecated_member_use_from_same_package
    expect([2.0, 6.0, 4.0, 8.0].sumSC(), equals(20.0));
    // ignore: deprecated_member_use_from_same_package
    expect([0.0].sumSC(), equals(0));
  });

  test('iterable<double> average', () {
    // ignore: deprecated_member_use_from_same_package
    expect([2.0, 4.0, 6.0, 8.0].averageSC(), equals(5.0));
  });

  test('iterable<double> sum (dart)', () {
    expect([2.0, 6.0, 4.0, 8.0].sum, equals(20.0));
    expect([0.0].sum, equals(0));
  });

  test('iterable<double> average (dart)', () {
    expect([2.0, 4.0, 6.0, 8.0].average, equals(5.0));
  });

  test('iterable<double> max', () {
    expect([2.0, 3.0, 1.0].max(), equals(3));
  });

  test('iterable<double> min', () {
    expect([21.0, 11.0, 31.0].min(), equals(11));
  });
}
