# Migration guide for version 2.x.x

Dart's own `collection` (in `1.15.0-nullsafety.4`) adopted several extension methods that were previously covered by Supercharged.
**This might lead to code issues**.

The release `2.x.x` of `supercharged` (or `supercharged_dart`) addresses these changes. This document will guide your through the migration process.

## Renaming

In order to keep compile issue as low as possible, Supercharged renamed all affected methods by adding the suffix `SC` to the method name:

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

Once your application compiles just perfectly you can focus on further adoption of Dart's native methods.

💡 **Notice**: *At the moment of writing this guide the Dart native methods require the import of
`package:collection/collection.dart`.*

### sortedBy / sortedByNum / sortedByString

Instead of comparing two values inside a function, you just return a value of a single item. Also you pass in a type implementing a comparator, so it knows the natural order.

```dart
[3, 1, 5, 9, 7].sortedBySC((a, b) => a.compareTo(b))
```
can be migrated into

```dart
[3, 1, 5, 9, 7].sortedBy<num>((a) => a)
```

Working with **String**s is quite the same:

```dart
['b', 'c', 'a'].sortedBy<String>((s) => s)
```

### forEachIndex

The method signature of Dart's native method is identical to the one in Supercharged.

```dart
[1, 2, 3].forEachIndexed((index, value) {
  // ...    
});
```

### mapIndexed

**Be cautious on this one.** The name is identical but the positions of the parameters are swapped.

```dart
[1, 2, 3].mapIndexedSC((element, index) => /* ... */)
```

can be migrated into

```dart
[1, 2, 3].mapIndexedSC((index, element) => /* ... */)
```
