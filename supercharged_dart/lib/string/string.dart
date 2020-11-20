part of supercharged_dart;

/// Supercharged extensions on [String].
extension StringSC on String {
  /// Repeats the string [n] times
  ///
  /// You can set an optional [separator] that is put in between each repetition
  ///
  /// Example:
  /// ```dart
  /// 'hello'.repeat(2);                // 'hellohello'
  /// 'cat'.repeat(3, separator: ':');  // 'cat:cat:cat'
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
  /// Example:
  /// ```dart
  /// 'hello'.reverse;   // 'olleh'
  /// 'flutter'.reverse; // 'rettulf'
  /// ```
  String get reverse {
    if (isEmpty) {
      return '';
    }
    return toList().reversed.reduce((value, element) => value += element);
  }

  /// Transforms the string into a list of single characters
  ///
  /// Example:
  /// ```dart
  /// 'hello'.toList(); // ['h', 'e', 'l', 'l', 'o']
  /// ''.toList();      // [ ]
  /// ```
  List<String> toList() {
    return split('');
  }

  /// De-string-ifies a JSON string back into a JSON object
  ///
  /// You can optionally set a [reviver] function to deserialize non-basic types.
  /// See [jsonDecode].
  ///
  /// Example:
  /// ```dart
  /// jsonString.parseJSON();
  /// '[1, 2, 3]'.parseJSON(); // [1, 2, 3]
  /// ```
  dynamic parseJSON({Object? Function(Object? key, Object? value)? reviver}) {
    return jsonDecode(this, reviver: reviver);
  }

  /// Searches the string for the first occurrence of a [pattern] and returns
  /// everything after that occurrence.
  ///
  /// Returns `''` if no occurrences were found.
  ///
  /// Example:
  /// ```dart
  /// 'value=1'.allAfter('=');                 // '1'
  /// 'i like turtles'.allAfter('like')        // ' turtles'
  /// 'i   like cats'.allAfter(RegExp('\\s+')) // 'like cats'
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
  /// Example:
  /// ```dart
  /// 'value=1'.allBefore('=');          // 'value'
  /// 'i like turtles'.allBefore('like') // 'i '
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
  /// Example:
  /// ```dart
  /// 'i like turtles'.allBetween('i ', ' turtles') // 'like'
  /// ```
  String allBetween(Pattern startPattern, Pattern endPattern) {
    return allAfter(startPattern).allBefore(endPattern);
  }

  /// Parses string and returns integer value.
  ///
  /// You can set an optional [radix] to specify the numeric base.
  /// If no [radix] is set, it will use the decimal system (10).
  ///
  /// Returns `null` if parsing fails.
  ///
  /// Example:
  /// ```dart
  /// '42'.toDouble();      // 42
  /// 'invalid'.toDouble(); // null
  int? toInt({int radix = 10}) {
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
  /// '2.1'.toDouble();     // 2.1
  /// 'invalid'.toDouble(); // null
  /// ```
  double? toDouble() {
    try {
      return double.parse(this);
    } catch (error) {
      return null;
    }
  }
}
