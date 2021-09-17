# supercharged dart

## Table of contents

[**String**](#string)
  - [Transformation](#transformation)
  - [Substring extraction](#substring-extraction)
  - [Conversion](#conversion)

## String

### Transformation

Repeats a `String` for a given count.

```dart
'hello'.repeat(3); // 'hellohellohello'
'cat'.repeat(3, separator: ':'); // 'cat:cat:cat'
```

Reverses a `String`.

```dart
'hello'.reverse; // 'olleh'
'flutter'.reverse; // 'rettulf'
```

Splits `String` into single characters.

```dart
'hello'.chars; // ['h', 'e', 'l', 'l', 'o']
''.chars; // [ ]
```

### Substring extraction

Looks for certain pattern inside a `String` and returns the substring
before, after or between.

```dart
'value=1'.allBefore('='); // 'value'
'i like turtles'.allBefore('like'); // 'i '
```
```dart
'value=1'.allAfter('='); // '1'
'i like turtles'.allAfter('like'); // ' turtles'
'i   like cats'.allAfter(RegExp('\\s+')); // 'like cats'
```
```dart
'i like turtles'.allBetween('i ', ' turtles'); // 'like'
```

### Conversion

Parses a `String` as `int` or `double`.

```dart
'42'.intOrNull; // 42
'invalid'.intOrNull; // null
```
```dart
'2.1'.doubleOrNull; // 2.1
'invalid'.doubleOrNull; // null
```

Detects a `String` that constists of whitespace.

```dart
'  '.isBlank; // true
' hi '.isBlank; // false
```