part of supercharged;

/// Supercharged Flutter extensions on [double] numbers.
extension DoubleSCF on double {
  /// Returns a [Tween<double>] from [this] value to the given [end] value
  ///
  /// Example:
  /// ```dart
  /// 100.0.tweenTo(200.0) // Tween(begin: 100.0, end: 200.0);
  /// ```
  Tween<double> tweenTo(double end) {
    return Tween<double>(begin: this, end: end);
  }
}
