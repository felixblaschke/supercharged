part of supercharged;

/// Supercharged extensions on [String].
extension String_ on String {
  /// Repeats the string [n] times
  ///
  /// You can set an optional [separator] that is put in between each repetition
  ///
  /// Example:
  /// ```dart
  /// "hello".repeat(2);                // "hellohello"
  /// "cat".repeat(3, separator: ":");  // "cat:cat:cat"
  /// ```
  String repeat(int n, {String separator = ""}) {
    ArgumentError.checkNotNull(n, "n");
    throwIfNot(n > 0,
        () => ArgumentError("n must be a positive value greater then 0"));

    var repeatedString = "";

    for (int i = 0; i < n; i++) {
      if (i > 0) {
        repeatedString += separator;
      }
      repeatedString += this;
    }

    return repeatedString;
  }

  /// Reverses the string
  ///
  /// Example:
  /// ```dart
  /// "hello".reverse;   // "olleh"
  /// "flutter".reverse; // "rettulf"
  /// ```
  String get reverse {
    if (isEmpty) {
      return "";
    }
    return toList().reversed.reduce((value, element) => value += element);
  }

  /// Transforms the string into a list of single characters
  ///
  /// Example:
  /// ```dart
  /// "hello".toList(); // ["h", "e", "l", "l", "o"]
  /// "".toList();      // [ ]
  /// ```
  List<String> toList() {
    return split("");
  }

  /// De-string-ifies a JSON string back into a JSON object
  ///
  /// You can optionally set a [reviver] function to deserialize non-basic types.
  /// See [jsonDecode].
  ///
  /// Example:
  /// ```dart
  /// jsonString.parseJSON();
  /// "[1, 2, 3]".parseJSON(); // [1, 2, 3]
  /// ```
  dynamic parseJSON({Object reviver(Object key, Object value)}) {
    return jsonDecode(this, reviver: reviver);
  }

  /// Searches the string for the first occurrence of a [pattern] and returns
  /// everything after that occurrence.
  ///
  /// Returns `""` if no occurrences were found.
  ///
  /// Example:
  /// ```dart
  /// "value=1".allAfter("=");                 // "1"
  /// "i like turtles".allAfter("like")        // " turtles"
  /// "i   like cats".allAfter(RegExp("\\s+")) // "like cats"
  /// ```
  String allAfter(Pattern pattern) {
    ArgumentError.checkNotNull(pattern, "pattern");
    var matchIterator = pattern.allMatches(this).iterator;

    if (matchIterator.moveNext()) {
      var match = matchIterator.current;
      var length = match.end - match.start;
      return substring(match.start + length);
    }
    return "";
  }

  /// Searches the string for the last occurrence of a [pattern] and returns
  /// everything before that occurrence.
  ///
  /// Returns `""` if no occurrences were found.
  ///
  /// Example:
  /// ```dart
  /// "value=1".allBefore("=");          // "value"
  /// "i like turtles".allBefore("like") // "i "
  /// ```
  String allBefore(Pattern pattern) {
    ArgumentError.checkNotNull(pattern, "pattern");
    var matchIterator = pattern.allMatches(this).iterator;

    Match match;
    while (matchIterator.moveNext()) {
      match = matchIterator.current;
    }

    if (match != null) {
      return substring(0, match.start);
    }
    return "";
  }

  /// Searches the string for the first occurrence of [startPattern] and the
  /// last occurrence of [endPattern]. It returns the string between that
  /// occurrences.
  ///
  /// Returns `""` if no occurrences were found.
  ///
  /// Example:
  /// ```dart
  /// "i like turtles".allBetween("i ", " turtles") // "like"
  /// ```
  String allBetween(Pattern startPattern, Pattern endPattern) {
    return allAfter(startPattern).allBefore(endPattern);
  }

