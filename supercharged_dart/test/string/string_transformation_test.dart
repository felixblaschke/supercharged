import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('intOrNull', () {
    expect('1'.intOrNull, equals(1));
    expect('123'.intOrNull, equals(123));
    expect('-50'.intOrNull, equals(-50));
    expect('abc'.intOrNull, isNull);
    expect(''.intOrNull, isNull);
  });

  test('doubleOrNull', () {
    expect('23.3'.doubleOrNull, equals(23.3));
    expect('0.987'.doubleOrNull, equals(0.987));
    expect('-1'.doubleOrNull, equals(-1));
    expect(''.doubleOrNull, isNull);
    expect('xxx'.doubleOrNull, isNull);
  });

  test('isBlank', () {
    expect(' '.isBlank, equals(true));
    expect('    '.isBlank, equals(true));
    expect(' '.isBlank, equals(true));
    expect(''.isBlank, equals(false));
    expect('a'.isBlank, equals(false));
    expect(' a '.isBlank, equals(false));
  });
}
