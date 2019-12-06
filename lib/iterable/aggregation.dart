extension IterableAggregation<T> on Iterable<T> {
  /// Returns the sum of all values produced by the [selector] function that is
  /// applied to each element.
  ///
  /// Example:
  /// ```dart
  /// [2, 4, 6].sumBy((n) => n);                   // 12
  /// ["hello", "flutter"].sumBy((s) => s.length); // 12
  /// ```
  int sumBy(int Function(T) selector) {
    ArgumentError.checkNotNull(selector, "selector");
    return this.fold(0, (value, element) => value + selector(element));
  }

  /// Returns the sum of all values produced by the [selector] function that is
  /// applied to each element.
  ///
  /// Example:
  /// ```dart
  /// [1.5, 2.5].sumByDouble((d) => 0.5 * d); // 2.0
  /// ```
  double sumByDouble(double Function(T) selector) {
    ArgumentError.checkNotNull(selector, "selector");
    return this.fold(0.0, (value, element) => value + selector(element));
  }

  /// Returns the average value (arithmetic mean) of all values produces by the
  /// [selector] function that is applied to each element.
  ///
  /// Example:
  /// ```dart
  /// [1, 2, 3].averageBy((n) => n.toDouble);                 // 2.0
  /// ["cat", "horse"].averageBy((s) => s.length.toDouble()); // 4.0
  /// ```
  double averageBy(double Function(T) selector) {
    ArgumentError.checkNotNull(selector, "selector");
    if (this.length == 0) {
      return null;
    }

    return this.sumByDouble(selector) / this.length;
  }
}
