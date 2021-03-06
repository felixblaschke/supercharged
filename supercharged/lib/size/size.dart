part of supercharged;

/// Supercharged Flutter extensions on [Size].
extension SizeSCF on Size {
  /// Returns a [Tween<Size>] from [this] value to the given [end] value
  ///
  /// Example:
  /// ```dart
  /// Size(100, 100).tweenTo(Size.zero)
  /// // Tween(begin: Size(100, 100), end: Size.zero);
  /// ```
  SizeTween tweenTo(Size end) {
    return SizeTween(begin: this, end: end);
  }
}
