import 'package:test/test.dart';
import 'package:supercharged_dart/supercharged_dart.dart';

void main() {
  test('iterable lastIndex', () {
    expect([1].lastIndex, equals(0));
    expect([1, 2, 3].lastIndex, equals(2));
    expect([].lastIndex, isNull);
  });
}
