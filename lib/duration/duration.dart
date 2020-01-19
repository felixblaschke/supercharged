part of supercharged;

extension Duration_ on Duration {
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
}