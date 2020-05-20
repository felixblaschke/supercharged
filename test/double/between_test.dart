import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("double between", () {
    expect(() => 1.1.between(null, 10.1), throwsArgumentError);
    expect(() => 1.1.between(10.0, null), throwsArgumentError);
    expect(1.1.between(1.1, 1.1), equals(true));
    expect(1.1.between(6.1, 6.1), equals(false));
    expect(1.1.between(1.1, 2.0), equals(true));
    expect(1.1.between(1, 2), equals(true));
    expect(1.1.between(3.0, 7.2), equals(false));
    expect(1.1.between(3, 7), equals(false));
    expect(1.1.between(-1.2, 1.2), equals(true));
    expect(1.1.between(10.3, -1.1), equals(true));
    expect(1000.0.between(500.0, 1500.0), equals(true));
  });
}
