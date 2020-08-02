part of supercharged_dart;

/// Supercharged extensions on [Iterable<int>] like [List<int>] and [Set<int>].
extension IterableOfIntSC on Iterable<int> {
  /// Returns the sum of all elements.
  ///
  /// Example:
  /// ```dart
  /// [2, 6, 4, 8].sum(); // 20
  /// ```
  int sum() {
    return sumBy((n) => n);
  }

  /// Returns the average value (arithmetic mean) of all elements.
  ///
  /// Example:
  /// ```dart
  /// [2, 4, 6, 8].average(); // 5.0
  /// ```
  double average() {
    return averageBy((n) => n);
  }

  /// Returns the largest value of all elements
  ///
  /// Example:
  /// ```dart
  /// [9, 42, 3].max(); // 42
  /// ```
  int max() {
    return maxBy((a, b) => a.compareTo(b));
  }

  /// Returns the lowest value of all elements
  ///
  /// Example:
  /// ```dart
  /// [17, 13, 92].min(); // 13
  /// ```
  int min() {
    return minBy((a, b) => a.compareTo(b));
  }
}
