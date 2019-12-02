import 'dart:convert';

extension StringJson on String {
  /// De-string-ifies a JSON string back into a JSON object
  ///
  /// You can optionally set a [reviver] function to deserialize non-basic types.
  ///
  /// Example:
  /// ```dart
  /// jsonString.parseJSON();
  /// "[1, 2, 3]".parseJSON(); // [1, 2, 3]
  /// ```
  dynamic parseJSON({Object reviver(Object key, Object value)}) {
    return jsonDecode(this, reviver: reviver);
  }
}
