part of supercharged;

/// Supercharged extensions on [Iterables] like [List] and [Set].
extension Iterable_<T, K, V> on Iterable<T> {
  /// Returns the sum of all values produced by the [selector] function that is
  /// applied to each element.
  ///
  /// Example:
  /// ```dart
  /// [2, 4, 6].sumBy((n) => n);                   // 12
  /// ["hello", "flutter"].sumBy((s) => s.length); // 12
  /// ```
  int sumBy(int Function(T) selector) {
    ArgumentError.checkNotNull(selector, "selector");
    return this.fold(0, (value, element) => value + selector(element));
  }

  /// Returns the sum of all values produced by the [selector] function that is
  /// applied to each element.
  ///
  /// Example:
  /// ```dart
  /// [1.5, 2.5].sumByDouble((d) => 0.5 * d); // 2.0
  /// ```
  double sumByDouble(num Function(T) selector) {
    ArgumentError.checkNotNull(selector, "selector");
    return this
        .fold(0.0, (value, element) => value + selector(element).toDouble());
  }

  /// Returns the average value (arithmetic mean) of all values produces by the
  /// [selector] function that is applied to each element.
  ///
  /// Example:
  /// ```dart
  /// [1, 2, 3].averageBy((n) => n);               // 2.0
  /// ["cat", "horse"].averageBy((s) => s.length); // 4.0
  /// ```
  double averageBy(num Function(T) selector) {
    ArgumentError.checkNotNull(selector, "selector");
    if (this.length == 0) {
      return null;
    }

    return this.sumByDouble(selector) / this.length;
  }

  /// Splits the elements into lists of the specified [size].
  ///
  /// Example:
  /// ```dart
  /// [1, 2, 3, 4, 5, 6].chunked(2); // [[1, 2], [3, 4], [5, 6]]
  /// [1, 2, 3].chunked(2);          // [[1, 2], [3]]
  /// ```
  Iterable<List<T>> chunked(int size) {
    ArgumentError.checkNotNull(size, "chunkSize");
    if (size <= 0) {
      throw ArgumentError("chunkSize must be positive integer greater than 0.");
    }

    if (this.length == 0) {
      return Iterable.empty();
    }

    var countOfChunks = (this.length / size.toDouble()).ceil();

    return Iterable.generate(countOfChunks, (int index) {
      return this.skip(index * size).take(size).toList();
    });
  }

  /// Returns the number of elements that matches the [test].
  ///
  /// If not [test] is specified it will count every element.
  ///
  /// Example:
  /// ```dart
  /// [1, 2, 3, 13, 14, 15].count();             // 6
  /// [1, 2, 3, 13, 14, 15].count((n) => n > 9); // 3
  /// ```
  int count([bool Function(T element) test]) {
    if (test == null) {
      test = (_) => true;
    }

    if (this.length == 0) {
      return 0;
    }

    return this
        .map((element) => test(element) ? 1 : 0)
        .reduce((value, element) => value + element);
  }

  /// Returns a new [Iterable] with all elements that satisfy the
  /// predicate [test].
  ///
  /// Example:
  /// ```dart
  /// [1, 2, 3, 4].filter((n) => n < 3).toList(); // [1,2]
  /// ```
  ///
  /// This method is an alias for [where].
  Iterable<T> filter(bool Function(T element) test) {
    ArgumentError.checkNotNull(test, "test");
    return this.where(test);
  }

  /// Applies the function [funcIndexValue] to each element of this collection
  /// in iteration order. The function receives the element index as first
  /// parameter [index] and the [element] as the second parameter.
  ///
  /// Example:
  /// ```dart
  /// ["a", "b", "c"].forEachIndex((index, value) {
  ///   print("$index : $value"); // "0 : a", "1: b", "2: c"
  /// });
  /// ```
  forEachIndexed(void Function(int index, T element) funcIndexValue) {
    ArgumentError.checkNotNull(funcIndexValue, "funcIndexValue");
    var index = 0;
    var iterator = this.iterator;
    while (iterator.moveNext()) {
      funcIndexValue(index++, iterator.current);
    }
  }

  /// Returns the [index]th element. If the index is out of bounds the [orElse]
  /// supplier function is called to provide a value.
  ///
  /// Example:
  /// ```dart
  /// ["a", "b"].elementAtOrElse(2, () => ""); // ""
  /// ```
  T elementAtOrElse(int index, T Function() orElse) {
    RangeError.checkNotNegative(index, "index");
    ArgumentError.checkNotNull(index);
    ArgumentError.checkNotNull(orElse, "orElse");

    try {
      return this.elementAt(index);
    } catch (error) {
      return orElse();
    }
  }

