part of supercharged_dart;

/// Supercharged extensions on [Map].
extension MapSC<K, V> on Map<K, V> {
  /// Returns a new [Iterable<MapEntry<K,V>>] with all elements that satisfy the
  /// predicate [test].
  ///
  /// Example:
  /// ```dart
  /// {'a': 1, 'b': 2, 'c': 3}.filter((e) => e.key == 'a').toMap(); // {'a': 1}
  /// ```
  Iterable<MapEntry<K, V>> filter(bool Function(MapEntry<K, V>) test) {
    return entries.filter(test);
  }

  /// Returns the number of entries that matches the [test].
  ///
  /// If [test] is not specified it will count every entry.
  ///
  /// Example:
  /// ```dart
  /// [1, 2, 3, 13, 14, 15].count();             // 6
  /// [1, 2, 3, 13, 14, 15].count((n) => n > 9); // 3
  /// ```
  int count([bool Function(MapEntry<K, V> element)? test]) {
    return entries.count(test);
  }

  /// Converts this map into a JSON string.
  ///
  /// Use optional parameter [toEncodable] to convert types that are not a
  /// number, boolean, string, null, list or a map with string keys.
  ///
  /// See [jsonEncode].
  ///
  /// Example:
  /// ```dart
  /// {'a': 1, 'b': 2}.toJSON(); // '''{'a':1,'b':2}'''
  /// ```
  String toJSON({Object? Function(Object? nonEncodable)? toEncodable}) {
    return jsonEncode(this, toEncodable: toEncodable);
  }
}
