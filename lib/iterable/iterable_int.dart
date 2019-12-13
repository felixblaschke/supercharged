part of supercharged;

/// Supercharged extensions on [Iterable<int>] like [List<int>] and [Set<int>].
extension IterableOfInt_ on Iterable<int> {
  /// Returns the sum of all elements.
  ///
  /// Example:
  /// ```dart
  /// [2, 6, 4, 8].sum(); // 20
  /// ```
  int sum() {
    return this.sumBy((n) => n);
  }

  /// Returns the average value (arithmetic mean) of all elements.
  ///
  /// Example:
  /// ```dart
  /// [2, 4, 6, 8].average(); // 5.0
  /// ```
  double average() {
    return this.averageBy((n) => n.toDouble());
  }

  /// Returns the largest value of all elements
  ///
  /// Example:
  /// ```dart
  /// [9, 42, 3].max(); // 42
  /// ```
  int max() {
    return this.maxBy((a, b) => a.compareTo(b));
  }

  /// Returns the lowest value of all elements
  ///
  /// Example:
  /// ```dart
  /// [17, 13, 92].min(); // 13
  /// ```
  int min() {
    return this.minBy((a, b) => a.compareTo(b));
  }
}
