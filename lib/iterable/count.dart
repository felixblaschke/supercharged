extension IterableCount<T> on Iterable<T> {
  /// Returns the number of elements that matches the [predicate].
  ///
  /// If not [predicate] is specified it will count every element.
  ///
  /// Returns number of matched elements as integer.
  ///
  /// Example
  /// ```dart
  /// [1, 2, 3, 13, 14, 15].count();             // 6
  /// [1, 2, 3, 13, 14, 15].count((n) => n > 9); // 3
  /// ```
  int count([bool Function(T element) predicate]) {
    if (predicate == null) {
      predicate = (_) => true;
    }

    if (this.length == 0) {
      return 0;
    }

    return this
        .map((element) => predicate(element) ? 1 : 0)
        .reduce((value, element) => value + element);
  }
}
