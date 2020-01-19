part of supercharged;

/// Supercharged extension on [DateTime] objects.
extension DateTime_ on DateTime {
  /// Returns a new [DateTime] object having added the given [duration].
  ///
  /// Example:
  /// ```dart
  /// DateTime(2020, 1, 1) + 2.days; // 3rd Jan 2020
  /// ```
  DateTime operator +(Duration duration) {
    ArgumentError.checkNotNull(duration, "duration");
    return add(duration);
  }

  /// Returns a new [DateTime] object having subtracted the given [duration].
  ///
  /// Example:
  /// ```dart
  /// DateTime(2020, 1, 1) - 2.days; // 30th Dec 2019
  /// ```
  DateTime operator -(Duration duration) {
    ArgumentError.checkNotNull(duration, "duration");
    return subtract(duration);
  }
}
