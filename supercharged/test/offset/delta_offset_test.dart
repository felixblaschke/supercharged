import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test('Construct by leftBottom constructor', () {
    const offset = DeltaOffset.leftBottom(5, 5);
    expect(offset.dx, -5);
    expect(offset.dy, 5);
  });
  test('Construct by leftTop constructor', () {
    const offset = DeltaOffset.leftTop(5, 5);
    expect(offset.dx, -5);
    expect(offset.dy, -5);
  });
  test('Construct by rightBottom constructor', () {
    const offset = DeltaOffset.rightBottom(5, 5);
    expect(offset.dx, 5);
    expect(offset.dy, 5);
  });
  test('Construct by rightTop constructor', () {
    const offset = DeltaOffset.rightTop(5, 5);
    expect(offset.dx, 5);
    expect(offset.dy, -5);
  });
}
