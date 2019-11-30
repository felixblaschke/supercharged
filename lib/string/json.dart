import 'dart:convert';

extension StringJson on String {

  /// De-string-ifies a JSON string back into a JSON object
  ///
  /// Example:
  /// ```dart
  /// jsonString.parseJSON();
  /// "[1, 2, 3]".parseJSON(); // [1, 2, 3]
  /// ```
  dynamic parseJSON() {
    return jsonDecode(this);
  }

}
