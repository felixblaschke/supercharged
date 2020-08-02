import 'package:test/test.dart';
import 'package:supercharged_dart/supercharged_dart.dart';

void main() {
  test('error throwIf', () {
    var n = 3;
    expect(() => throwIf(n > 0, () => ArgumentError()), throwsArgumentError);
    throwIf(n == null, () => ArgumentError()); // no error
  });

  test('error throwIfNot', () {
    var n = 3;

    expect(
        () => throwIfNot(n > 10, () => ArgumentError()), throwsArgumentError);
    throwIfNot(n == 3, () => ArgumentError()); // no error
  });
}
