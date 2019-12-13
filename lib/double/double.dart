part of supercharged;

/// Supercharged extensions on [double] numbers.
extension Double_ on double {
  /// Returns a [Duration] representing the current value as seconds.
  ///
  /// Example:
  /// ```dart
  /// 30.seconds; // Duration(seconds: 1000);
  /// ```
  Duration get seconds {
    return Duration(microseconds: (1000000 * this).round());
  }

  /// Returns a [Duration] representing the current value as minutes.
  ///
  /// Example:
  /// ```dart
  /// 15.minutes; // Duration(minutes: 15);
  /// ```
  Duration get minutes {
    return Duration(milliseconds: (1000 * 60 * this).round());
  }

  /// Returns a [Duration] representing the current value as hours.
  ///
  /// Example:
  /// ```dart
  /// 24.hours; // Duration(hours: 24);
  /// ```
  Duration get hours {
    return Duration(milliseconds: (1000 * 60 * 60 * this).round());
  }

  /// Returns a [Duration] representing the current value as hours.
  ///
  /// Example:
  /// ```dart
  /// 14.days; // Duration(days: 14);
  /// ```
  Duration get days {
    return Duration(milliseconds: (1000 * 60 * 60 * 24 * this).round());
  }
}
