extension IterableFilter<T> on Iterable<T> {

  /// Returns a new [Iterable] with all elements that satisfy the
  /// predicate [test].
  ///
  /// Example:
  /// ```dart
  /// [1, 2, 3, 4].filter((n) => n < 3).toList(); // [1,2]
  /// ```
  ///
  /// This method is an alias for [where].
  Iterable<T> filter(bool Function(T element) test) {
    return this.where(test);
  }

}