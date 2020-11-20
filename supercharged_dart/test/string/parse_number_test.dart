import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('parse int', () {
    expect('1'.toInt(), equals(1));
    expect('123'.toInt(), equals(123));
    expect('-50'.toInt(), equals(-50));
    expect('abc'.toInt(), isNull);
    expect(''.toInt(), isNull);
    expect('f'.toInt(radix: 16), equals(15));
    expect('ff'.toInt(radix: 16), equals(255));
    expect('1100101'.toInt(radix: 2), equals(101));
  });

  test('parse double', () {
    expect('23.3'.toDouble(), equals(23.3));
    expect('0.987'.toDouble(), equals(0.987));
    expect('-1'.toDouble(), equals(-1));
    expect(''.toDouble(), isNull);
    expect('xxx'.toDouble(), isNull);
  });
}
