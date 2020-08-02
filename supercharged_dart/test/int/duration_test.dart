import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test('int duration', () {
    expect(20.microseconds, equals(Duration(microseconds: 20)));
    expect(20.milliseconds, equals(Duration(milliseconds: 20)));
    expect(20.seconds, equals(Duration(seconds: 20)));
    expect(20.minutes, equals(Duration(minutes: 20)));
    expect(20.hours, equals(Duration(hours: 20)));
    expect(20.days, equals(Duration(days: 20)));
  });
}
