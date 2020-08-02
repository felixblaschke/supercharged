import 'package:test/test.dart';
import 'package:supercharged_dart/supercharged_dart.dart';

void main() {
  test('iterable<double> sum', () {
    expect([2.0, 6.0, 4.0, 8.0].sum(), equals(20.0));
    expect([0.0].sum(), equals(0));
  });

  test('iterable<double> average', () {
    expect([2.0, 4.0, 6.0, 8.0].average(), equals(5.0));
  });

  test('iterable<double> max', () {
    expect([2.0, 3.0, 1.0].max(), equals(3));
  });

  test('iterable<double> min', () {
    expect([21.0, 11.0, 31.0].min(), equals(11));
  });
}
