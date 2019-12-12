part of supercharged;

extension IterableOfMapEntry_<K, V> on Iterable<MapEntry<K, V>> {
  /// Transform the `Iterable<MapEntry>` into a map
  ///
  /// Example:
  /// ```dart
  /// [MapEntry("a", 1), MapEntry("b", 2)].toMap(); // {"a": 1, "b": 2}
  /// ```
  Map<K, V> toMap() {
    var map = Map<K, V>();
    map.addEntries(this);
    return map;
  }
}
