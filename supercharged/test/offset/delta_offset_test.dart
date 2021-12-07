import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  group('delta offset', () {
    group('constructor', () {
      test('named left', () {
        const offset = DeltaOffset.left(5);
        expect(offset.dx, -5);
        expect(offset.dy, 0);
      });
      test('named top', () {
        const offset = DeltaOffset.top(5);
        expect(offset.dx, 0);
        expect(offset.dy, -5);
      });
      test('named right', () {
        const offset = DeltaOffset.right(5);
        expect(offset.dx, 5);
        expect(offset.dy, 0);
      });
      test('named bottom', () {
        const offset = DeltaOffset.bottom(5);
        expect(offset.dx, 0);
        expect(offset.dy, 5);
      });
      test('named leftBottom', () {
        const offset = DeltaOffset.leftBottom(5, 5);
        expect(offset.dx, -5);
        expect(offset.dy, 5);
      });
      test('named leftTop', () {
        const offset = DeltaOffset.leftTop(5, 5);
        expect(offset.dx, -5);
        expect(offset.dy, -5);
      });
      test('named rightBottom', () {
        const offset = DeltaOffset.rightBottom(5, 5);
        expect(offset.dx, 5);
        expect(offset.dy, 5);
      });
      test('named rightTop', () {
        const offset = DeltaOffset.rightTop(5, 5);
        expect(offset.dx, 5);
        expect(offset.dy, -5);
      });
    });
  });
}
