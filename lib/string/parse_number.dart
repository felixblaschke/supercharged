extension StringParseNumber on String {

  /// Parses string as integer value.
  ///
  /// You can set an optional [radix] to specify the numeric base.
  /// If no [radix] is set, it will use the decimal system (10).
  ///
  /// See also [int.parse].
  int toInt({int radix = 10}) {
    return int.parse(this, radix: radix);
  }


}