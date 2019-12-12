part of supercharged;

extension MapSupercharged<K, V> on Map<K, V> {
  /// Returns a new [Iterable<MapEntry<K,V>>] with all elements that satisfy the
  /// predicate [test].
  ///
  /// Example:
  /// ```dart
  /// {"a": 1, "b": 2, "c": 3}.filter((e) => e.key == "a").toMap(); // {"a": 1}
  /// ```
  Iterable<MapEntry<K, V>> filter(bool Function(MapEntry<K, V>) test) {
    ArgumentError.checkNotNull(test, "test");
    return this.entries.filter(test);
  }

  /// Returns the number of entries that matches the [test].
  ///
  /// If not [test] is specified it will count every entries.
  ///
  /// Example:
  /// ```dart
  /// [1, 2, 3, 13, 14, 15].count();             // 6
  /// [1, 2, 3, 13, 14, 15].count((n) => n > 9); // 3
  /// ```
  int count([bool Function(MapEntry<K, V> element) test]) {
    return this.entries.count(test);
  }
}
