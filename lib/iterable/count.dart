extension IterableCount<T> on Iterable<T> {
  /// Returns the number of elements that matches the [test].
  ///
  /// If not [test] is specified it will count every element.
  ///
  /// Returns number of matched elements as integer.
  ///
  /// Example
  /// ```dart
  /// [1, 2, 3, 13, 14, 15].count();             // 6
  /// [1, 2, 3, 13, 14, 15].count((n) => n > 9); // 3
  /// ```
  int count([bool Function(T element) test]) {
    if (test == null) {
      test = (_) => true;
    }

    if (this.length == 0) {
      return 0;
    }

    return this
        .map((element) => test(element) ? 1 : 0)
        .reduce((value, element) => value + element);
  }
}
