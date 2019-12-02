extension StringGeneric on String {
  /// Repeats the string [n] times
  ///
  /// You can set an optional [separator] that is put in between each repetition
  ///
  /// Example:
  /// ```dart
  /// "hello".repeat(2);                // "hellohello"
  /// "cat".repeat(3, separator: ":");  // "cat:cat:cat"
  /// ```
  String repeat(int n, {String separator = ""}) {
    assert(n > 0, "n must be a positive value greater then 0");

    var repeatedString = "";

    for (int i = 0; i < n; i++) {
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
  /// "hello".reverse();   // "olleh"
  /// "flutter".reverse(); // "rettulf"
  /// ```
  String reverse() {
    if (this.isEmpty) {
      return "";
    }
    return this.toList().reversed.reduce((value, element) => value += element);
  }

  /// Transforms the string into a list of single characters
  ///
  /// Example:
  /// ```dart
  /// "hello".toList(); // ["h", "e", "l", "l", "o"]
  /// "".toList();      // [ ]
  /// ```
  List<String> toList() {
    return this.split("");
  }
}
