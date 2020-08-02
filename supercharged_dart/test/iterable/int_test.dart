import 'package:test/test.dart';
import 'package:supercharged_dart/supercharged_dart.dart';

void main() {
  test('iterable<int> sum', () {
    expect([2, 6, 4, 8].sum(), equals(20));
    expect([0].sum(), equals(0));
  });

  test('iterable<int> average', () {
    expect([2, 4, 6, 8].average(), equals(5.0));
  });

  test('iterable<int> max', () {
    expect([2, 3, 1].max(), equals(3));
  });

  test('iterable<int> min', () {
    expect([21, 11, 31].min(), equals(11));
  });
}
