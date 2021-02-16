part of supercharged;

/// Supercharged Flutter extensions on [Rect].
extension RectSCF on Rect {
  /// Returns a [Tween<Rect>] from [this] value to the given [end] value
  ///
  /// Example:
  /// ```dart
  /// Rect.fromLTWH(50, 75, 150, 150).tweenTo(Rect.zero)
  /// // Tween(begin: Rect.fromLTWH(50, 75, 150, 150), end: Rect.zero);
  /// ```
  RectTween tweenTo(Rect end) {
    return RectTween(begin: this, end: end);
  }
}
