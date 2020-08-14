part of supercharged_dart;

/// Supercharged extensions on [Duration].
extension DurationSC on Duration {
  /// Returns a [DateTime] object with the current date and time having this
  /// duration added.
  ///
  /// Example:
  /// ```dart
  /// 10.minutes.fromNow(); // DateTime in 10 minutes from now
  /// ```
  DateTime fromNow() => DateTime.now() + this;

  /// Returns a [DateTime] object with the current date and time having this
  /// duration subtracted.
  ///
  /// Example:
  /// ```dart
  /// 10.minutes.ago(); // DateTime 10 minutes ago from now
  /// ```
  DateTime ago() => DateTime.now() - this;

  /// Divides [this] by [otherDuration] and returns a fraction.
  ///
  /// Example:
  /// ```dart
  /// 1.minutes() / 2.minutes(); // 0.5
  /// ```
  double operator /(Duration otherDuration) {
    return inMicroseconds.toDouble() / otherDuration.inMicroseconds.toDouble();
  }

  /// Returns a [Future] that completes after [this] duration.
  ///
  /// Example:
  /// ```dart
  /// await 5.seconds.delay;
  /// print('5 seconds gone'); // printed after 5 seconds
  /// ```
  Future<void> get delay => Future.delayed(this);
}
