part of supercharged_dart;

/// Supercharged extensions on [Iterable<MapEntry>] like [List<MapEntry>] and [Set<MapEntry>].
extension IterableOfMapEntrySC<K, V> on Iterable<MapEntry<K, V>> {
  /// Transform the `Iterable<MapEntry>` into a map
  ///
  /// Example:
  /// ```dart
  /// [MapEntry("a", 1), MapEntry("b", 2)].toMap(); // {"a": 1, "b": 2}
  /// ```
  Map<K, V> toMap() {
    return Map.fromEntries(this);
  }
}
