part of supercharged_dart;

/// Supercharged extension on [DateTime] objects.
extension DateTimeSC on DateTime {
  /// Returns a new [DateTime] object having added the given [duration].
  ///
  /// Example:
  /// ```dart
  /// DateTime(2020, 1, 1) + 2.days; // 3rd Jan 2020
  /// ```
  DateTime operator +(Duration duration) {
    return add(duration);
  }

  /// Returns a new [DateTime] object having subtracted the given [duration].
  ///
  /// Example:
  /// ```dart
  /// DateTime(2020, 1, 1) - 2.days; // 30th Dec 2019
  /// ```
  DateTime operator -(Duration duration) {
    return subtract(duration);
  }

  /// Returns a lazy [Iterable<DateTime>] that contains all dates from [this]
  /// to [to] including the dates [this] and [to].
  ///
  /// The steps between the dates can be specified by setting [by] which defaults
  /// to one day.
  ///
  /// See also [until].
  ///
  /// Example:
  /// ```dart
  /// // 2020/01/01, 2020/01/02 ... 2021/01/01
  /// DateTime(2020).rangeTo(DateTime(2021));
  ///
  /// // 2020/01/01 00:00, 2020/01/01 01:00 ... 2020/02/01 00:00
  /// DateTime(2020, 1, 1).rangeTo(DateTime(2020, 1, 2), by: 1.hours);
  /// ```
  Iterable<DateTime> rangeTo(DateTime to,
      {Duration by = const Duration(days: 1)}) sync* {
    yield this;

    if (isAtSameMomentAs(to)) return;

    if (isBefore(to)) {
      var value = this + by;
      yield value;

      var count = 1;
      while (value.isBefore(to)) {
        value = this + (by * ++count);
        yield value;
      }
    } else {
      var value = this - by;
      yield value;

      var count = 1;
      while (value.isAfter(to)) {
        value = this - (by * ++count);
        yield value;
      }
    }
  }

  /// Returns a lazy [Iterable<DateTime>] that contains all dates from [this]
  /// to [to] including [this] but excluding [to].
  ///
  /// The steps between the dates can be specified by setting [by] which defaults
  /// to one day.
  ///
  /// See also [rangeTo].
  ///
  /// Example:
  /// ```dart
  /// // all days of 2020 (2020/01/01 ... 2020/12/31);
  /// DateTime(2020).until(DateTime(2021));
  ///
  /// // all full hours of 2020/01/01
  /// DateTime(2020, 1, 1).until(DateTime(2020, 1, 2), by: 1.hours);
  /// ```
  Iterable<DateTime> until(DateTime to,
      {Duration by = const Duration(days: 1)}) sync* {
    for (var date in rangeTo(to, by: by).withoutLast()) {
      yield date;
    }
  }

  /// Returns the [Duration] from 01.01.1970 (epoch/unix time) until this.
  ///
  /// Example:
  /// ```dart
  /// DateTime.now().duration(); // Duration from 01.01.1970 until now
  /// ```
  Duration duration() {
    return Duration(milliseconds: millisecondsSinceEpoch);
  }

  /// Returns the [bool] wheather the given date are inside iterval or not.
  ///
  /// Example:
  /// ```dart
  /// DateTime(2000, 1, 2).isBetween(DateTime(2000, 1, 1), DateTime(2000, 1, 31)); // true
  /// DateTime(2000, 1, 1).isBetween(DateTime(2000, 1, 1), DateTime(2000, 1, 1)); // true
  /// ```
  bool isBetween(DateTime from, DateTime to) {
    return (isAfter(from) && isBefore(to)) || this == from || this == to;
  }
}
