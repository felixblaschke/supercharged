part of supercharged;

/// Supercharged extensions on [Iterable<double>] like [List<double>] and [Set<double>].
extension IterableOfDouble_ on Iterable<double> {
  /// Returns the sum of all elements.
  ///
  /// Example:
  /// ```dart
  /// [2.0, 6.0, 4.0, 8.0].sum(); // 20.0
  /// ```
  double sum() {
    return this.sumByDouble((n) => n);
  }

  /// Returns the average value (arithmetic mean) of all elements.
  ///
  /// Example:
  /// ```dart
  /// [2.0, 4.0, 6.0, 8.0].average(); // 5.0
  /// ```
  double average() {
    return this.averageBy((n) => n);
  }

  /// Returns the largest value of all elements
  ///
  /// Example:
  /// ```dart
  /// [9.0, 42.0, 3.0].max(); // 42.0
  /// ```
  double max() {
    return this.maxBy((a, b) => a.compareTo(b));
  }

  /// Returns the lowest value of all elements
  ///
  /// Example:
  /// ```dart
  /// [17.0, 13.0, 92.0].min(); // 13.0
  /// ```
  double min() {
    return this.minBy((a, b) => a.compareTo(b));
  }
}
