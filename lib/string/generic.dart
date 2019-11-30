extension StringGeneric on String {

  /// Repeats the string [n] times
  ///
  /// You can set an optional [separator] that is put in between each repetition
  ///
  /// Example:
  /// ```dart
  /// "hello".repeat(2)                // "hellohello"
  /// "cat".repeat(3, separator: ":")  // "cat:cat:cat"
  /// ```
  String repeat(int n, {String separator = ""}) {
    assert(n > 0, "n must be a positive value greater then 0");

    var repeatedString = "";

    for (int i=0; i < n; i++) {
      if (i > 0) {
        repeatedString += separator;
      }
      repeatedString += this;

    }

    return repeatedString;
  }

}