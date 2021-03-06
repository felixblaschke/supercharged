import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('int between', () {
    expect(1.isBetween(1, 1), equals(true));
    expect(1.isBetween(6, 6), equals(false));
    expect(1.isBetween(1, 2), equals(true));
    expect(1.isBetween(1.0, 2.0), equals(true));
    expect(1.isBetween(3, 7), equals(false));
    expect(1.isBetween(3.0, 7.0), equals(false));
    expect(1.isBetween(-1, 1), equals(true));
    expect(1.isBetween(10, -1), equals(true));
    expect(1000.isBetween(500, 1500), equals(true));
    expect(1000000000.isBetween(500000000, 1500000000), equals(true));
  });
}
