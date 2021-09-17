# next changes

## String

- `String.toList()` is now `String.characters` getter.

- `String.parseJson()` removed. Use `parseJSON()` from `dart:convert` instead.

- `String.toInt()` is now `String.intOrNull` getter. If you need custom radix support, use `int.parse()` function.

- `String.toDouble()` is now `String.doubleOrNull` getter.

- **NEW:** `String.isBlank` detect Strings that solely consists of whitespace characters.
