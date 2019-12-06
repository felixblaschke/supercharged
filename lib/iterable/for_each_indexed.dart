extension IterableForEachIndexed<T> on Iterable<T> {

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
}
