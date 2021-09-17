part of supercharged_dart;

/// Supercharged extensions on [String].
extension StringSC on String {
  /// Repeats the string [n] times
  ///
  /// You can set an optional [separator] that is put in between each repetition
  ///
  /// Example: <!-- string/repeat -->
  /// ```dart
  /// 'hello'.repeat(3); // 'hellohellohello'
  /// 'cat'.repeat(3, separator: ':'); // 'cat:cat:cat'
  /// ```
  String repeat(int n, {String separator = ''}) {
    throwIfNot(n > 0,
        () => ArgumentError('n must be a positive value greater then 0'));

    var repeatedString = '';

    for (var i = 0; i < n; i++) {
      if (i > 0) {
        repeatedString += separator;
      }
      repeatedString += this;
    }

    return repeatedString;
  }

  /// Reverses the string
  ///
  /// Example: <!-- string/reverse -->
  /// ```dart
  /// 'hello'.reverse; // 'olleh'
  /// 'flutter'.reverse; // 'rettulf'
  /// ```
  String get reverse {
    if (isEmpty) {
      return '';
    }
    return chars.reversed.reduce((value, element) => value += element);
  }

  /// Transforms the string into a list of single characters
  ///
  /// Example: <string/chars>
  List<String> get chars => split('');

  /// Searches the string for the first occurrence of a [pattern] and returns
  /// everything after that occurrence.
  ///
  /// Returns `''` if no occurrences were found.
  ///
  /// Example: <!-- string/allafter -->
  /// ```dart
  /// 'value=1'.allAfter('='); // '1'
  /// 'i like turtles'.allAfter('like'); // ' turtles'
  /// 'i   like cats'.allAfter(RegExp('\\s+')); // 'like cats'
  /// ```
  String allAfter(Pattern pattern) {
    var matchIterator = pattern.allMatches(this).iterator;

    if (matchIterator.moveNext()) {
      var match = matchIterator.current;
      var length = match.end - match.start;
      return substring(match.start + length);
    }
    return '';
  }

  /// Searches the string for the last occurrence of a [pattern] and returns
  /// everything before that occurrence.
  ///
  /// Returns `''` if no occurrences were found.
  ///
  /// Example: <!-- string/allbefore -->
  /// ```dart
  /// 'value=1'.allBefore('='); // 'value'
  /// 'i like turtles'.allBefore('like'); // 'i '
  /// ```
  String allBefore(Pattern pattern) {
    var matchIterator = pattern.allMatches(this).iterator;

    Match? match;
    while (matchIterator.moveNext()) {
      match = matchIterator.current;
    }

    if (match != null) {
      return substring(0, match.start);
    }
    return '';
  }

  /// Searches the string for the first occurrence of [startPattern] and the
  /// last occurrence of [endPattern]. It returns the string between that
  /// occurrences.
  ///
  /// Returns `''` if no occurrences were found.
  ///
  /// Example: <!-- string/allbetween -->
  /// ```dart
  /// 'i like turtles'.allBetween('i ', ' turtles'); // 'like'
  /// ```
  String allBetween(Pattern startPattern, Pattern endPattern) {
    return allAfter(startPattern).allBefore(endPattern);
  }

  /// Parses string and returns integer value.
  /// Returns `null` if parsing fails.
  ///
  /// Example: <!-- string/asint -->
  /// ```dart
  /// '42'.intOrNull; // 42
  /// 'invalid'.intOrNull; // null
  /// ```
  int? get intOrNull {
    try {
      return int.parse(this, radix: 10);
    } catch (error) {
      return null;
    }
  }

  /// Parses string and returns double value.
  /// Returns `null` if parsing fails.
  ///
  /// Example: <!-- string/asdouble -->
  /// ```dart
  /// '2.1'.doubleOrNull; // 2.1
  /// 'invalid'.doubleOrNull; // null
  /// ```
  double? get doubleOrNull {
    try {
      return double.parse(this);
    } catch (error) {
      return null;
    }
  }

  /// Returns `true` if this consists solely of whitespace characters.
  ///
  /// Example: <!-- string/isblank -->
  /// ```dart
  /// '  '.isBlank; // true
  /// ' hi '.isBlank; // false
  /// ```
  bool get isBlank => isNotEmpty && trim().isEmpty;
}
