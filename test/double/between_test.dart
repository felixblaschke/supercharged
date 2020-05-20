import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("double between", () {
    final double b = 1.1;
    expect(() => b.between(null, 10.1), throwsArgumentError);
    expect(() => b.between(10.0, null), throwsArgumentError);
    expect(() => b.between(6.1, 6.1), throwsArgumentError);
    expect(b.between(1.1, 2.0), equals(true));
    expect(b.between(3.0, 7.2), equals(false));
    expect(b.between(-1.2, 1.2), equals(true));
    expect(b.between(10.3, -1.1), equals(true));
  });
}
