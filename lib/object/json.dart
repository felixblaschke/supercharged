import 'dart:convert';

extension ObjectJson on Object {
  /// Converts object into a JSON string.
  ///
  /// Use [toEncodable] to convert types that are not a number, boolean,
  /// string, null, list or a map with string keys. See [jsonEncode].
  ///
  /// Example:
  /// ```dart
  /// 1.0.toJSON();       // "1.0"
  /// [1, 2, 3].toJSON(); // [1,2,3]
  /// ```
  String toJSON({Object toEncodable(Object nonEncodable)}) {
    return jsonEncode(this, toEncodable: toEncodable);
  }
}