  /// Parses string and returns integer value.
  ///
  /// You can set an optional [radix] to specify the numeric base.
  /// If no [radix] is set, it will use the decimal system (10).
  ///
  /// Returns `null` if parsing fails.
  ///
  /// Example:
  /// ```dart
  /// "42".toDouble();      // 42
  /// "invalid".toDouble(); // null
  int toInt({int radix = 10}) {
    try {
      return int.parse(this, radix: radix);
    } catch (error) {
      return null;
    }
  }

  /// Parses string and return double value.
  ///
  /// Returns `null` if parsing fails.
  ///
  /// Example:
  /// ```dart
  /// "2.1".toDouble();     // 2.1
  /// "invalid".toDouble(); // null
  /// ```
  double toDouble() {
    try {
      return double.parse(this);
    } catch (error) {
      return null;
    }
  }

// @codegen begin block flutter
  /// Converts string in hex representation into a [Color].
  ///
  /// You can use 6-char hex color (RRGGBB), 3-char hex color (RGB) or a valid
  /// HTML color name. The hash (#) is optional for hex color strings.
  ///
  /// Example:
  /// ```dart
  /// "#ff00ff".toColor();  // pink
  /// "ff0000".toColor();   // red
  /// "00f".toColor();      // blue
  /// "red".toColor();      // red (HTML color name)
  /// "deeppink".toColor(); // deep pink (HTML color name)
  /// ```
  ///
  Color toColor() {
    if (_isHtmlColorName(this)) {
      return _getColorByHtmlColorName(this);
    }

    try {
      var color = _removeLeadingHash(this);

      if (color.length == 6) {
        return _sixCharHexToColor(color);
      }

      if (color.length == 3) {
        return _threeCharHexToColor(color);
      }
    } catch (error) {
      // will throw anyway
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

  static bool _isHtmlColorName(String name) {
    return _HTML_COLOR_NAMES.containsKey(name.toLowerCase());
  }

  static Color _getColorByHtmlColorName(String name) {
    return _HTML_COLOR_NAMES[name.toLowerCase()].toColor();
  }
// @codegen end block flutter
}

// @codegen begin block flutter
const _HTML_COLOR_NAMES = {
  "aliceblue": "#f0f8ff",
  "antiquewhite": "#faebd7",
  "aqua": "#00ffff",
  "aquamarine": "#7fffd4",
  "azure": "#f0ffff",
  "beige": "#f5f5dc",
  "bisque": "#ffe4c4",
  "black": "#000000",
  "blanchedalmond": "#ffebcd",
  "blue": "#0000ff",
  "blueviolet": "#8a2be2",
  "brown": "#a52a2a",
  "burlywood": "#deb887",
  "cadetblue": "#5f9ea0",
  "chartreuse": "#7fff00",
  "chocolate": "#d2691e",
  "coral": "#ff7f50",
  "cornflowerblue": "#6495ed",
  "cornsilk": "#fff8dc",
  "crimson": "#dc143c",
  "cyan": "#00ffff",
  "darkblue": "#00008b",
  "darkcyan": "#008b8b",
  "darkgoldenrod": "#b8860b",
  "darkgray": "#a9a9a9",
  "darkgrey": "#a9a9a9",
  "darkgreen": "#006400",
  "darkkhaki": "#bdb76b",
  "darkmagenta": "#8b008b",
  "darkolivegreen": "#556b2f",
  "darkorange": "#ff8c00",
  "darkorchid": "#9932cc",
  "darkred": "#8b0000",
  "darksalmon": "#e9967a",
  "darkseagreen": "#8fbc8f",
  "darkslateblue": "#483d8b",
  "darkslategray": "#2f4f4f",
  "darkslategrey": "#2f4f4f",
  "darkturquoise": "#00ced1",
  "darkviolet": "#9400d3",
  "deeppink": "#ff1493",
  "deepskyblue": "#00bfff",
  "dimgray": "#696969",
  "dimgrey": "#696969",
  "dodgerblue": "#1e90ff",
  "firebrick": "#b22222",
  "floralwhite": "#fffaf0",
  "forestgreen": "#228b22",
  "fuchsia": "#ff00ff",
  "gainsboro": "#dcdcdc",
  "ghostwhite": "#f8f8ff",
  "gold": "#ffd700",
  "goldenrod": "#daa520",
  "gray": "#808080",
  "grey": "#808080",
  "green": "#008000",
  "greenyellow": "#adff2f",
  "honeydew": "#f0fff0",
  "hotpink": "#ff69b4",
  "indianred ": "#cd5c5c",
  "indigo ": "#4b0082",
  "ivory": "#fffff0",
  "khaki": "#f0e68c",
  "lavender": "#e6e6fa",
  "lavenderblush": "#fff0f5",
  "lawngreen": "#7cfc00",
  "lemonchiffon": "#fffacd",
  "lightblue": "#add8e6",
  "lightcoral": "#f08080",
  "lightcyan": "#e0ffff",
  "lightgoldenrodyellow": "#fafad2",
  "lightgray": "#d3d3d3",
  "lightgrey": "#d3d3d3",
  "lightgreen": "#90ee90",
  "lightpink": "#ffb6c1",
  "lightsalmon": "#ffa07a",
  "lightseagreen": "#20b2aa",
  "lightskyblue": "#87cefa",
  "lightslategray": "#778899",
  "lightslategrey": "#778899",
  "lightsteelblue": "#b0c4de",
  "lightyellow": "#ffffe0",
  "lime": "#00ff00",
  "limegreen": "#32cd32",
  "linen": "#faf0e6",
  "magenta": "#ff00ff",
  "maroon": "#800000",
  "mediumaquamarine": "#66cdaa",
  "mediumblue": "#0000cd",
  "mediumorchid": "#ba55d3",
  "mediumpurple": "#9370db",
  "mediumseagreen": "#3cb371",
  "mediumslateblue": "#7b68ee",
  "mediumspringgreen": "#00fa9a",
  "mediumturquoise": "#48d1cc",
  "mediumvioletred": "#c71585",
  "midnightblue": "#191970",
  "mintcream": "#f5fffa",
  "mistyrose": "#ffe4e1",
  "moccasin": "#ffe4b5",
  "navajowhite": "#ffdead",
  "navy": "#000080",
  "oldlace": "#fdf5e6",
  "olive": "#808000",
  "olivedrab": "#6b8e23",
  "orange": "#ffa500",
  "orangered": "#ff4500",
  "orchid": "#da70d6",
  "palegoldenrod": "#eee8aa",
  "palegreen": "#98fb98",
  "paleturquoise": "#afeeee",
  "palevioletred": "#db7093",
  "papayawhip": "#ffefd5",
  "peachpuff": "#ffdab9",
  "peru": "#cd853f",
  "pink": "#ffc0cb",
  "plum": "#dda0dd",
  "powderblue": "#b0e0e6",
  "purple": "#800080",
  "rebeccapurple": "#663399",
  "red": "#ff0000",
  "rosybrown": "#bc8f8f",
  "royalblue": "#4169e1",
  "saddlebrown": "#8b4513",
  "salmon": "#fa8072",
  "sandybrown": "#f4a460",
  "seagreen": "#2e8b57",
  "seashell": "#fff5ee",
  "sienna": "#a0522d",
  "silver": "#c0c0c0",
  "skyblue": "#87ceeb",
  "slateblue": "#6a5acd",
  "slategray": "#708090",
  "slategrey": "#708090",
  "snow": "#fffafa",
  "springgreen": "#00ff7f",
  "steelblue": "#4682b4",
  "tan": "#d2b48c",
  "teal": "#008080",
  "thistle": "#d8bfd8",
  "tomato": "#ff6347",
  "turquoise": "#40e0d0",
  "violet": "#ee82ee",
  "wheat": "#f5deb3",
  "white": "#ffffff",
  "whitesmoke": "#f5f5f5",
  "yellow": "#ffff00",
  "yellowgreen": "#9acd32"
};
// @codegen end block flutter
