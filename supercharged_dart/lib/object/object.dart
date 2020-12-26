part of supercharged_dart;

/// Supercharged extensions on any object T.
extension ObjectExt<T> on T {
  /// Calls the specified function block with this value as its argument and returns its result.
  ///
  /// Example 1 - conversion:
  /// ```dart
  /// String myString = "test";
  /// myString.let((e) => e.length); // 4
  /// ```
  ///
  /// Example 2 - if-else null safety:
  /// Imagine we wanted a default value when converting a string, like 100.
  /// ```dart
  /// String myString = null;
  /// myString?.let((e) => e.length) ?? 100; // 100
  /// ```
  R let<R>(R Function(T that) op) => op(this);

  /// Returns [T this] value if it satisfies the given predicate or null, if it doesn't.
  ///
  /// Example 1:
  /// ```dart
  /// String myString = "test";
  /// myString.takeIf((e) => e.length == 4); // "test"
  /// ```
  ///
  /// Example 2:
  /// ```dart
  /// String myString = "test";
  /// myString.takeIf((_) => true); // "test"
  /// ```
  ///
  /// Example 3:
  /// ```dart
  /// String myString = "test";
  /// myString.takeIf((_) => false); // null
  /// ```
  T takeIf(bool Function(T element) test) {
    if (test(this)) {
      return this;
    } else {
      return null;
    }
  }

  /// Calls the specified function block with this value as its argument and returns this value.
  ///
  /// Example 1:
  /// ```dart
  /// Bloc myBloc = Bloc().also((e) => e.startLoading());
  /// // calls the block after definition
  /// ```
  T also(Function(T that) op) {
    op(this);
    return this;
  }
}