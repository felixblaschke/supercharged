import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("duration", () {
    expect(isAboutTheSame(12.minutes.fromNow(), DateTime.now().add(12.minutes)),
        isTrue);
    expect(
        isAboutTheSame(12.minutes.ago(), DateTime.now().subtract(12.minutes)),
        isTrue);
  });

  test("duration divide", () {
    expect(1.minutes / 2.minutes, 0.5);
    expect(5.hours / 5.hours, 1.0);
    expect(12.seconds / 3.seconds, 4.0);
  });
}

bool isAboutTheSame(DateTime a, DateTime b) {
  return (a.millisecondsSinceEpoch - b.millisecondsSinceEpoch).abs() < 100;
}
