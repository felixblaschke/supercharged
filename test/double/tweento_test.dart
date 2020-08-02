import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test('double tweenTo', () {
    final tween = 1.0.tweenTo(200.0);
    expect(tween.runtimeType.toString(), 'Tween<double>');
    expect(tween.begin, 1.0);
    expect(tween.end, 200.0);
  });
}
