import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('double between', () {
    expect(1.1.isBetween(1.1, 1.1), equals(true));
    expect(1.1.isBetween(6.1, 6.1), equals(false));
    expect(1.1.isBetween(1.1, 2.0), equals(true));
    expect(1.1.isBetween(1, 2), equals(true));
    expect(1.1.isBetween(3.0, 7.2), equals(false));
    expect(1.1.isBetween(3, 7), equals(false));
    expect(1.1.isBetween(-1.2, 1.2), equals(true));
    expect(1.1.isBetween(10.3, -1.1), equals(true));
    expect(1000.0.isBetween(500.0, 1500.0), equals(true));
  });
}
