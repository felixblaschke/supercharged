part of supercharged_dart;

/// Supercharged extensions on [Iterable<int>] like [List<int>] and [Set<int>].
extension IterableOfIntSC on Iterable<int> {
  /// Deprecation hint: Read the
  /// [migration guide](https://github.com/felixblaschke/supercharged/blob/master/migration_v2.md)
  /// for more details on migrating.
  ///
  /// Returns the sum of all elements.
  ///
  /// Example:
  /// ```dart
  /// [2, 6, 4, 8].sum(); // 20
  /// ```
  @Deprecated(
      'Dart natively supports this function. Read DartDoc comment for more info.')
  int sumSC() {
    return sumBy((n) => n);
  }

  /// Deprecation hint: Read the
  /// [migration guide](https://github.com/felixblaschke/supercharged/blob/master/migration_v2.md)
  /// for more details on migrating.
  ///
  /// Returns the average value (arithmetic mean) of all elements.
  /// If collection is empty this returns `null`.
  ///
  /// Example:
  /// ```dart
  /// [2, 4, 6, 8].average(); // 5.0
  /// ```
  @Deprecated(
      'Dart natively supports this function. Read DartDoc comment for more info.')
  double? averageSC() {
    return averageBy((n) => n);
  }

  /// Returns the largest value of all elements
  /// If collection is empty this returns `null`.
  ///
  /// Example:
  /// ```dart
  /// [9, 42, 3].max(); // 42
  /// ```
  int? max() {
    return maxBy((a, b) => a.compareTo(b));
  }

  /// Returns the lowest value of all elements
  /// If collection is empty this returns `null`.
  ///
  /// Example:
  /// ```dart
  /// [17, 13, 92].min(); // 13
  /// ```
  int? min() {
    return minBy((a, b) => a.compareTo(b));
  }
}
