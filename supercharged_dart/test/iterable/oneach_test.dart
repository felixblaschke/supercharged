import 'package:test/test.dart';
import 'package:supercharged_dart/supercharged_dart.dart';

void main() {
  test('iterable onEach', () {
    var onEachNumber = 0;
    var sum = [1, 2, 3].onEach((n) => onEachNumber += n).sum();
    expect(sum, equals(6));
    expect(onEachNumber, equals(6));
    expect(() => [1, 2, 3].onEach(null), throwsArgumentError);
  });

  test('iterable onEachIndexed', () {
    var onEachNumber = 0;
    var sum = [1, 2, 3].onEachIndexed((n, index) => onEachNumber += n + index).sum();
    expect(sum, equals(6));
    expect(onEachNumber, equals(9));
    expect(() => [1, 2, 3].onEachIndexed(null), throwsArgumentError);
  });
}
