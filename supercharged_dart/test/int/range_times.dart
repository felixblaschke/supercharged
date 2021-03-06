import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('int times 0', () {
    var i = 0;
    0.times(() => i++);
    expect(i, equals(0));
  });

  test('int times 1', () {
    var i = 0;
    1.times(() => i++);
    expect(i, equals(1));
  });

  test('int times 5', () {
    var i = 0;
    5.times(() => i++);
    expect(i, equals(5));
  });

  test('int times 100', () {
    var i = 0;
    100.times(() => i++);
    expect(i, equals(100));
  });
}
