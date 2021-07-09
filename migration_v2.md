# Migration guide for version 2.x.x

Dart's own [collection package](https://pub.dev/packages/collection) adopted (in `1.15.0`) several extension methods that were previously covered by Supercharged.
This causes **naming conflicts** when using both packages.

As a general strategy **Supercharged** will favour Dart's implementations and rename it's own API.

This document will guide your through the migration process.

## Renaming

In order to keep compile issues as low as possible, Supercharged renamed all affected methods by adding the suffix `SC` to the method name:

- `sortedBy` renamed to `sortedBySC`
- `sortedByNum` renamed to `sortedByNumSC`
- `sortedByString` renamed to `sortedByStringSC`
- `sum` renamed to `sumSC`
- `average` renamed to `averageSC`
- `firstOrNull` renamed to `firstOrNullSC`
- `lastOrNull` renamed to `lastOrNullSC`
- `forEachIndexed` renamed to `forEachIndexedSC`
- `mapIndexed` renamed to `mapIndexedSC`

In a **first step** of migration you just need to **identify** these methods in your code by looking for **compile errors**. Then **add** the suffix `SC` to the method name. It will **solve** the compile error and **mark** the used method as **deprecated**.

Now you are free to stop here and focus on other issues demanded by the general null-safety migration process.


## Adopting Dart's native methods

Once your application compiles just perfectly, you can focus on further adoption of Dart's native methods.

The [collection package](https://pub.dev/packages/collection) is implicitly available in Flutter or Dart projects. Make sure to import it using:

```dart
import 'package:collection/collection.dart';
```

### sortedBy / sortedByNum / sortedByString

Instead of comparing two values inside a function, you just return a value of a single item. You also need to pass in a type, that's implementing a comparator, so it knows the natural order.

```dart
[3, 1, 5, 9, 7].sortedBySC((a, b) => a.compareTo(b))
```
can be migrated into
```dart
[3, 1, 5, 9, 7].sorted((a, b) => a.compareTo(b))
```

or

```dart
// for numeric values
[3, 1, 5, 9, 7].sortedBy<num>((a) => a)

// for string values
['b', 'c', 'a'].sortedBy<String>((s) => s)
```

### sum / average

The dart equivalent is nearly identical. Just remove the parenthesis since Dart uses only a getter method.

```dart
[1, 2, 3].sumSC()
[1, 2, 3].averageSC()
```

can be migrated into

```dart
[1, 2, 3].sum
[1, 2, 3].average
```

### firstOrNull / lastOrNull

The dart equivalent is nearly identical. Just remove the parenthesis since Dart uses only a getter method.

```dart
['a', 'b'].firstOrNullSC()
['a', 'b'].lastOrNullSC()
```

can be migrated into

```dart
['a', 'b'].firstOrNull
['a', 'b'].lastOrNull
```

### forEachIndex

The method signature of Dart's native method is identical to the one in Supercharged.

```dart
[1, 2, 3].forEachIndexed((index, value) {
// ...    
});
```

### mapIndexed

**Be cautious on this one.** The name is identical, but the positions of the parameters are swapped.

```dart
[1, 2, 3].mapIndexedSC((element, index) => /* ... */)
```

can be migrated into

```dart
[1, 2, 3].mapIndexed((index, element) => /* ... */)
```
