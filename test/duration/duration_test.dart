import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("duration", () {
    expect(12.minutes.fromNow(), equals(DateTime.now().add(12.minutes)));
    expect(12.minutes.ago(), equals(DateTime.now().subtract(12.minutes)));
  });
}
