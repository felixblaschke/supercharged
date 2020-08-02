import 'package:test/test.dart';
import 'package:supercharged_dart/supercharged_dart.dart';

void main() {
  test('string substring allAfter', () {
    expect(() => 'abc'.allAfter(null), throwsArgumentError);
    expect('abc'.allAfter('z'), equals(''));
    expect('hello:world'.allAfter(':'), equals('world'));
    expect('hello:world'.allAfter('-'), equals(''));
    expect('i   like the cat'.allAfter(RegExp('\\s+')),
        equals('like the cat')); // regex => find any whitespace sequence
    expect('a b a b a b'.allAfter('a'), equals(' b a b a b'));
  });

  test('string substring allBefore', () {
    expect(() => 'abc'.allBefore(null), throwsArgumentError);
    expect('abc'.allBefore('z'), equals(''));
    expect('hello:world'.allBefore(':'), equals('hello'));
    expect('this is great'.allBefore('great'), equals('this is '));
    expect('a b a b a b'.allBefore('a'), equals('a b a b '));
  });

  test('string substring allBetween', () {
    expect(() => 'abc'.allBetween(null, 'c'), throwsArgumentError);
    expect(() => 'abc'.allBetween('a', null), throwsArgumentError);
    expect(() => 'abc'.allBetween(null, null), throwsArgumentError);
    expect('i like turtles'.allBetween('i', 'turtles'), equals(' like '));
    expect('abc'.allBetween('a', 'c'), equals('b'));
    expect('abc'.allBetween('a', 'x'), equals(''));
    expect('abc'.allBetween('x', 'c'), equals(''));
  });
}
