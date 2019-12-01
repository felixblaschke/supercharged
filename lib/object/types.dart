extension ObjectTypes on Object {

  /// Tests if current object is an instance of given [type].
  ///
  /// Example:
  /// ```dart
  /// "hello".isType(String);        // true
  /// 12.isType(int)                 // true
  /// Container().isType(Container); // true
  /// 12.isType(double);             // false
  /// ```
  bool isType(Type type) {
    return this.runtimeType == type;
  }

}