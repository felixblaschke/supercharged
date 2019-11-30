extension StringParseNumber on String {

  /// Parses string and returns integer value.
  ///
  /// You can set an optional [radix] to specify the numeric base.
  /// If no [radix] is set, it will use the decimal system (10).
  ///
  /// Returns `null` if parsing fails.
  ///
  /// Example:
  /// ```dart
  /// "42".toDouble()      // 42
  /// "invalid".toDouble() // null
  int toInt({int radix = 10}) {
    try {
      return int.parse(this, radix: radix);
    } catch (error) {
      return null;
    }
  }

  /// Parses string and return double value.
  ///
  /// Returns `null` if parsing fails.
  ///
  /// Example:
  /// ```dart
  /// "2.1".toDouble()     // 2.1
  /// "invalid".toDouble() // null
  /// ```
  double toDouble() {
    try {
      return double.parse(this);
    } catch (error) {
      return null;
    }
  }


}