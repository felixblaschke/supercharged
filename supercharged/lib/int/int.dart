part of supercharged;

/// Supercharged Flutter extensions on [int] numbers.
extension IntSCF on int {
  /// Returns a [IntTween] from [this] value to the given [end] value
  ///
  /// Example:
  /// ```dart
  /// 100.tweenTo(200) // Tween(begin: 100, end: 200);
  /// ```
  IntTween tweenTo(int end) {
    return IntTween(begin: this, end: end);
  }
}
