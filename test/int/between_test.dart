import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("int between", () {
    expect(() => 1.between(null, 10), throwsArgumentError);
    expect(() => 1.between(10, null), throwsArgumentError);
    expect(1.between(1, 1), equals(true));
    expect(1.between(6, 6), equals(false));
    expect(1.between(1, 2), equals(true));
    expect(1.between(1.0, 2.0), equals(true));
    expect(1.between(3, 7), equals(false));
    expect(1.between(3.0, 7.0), equals(false));
    expect(1.between(-1, 1), equals(true));
    expect(1.between(10, -1), equals(true));
    expect(1000.between(500, 1500), equals(true));
    expect(1000000000.between(500000000, 1500000000), equals(true));
  });
}
