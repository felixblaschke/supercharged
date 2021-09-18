# Supercharged

Supercharged is a Flutter package with extension methods.

## Development discontinued

- There are **no new features planed** for Supercharged.

- You can still use it in your current project and the **well-tested code will continue to work** for maybe years.

### Why?

The collection handling - one of Supercharged biggest features - is now adapted by Dart's own [collection](https://pub.dev/packages/collection) package. To avoid fragmentation, I'll point to the official solution.

Other features like `Duration` or `Color` handling are ineffecient, because they can not be used with `const` constructors.

### What should I do?

#### Stay

You can stay on the lastest version of Supercharged, as it is well written and test covered. If you stumble on bugs you can adopt the code in your codebase or fork the project.

The code is MIT licenced, so you can take out certain extensions you like.

#### Go

As I mentioned the [package collection](https://pub.dev/packages/collection) will take the lead in collection-related extension methods.

If you insist on `Duration` extensions, you might want to look at [package time](https://pub.dev/packages/time). But I strongly recommend using `const` constructors:

```dart
var twoSeconds = const Duration(seconds: 2);
```

For substring extraction it's always a good invest to learn [regex](https://regexr.com/):

```dart
var input = "this:bee";
var result = RegExp(r'.*:(.+)').firstMatch(input)?.group(1);

print(result); // "bee"
```

Take the time to create compile-time constant color values:

```dart
// pattern:  const Color(0xAARRGGBB)
var red    = const Color(0xFFFF0000);
var green  = const Color(0xFF00FF00);
var yellow = const Color(0xFF0000FF);
```
