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

  /// Returns a [Duration] representing the current value as days.
  ///
  /// Example:
  /// ```dart
  /// 14.days; // Duration(days: 14);
  /// ```
  Duration get days {
    return Duration(milliseconds: (1000 * 60 * 60 * 24 * this).round());
  }

  /// Returns a [Tween<double>] from [this] value to the given [end] value
  ///
  /// Example:
  /// ```dart
  /// 100.0.tweenTo(200.0) // Tween(begin: 100.0, end: 200.0);
  /// ```
  Tween<double> tweenTo(double end) {
    return Tween<double>(begin: this, end: end);
  }

  /// Returns a [bool] if [this] value is between (including) the two
  /// numeric values [first] and [second].
  ///
  /// Example:
  /// ```dart
  /// 100.0.between(50, 150) // true;
  /// 100.0.between(50.0, 150.0) // true;
  /// 100.0.between(100.0, 100.0) // true;
  /// ```
  bool between(num first, num second) {
    ArgumentError.checkNotNull(first, "first");
    ArgumentError.checkNotNull(second, "second");
    final lower = min(first, second);
    final upper = max(first, second);
    return this >= lower && this <= upper;
  }
}
