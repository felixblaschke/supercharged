part of supercharged_dart;

/// Throws an [Error] if predicate [test] is satisfied
///
/// Example:
/// ```dart
/// throwIf(n < 1, () => ArgumentError("n must be greater than 0"));
/// ```
void throwIf(bool test, Error Function() errorFactoryFunc) {
  return throwIfNot(!test, errorFactoryFunc);
}

/// Throws an [Error] if predicate [test] is not satisfied
///
/// Example:
/// ```dart
/// throwIfNot(n > 1, () => ArgumentError("n must be greater than 0"));
/// ```
void throwIfNot(bool test, Error Function() errorFactoryFunc) {
  if (!test) {
    throw errorFactoryFunc();
  }
}
