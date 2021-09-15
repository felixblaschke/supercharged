import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('string repeat', () {
    expect(''.repeat(1), equals(''));
    expect(''.repeat(2), equals(''));
    expect('a'.repeat(1), equals('a'));
    expect('a'.repeat(2), equals('aa'));
    expect('ab'.repeat(3), equals('ababab'));
    expect(() => 'a'.repeat(0), throwsArgumentError);
    expect(() => 'abab'.repeat(-2), throwsArgumentError);
    expect('hello'.repeat(3, separator: '-'), equals('hello-hello-hello'));
  });

  test('string reverse', () {
    expect('ab'.reverse, equals('ba'));
    expect('hallo'.reverse, equals('ollah'));
    expect('a'.reverse, equals('a'));
    expect(''.reverse, equals(''));
  });

  test('string toList', () {
    expect(''.toList(), equals(<int>[]));
    expect('hello'.toList(), equals(['h', 'e', 'l', 'l', 'o']));
  });
}
