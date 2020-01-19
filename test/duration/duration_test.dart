import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("duration", () {
    expect(isAboutTheSame(12.minutes.fromNow(), DateTime.now().add(12.minutes)), isTrue);
    expect(isAboutTheSame(12.minutes.ago(), DateTime.now().subtract(12.minutes)), isTrue);
  });
}

bool isAboutTheSame(DateTime a, DateTime b) {
  return (a.millisecondsSinceEpoch - b.millisecondsSinceEpoch).abs() < 100;
}
