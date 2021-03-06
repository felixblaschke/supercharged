import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('double duration', () {
    expect(1.5.seconds, equals(Duration(milliseconds: 1500)));
    expect(0.5.minutes, equals(Duration(seconds: 30)));
    expect(1.5.hours, equals(Duration(hours: 1, minutes: 30)));
    expect(2.5.days, equals(Duration(days: 2, hours: 12)));
  });
}