  /// Returns the [index]th element. If the index is out of bounds it will
  /// return [null].
  ///
  /// Example:
  /// ```dart
  /// ["a", "b"].elementAtOrNull(2); // null
  /// ```
  T elementAtOrNull(int index) {
    return this.elementAtOrElse(index, () => null);
  }

  /// Returns the first element. If there is no first element the [orElse]
  /// supplier function is called to provide a value.
  ///
  /// Example:
  /// ```dart
  /// ["a", "b"].firstOrElse(() => ""); // "a"
  /// [].firstOrElse(() => "");         // ""
  /// ```
  T firstOrElse(T Function() orElse) {
    ArgumentError.checkNotNull(orElse, "orElse");
    return this.firstWhere((_) => true, orElse: orElse);
  }

  /// Returns the first element. If there is no first element it will
  /// return [null].
  ///
  /// Example:
  /// ```dart
  /// ["a", "b"].firstOrNull(); // "a"
  /// [].firstOrNull();         // null
  /// ```
  T firstOrNull() {
    return this.firstOrElse(() => null);
  }

  /// Returns the last element. If there is no last element the [orElse]
  /// supplier function is called to provide a value.
  ///
  /// Example:
  /// ```dart
  /// ["a", "b"].lastOrElse(() => ""); // "a"
  /// [].lastOrElse(() => "");         // ""
  /// ```
  T lastOrElse(T Function() orElse) {
    ArgumentError.checkNotNull(orElse, "orElse");
    return this.lastWhere((_) => true, orElse: orElse);
  }

  /// Returns the last element. If there is no last element it will
  /// return [null].
  ///
  /// Example:
  /// ```dart
  /// ["a", "b"].lastOrElse(); // "a"
  /// [].lastOrElse();         // null
  /// ```
  T lastOrNull() {
    return this.lastOrElse(() => null);
  }

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
    ArgumentError.checkNotNull(keySelector);

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

  /// Returns a map that contains [MapEntry]s provided by a [transform] function.
  ///
  /// If two elements share the same key, the last one gets added to the map.
  ///
  /// Example:
  /// ```dart
  /// [1, 2, 3].associate((e) => MapEntry("key_$e", e * 100)); // {"key_1": 100, "key_2": 200, "key_3": 300}
  /// ```
  Map<K, V> associate(MapEntry<K, V> Function(T element) transform) {
    ArgumentError.checkNotNull(transform, "transform");
    return Map.fromEntries(this.map(transform));
  }

  /// Returns a map where every [element] is associated by a key produced from
  /// the [keySelector] function.
  ///
  /// If two elements share the same key, the last one gets added to the map.
  ///
  /// Example:
  /// ```dart
  /// ["a", "ab", "abc"].associateBy((e) => e.length); // {1: "a", 2: "ab", 3: "abc"}
  /// ```
  Map<K, T> associateBy(K Function(T element) keySelector) {
    ArgumentError.checkNotNull(keySelector, "keySelector");
    Map<K, T> map = Map();
    this.forEach((element) {
      var key = keySelector(element);
      map[key] = element;
    });
    return map;
  }

  /// Returns a map where every [element] is used as a key that is associated
  /// with a value produced by the [valueSelector] function.
  ///
  /// Example:
  /// ```dart
  /// ["a", "ab", "abc"].associateBy((e) => e.length); // {"a": 1, "ab": 2, "abc": 3}
  /// ```
  Map<T, V> associateWith(V Function(T element) valueSelector) {
    ArgumentError.checkNotNull(valueSelector, "valueSelector");
    Map<T, V> map = Map();
    this.forEach((element) {
      map[element] = valueSelector(element);
    });
    return map;
  }

  /// Returns the minimal value based on the [comparator] function.
  ///
  /// Example:
  /// ```dart
  /// [1, 0, 2].minBy((a, b) => a.compareTo(b));       // 0
  /// persons.minBy((a, b) => a.age.compareTo(b.age)); // the youngest person
  /// ```
  T minBy(Comparator<T> comparator) {
    ArgumentError.checkNotNull(comparator, "comparator");
    var values = this.toList();
    values.sort(comparator);
    return values.firstOrNull();
  }

  /// Returns the maximum value based on the [comparator] function.
  ///
  /// Example:
  /// ```dart
  /// [90, 10, 20, 30].maxBy((a, b) => a.compareTo(b)); // 90
  /// persons.maxBy((a, b) => a.age.compareTo(b.age));  // the oldest person
  /// ```
  T maxBy(Comparator<T> comparator) {
    ArgumentError.checkNotNull(comparator, "comparator");
    var values = this.toList();
    values.sort(comparator);
    return values.lastOrNull();
  }
}
