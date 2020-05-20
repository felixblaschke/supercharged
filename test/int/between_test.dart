import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("int between", () {
    final int b = 1;
    expect(() => b.between(null, 10), throwsArgumentError);
    expect(() => b.between(10, null), throwsArgumentError);
    expect(() => b.between(10, 6), throwsArgumentError);
    expect(b.between(1, 2), equals(true));
    expect(b.between(3, 7), equals(false));
    expect(b.between(-1, 1), equals(true));
  });
}
