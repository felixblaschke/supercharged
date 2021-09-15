import 'package:collection/collection.dart';
import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('iterable elementAtOrElse', () {
    expect(<int>[].elementAtOrElse(-1, () => 42), equals(42));
    expect(<int>[].elementAtOrElse(0, () => 42), equals(42));
    expect([1, 2].elementAtOrElse(1, () => 42), equals(2));
    expect([1, 2].elementAtOrElse(2, () => 42), equals(42));
  });

  test('iterable elementAtOrNull', () {
    expect(<int>[].elementAtOrNull(-1), isNull);
    expect(<int>[].elementAtOrNull(0), isNull);
    expect([1, 2].elementAtOrNull(1), equals(2));
    expect([1, 2].elementAtOrNull(2), isNull);
  });

  test('iterable firstOrElse', () {
    expect([1].firstOrElse(() => 42), equals(1));
    expect([1, 2, 3].firstOrElse(() => 42), equals(1));
    expect(<int>[].firstOrElse(() => 42), equals(42));
  });

  test('iterable firstOrNull', () {
    // ignore: deprecated_member_use_from_same_package
    expect([1].firstOrNullSC(), equals(1));
    // ignore: deprecated_member_use_from_same_package
    expect([1, 2, 3].firstOrNullSC(), equals(1));
    // ignore: deprecated_member_use_from_same_package
    expect(<int>[].firstOrNullSC(), equals(null));
  });

  test('iterable firstOrNull (dart)', () {
    expect([1].firstOrNull, equals(1));
    expect([1, 2, 3].firstOrNull, equals(1));
    expect(<int>[].firstOrNull, equals(null));
  });

  test('iterable lastOrElse', () {
    expect([1].lastOrElse(() => 42), equals(1));
    expect([1, 2, 3].lastOrElse(() => 42), equals(3));
    expect(<int>[].lastOrElse(() => 42), equals(42));
  });

  test('iterable lastOrNull', () {
    // ignore: deprecated_member_use_from_same_package
    expect([1].lastOrNullSC(), equals(1));
    // ignore: deprecated_member_use_from_same_package
    expect([1, 2, 3].lastOrNullSC(), equals(3));
    // ignore: deprecated_member_use_from_same_package
    expect(<int>[].lastOrNullSC(), equals(null));
  });

  test('iterable lastOrNull (dart)', () {
    expect([1].lastOrNull, equals(1));
    expect([1, 2, 3].lastOrNull, equals(3));
    expect(<int>[].lastOrNull, equals(null));
  });
}
