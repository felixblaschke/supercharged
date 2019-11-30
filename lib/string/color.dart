
import 'dart:ui';
import 'parse_number.dart';
import 'generic.dart';

extension StringColor on String {

  /// Converts string in hex representation into a [Color].
  ///
  /// It takes six char representation (RRGGBB) or three char presentation ("RGB")
  /// with or without a leading hash (#).
  ///
  /// Usage:
  /// ```
  /// "#ff00ff".toColor() // pink
  /// "ff0000".toColor()  // red
  /// "00f".toColor()      // blue
  /// ```
  ///
  Color toColor() {
    var color = _removeLeadingHash(this);

    if (color.length == 6) {
      return _sixCharHexToColor(color);
    }

    if (color.length == 3) {
      return _threeCharHexToColor(color);
    }

    throw ArgumentError("Can not interpret string $this");
  }

  static String _removeLeadingHash(String color) {
    if (color.startsWith("#")) {
      return color.substring(1);
    }
    return color;
  }

  static Color _sixCharHexToColor(String color) {
    var r = color.substring(0, 2).toInt(radix: 16);
    var g = color.substring(2, 4).toInt(radix: 16);
    var b = color.substring(4, 6).toInt(radix: 16);
    return Color.fromARGB(255, r, g, b);
  }

  static Color _threeCharHexToColor(String color) {
    var r = color.substring(0, 1).repeat(2).toInt(radix: 16);
    var g = color.substring(1, 2).repeat(2).toInt(radix: 16);
    var b = color.substring(2, 3).repeat(2).toInt(radix: 16);
    return Color.fromARGB(255, r, g, b);
  }
}
