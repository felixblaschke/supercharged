import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test('int tweenTo', () {
    final tween = 1.tweenTo(200);
    expect(tween.runtimeType.toString(), 'IntTween');
    expect(tween.begin, 1);
    expect(tween.end, 200);
  });
}
