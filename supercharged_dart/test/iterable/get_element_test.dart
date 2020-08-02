import 'package:test/test.dart';
import 'package:supercharged_dart/supercharged_dart.dart';

void main() {
  test('iterable elementAtOrElse', () {
    expect(() => [].elementAtOrElse(-1, () => 0), throwsArgumentError);
    expect(() => [].elementAtOrElse(0, null), throwsArgumentError);
    expect([].elementAtOrElse(0, () => 42), equals(42));
    expect([1, 2].elementAtOrElse(1, () => 42), equals(2));
    expect([1, 2].elementAtOrElse(2, () => 42), equals(42));
  });

  test('iterable elementAtOrNull', () {
    expect(() => [].elementAtOrNull(-1), throwsArgumentError);
    expect([].elementAtOrNull(0), isNull);
    expect([1, 2].elementAtOrNull(1), equals(2));
    expect([1, 2].elementAtOrNull(2), isNull);
  });

  test('iterable firstOrElse', () {
    expect(() => [].firstOrElse(null), throwsArgumentError);
    expect([1].firstOrElse(() => 42), equals(1));
    expect([1, 2, 3].firstOrElse(() => 42), equals(1));
    expect([].firstOrElse(() => 42), equals(42));
  });

  test('iterable firstOrNull', () {
    expect([1].firstOrNull(), equals(1));
    expect([1, 2, 3].firstOrNull(), equals(1));
    expect([].firstOrNull(), equals(null));
  });

  test('iterable lastOrElse', () {
    expect(() => [].lastOrElse(null), throwsArgumentError);
    expect([1].lastOrElse(() => 42), equals(1));
    expect([1, 2, 3].lastOrElse(() => 42), equals(3));
    expect([].lastOrElse(() => 42), equals(42));
  });

  test('iterable lastOrNull', () {
    expect([1].lastOrNull(), equals(1));
    expect([1, 2, 3].lastOrNull(), equals(3));
    expect([].lastOrNull(), equals(null));
  });
}
