extension IterableGetElement<T> on Iterable<T> {


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
}

