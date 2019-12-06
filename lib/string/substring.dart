extension StringSubstring on String {
  /// Searches the string for the first occurrence of a [pattern] and returns
  /// everything after that occurrence.
  ///
  /// Returns `""` if no occurrences were found.
  ///
  /// Example:
  /// ```dart
  /// "value=1".allAfter("=");                 // "1"
  /// "i like turtles".allAfter("like")        // " turtles"
  /// "i   like cats".allAfter(RegExp("\\s+")) // "like cats"
  /// ```
  String allAfter(Pattern pattern) {
    ArgumentError.checkNotNull(pattern, "pattern");
    var matchIterator = pattern.allMatches(this).iterator;

    if (matchIterator.moveNext()) {
      var match = matchIterator.current;
      var length = match.end - match.start;
      return this.substring(match.start + length);
    }
    return "";
  }

  /// Searches the string for the last occurrence of a [pattern] and returns
  /// everything before that occurrence.
  ///
  /// Returns `""` if no occurrences were found.
  ///
  /// Example:
  /// ```dart
  /// "value=1".allBefore("=");          // "value"
  /// "i like turtles".allBefore("like") // "i "
  /// ```
  String allBefore(Pattern pattern) {
    ArgumentError.checkNotNull(pattern, "pattern");
    var matchIterator = pattern.allMatches(this).iterator;

    Match match;
    while (matchIterator.moveNext()) {
      match = matchIterator.current;
    }

    if (match != null) {
      return this.substring(0, match.start);
    }
    return "";
  }

  /// Searches the string for the first occurrence of [startPattern] and the
  /// last occurrence of [endPattern]. It returns the string between that
  /// occurrences.
  ///
  /// Returns `""` if no occurrences were found.
  ///
  /// Example:
  /// ```dart
  /// "i like turtles".allBetween("i ", " turtles") // "like"
  /// ```
  String allBetween(Pattern startPattern, Pattern endPattern) {
    return this.allAfter(startPattern).allBefore(endPattern);
  }
}
