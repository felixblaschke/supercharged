

extension IterableGroupBy<T, K, V> on Iterable<T> {
  /// Groups the elements of the list into a map by a key
  /// that is defined by a [keySelector] function.
  ///
  /// The optional [valueTransform] function can be used to
  /// remap your elements.
  ///
  /// Example:
  /// ```dart
  /// var map = [1, 2, 3, 97, 98, 99].groupBy((n) => n < 10 ? "smallNumbers" : "largeNumbers")
  /// // map = {"smallNumbers": [1, 2, 3], "largeNumbers": [97, 98, 99]}
  /// ```
  ///
  /// ```dart
  /// List<Person> persons = [
  ///     Person(name: "John", age: 21),
  ///     Person(name: "Carl", age: 18),
  ///     Person(name: "Peter", age: 56),
  ///     Person(name: "Sarah", age: 61)
  /// ];
  /// var map = persons.groupBy((p) => p.age < 40 ? "young" : "old",
  ///        valueTransform: (p) => p.name);
  /// // map = {"young": ["John", "Carl"], "old": ["Peter", "Sarah"]}
  /// ```
  groupBy(K Function(T element) keySelector,
      {V Function(T element) valueTransform}) {
    if (valueTransform == null) {
      valueTransform = (element) => element as V;
    }

    Map<K, List<V>> map = {};

    this.forEach((element) {
      var key = keySelector(element);

      if (!map.containsKey(key)) {
        map[key] = [];
      }
      map[key].add(valueTransform(element));
    });

    return map;
  }
}
