part of supercharged_dart;

/// Supercharged extensions on [Iterable<double>] like [List<double>] and [Set<double>].
extension IterableOfDoubleSC on Iterable<double> {
  /// Deprecation hint: Read the
  /// [migration guide](https://github.com/felixblaschke/supercharged/blob/master/migration_v2.md)
  /// for more details on migrating.
  ///
  /// Returns the sum of all elements.
  ///
  /// Example:
  /// ```dart
  /// [2.0, 6.0, 4.0, 8.0].sum(); // 20.0
  /// ```
  @Deprecated(
      'Dart natively supports this function. Read DartDoc comment for more info.')
  double sumSC() {
    return sumByDouble((n) => n);
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
  /// [2.0, 4.0, 6.0, 8.0].average(); // 5.0
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
  /// [9.0, 42.0, 3.0].max(); // 42.0
  /// ```
  double? max() {
    return maxBy((a, b) => a.compareTo(b));
  }

  /// Returns the lowest value of all elements
  /// If collection is empty this returns `null`.
  ///
  /// Example:
  /// ```dart
  /// [17.0, 13.0, 92.0].min(); // 13.0
  /// ```
  double? min() {
    return minBy((a, b) => a.compareTo(b));
  }
}
