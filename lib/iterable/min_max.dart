import 'get_element.dart';

extension IterableMinMax<T> on Iterable<T> {

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