import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("datetime add", () {
    Duration nullDuration;
    expect(() => DateTime(2020, 1, 1) + nullDuration, throwsArgumentError);
    expect(DateTime(2020, 1, 1, 0, 0, 0) + 1.days,
        equals(DateTime(2020, 1, 2, 0, 0, 0)));
    expect(DateTime(2020, 1, 1, 0, 0, 0) + 10.minutes,
        equals(DateTime(2020, 1, 1, 0, 10, 0)));
  });

  test("datetime subtract", () {
    Duration nullDuration;
    expect(() => DateTime(2020, 1, 1) - nullDuration, throwsArgumentError);
    expect(DateTime(2020, 1, 1, 0, 0, 0) - 1.days,
        equals(DateTime(2019, 12, 31, 0, 0, 0)));
    expect(DateTime(2020, 1, 1, 0, 0, 0) - 10.minutes,
        equals(DateTime(2019, 12, 31, 23, 50, 0)));
  });
}
