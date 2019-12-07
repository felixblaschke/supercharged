import '../iterable/iterable_object.dart';

extension MapSupercharged<K, V> on Map<K, V> {

  /// Returns a new [Iterable<MapEntry<K,V>>] with all elements that satisfy the
  /// predicate [test].
  ///
  /// Example:
  /// ```dart
  /// {"a": 1, "b": 2, "c": 3}.filter((e) => e.key == "a").toMap(); // {"a": 1}
  /// ```
  Iterable<MapEntry<K,V>> filter(bool Function(MapEntry<K,V>) test) {
    ArgumentError.checkNotNull(test, "test");
    return this.entries.filter(test);
  }

}
