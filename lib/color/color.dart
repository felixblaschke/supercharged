part of supercharged;

/// Supercharged extension on [Color] objects.
extension Color_ on Color {
  /// Returns a [ColorTween] from [this] color to the given [end] color
  ///
  /// Example:
  /// ```dart
  /// Colors.red.tweenTo(Colors.blue) // ColorTween(begin: Colors.red, end: Colors.blue);
  /// ```
  ColorTween tweenTo(Color end) {
    return ColorTween(begin: this, end: end);
  }
}
