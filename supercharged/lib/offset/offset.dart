part of supercharged;

/// Supercharged Flutter extensions on [Offset].
extension OffsetSCF on Offset {
  /// Returns a [Tween<Offset>] from [this] value to the given [end] value
  ///
  /// Example:
  /// ```dart
  /// Offset(100, 100).tweenTo(Offset.zero) // Tween(begin: Offset(100, 100), end: Offset.zero);
  /// ```
  Tween<Offset> tweenTo(Offset end) {
    return Tween<Offset>(begin: this, end: end);
  }
}
