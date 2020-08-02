# ⚡️ Supercharged Dart

[![Pub](https://img.shields.io/pub/v/supercharged.svg)](https://pub.dartlang.org/packages/supercharged)
[![Tests](https://github.com/felixblaschke/supercharged_dart/workflows/Tests/badge.svg)](https://github.com/felixblaschke/supercharged_dart/actions?query=workflow%3ATests)

**Supercharged Dart** brings **all the comfort features** from languages like Kotlin to **all Dart developers**.

- 💪 **fully tested**
- 📝 **well documented**
- 💼 **enterprise-ready**

## ⛏️ Getting started

Add the dependency `supercharged_dart: ^1.X.X` ([find recent version](https://pub.dev/packages/supercharged_dart/install)) to your project and start using **Supercharged** everywhere:
```dart
import 'package:supercharged_dart/supercharged_dart.dart';
```

## 🌞 Highlights

Helpful [substring](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/String_/allAfter.html) functions:
```dart
"mode:production".allAfter(":"); // "production"
"<html>".allBetween("<", ">"); // "html"`
"flutter is cool".allBefore(" is"); // "flutter"
```

[Handle](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/String_/toDouble.html) user input:
```dart
"2.1".toDouble(); // 2.1
"42".toInt(); // 42
12.between(0, 30); // true
```

Effortless [aggregation](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/IterableOfIntSC.html) for `Iterable<int>` and `Iterable<double>`:
```dart
[1, 2, 3].sum(); // 6
[1, 2, 3].average(); // 2
[1, 2, 3].min(); // 1
[1, 2, 3].max(); // 3
```

Advanced [aggregation](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/Iterable_/sumBy.html) for any `Iterable`:
```dart
var persons = [Person(age: 20), Person(age: 30), Person(age: 40)];
persons.sumBy((p) => p.age); // 90
persons.averageBy((p) => p.age); // 30
persons.count((p) => p.age < 35); // 2
persons.minBy((a,b) => a.age.compareTo(b.age)); // Person(age: 20)
persons.maxBy((a,b) => a.age.compareTo(b.age)); // Person(age: 40)
```

Safely [access](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/Iterable_/firstOrNull.html) `Iterable`:
```dart
[].firstOrNull(); // return null instead
[].lastOrNull();  // of throwing error

[].firstOrElse(() => Placeholder()); // Produce default values
[].lastOrElse(() => Placeholder());  // on the fly

[1, 2, 3].elementAtOrNull(4); // Never go out of bounds
[1, 2, 3].elementAtOrElse(4, () => 0);
```

[Group up data](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/Iterable_/groupBy.html) to match view:
```dart
var persons = [
    Person(name: "John", age: 21),
    Person(name: "Carl", age: 18),
    Person(name: "Peter", age: 56),
    Person(name: "Sarah", age: 61)
];

persons.groupBy(
    (p) => p.age < 40 ? "young" : "old",
    valueTransform: (p) => p.name
); // {"young": ["John", "Carl"], "old": ["Peter", "Sarah"]}
```

[Chunking](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/Iterable_/chunked.html) for easy pagination:
```dart
["a", "b", "c", "d", "e"].chunked(3); // [ ["a", "b", "c"], ["d", "e"] ]
["a", "b", "c"].chunked(2, fill: () => ""); // [ ["a", "b"], ["c", ""] ]
```

More natural [durations](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/Int_/minutes.html) and dates:
```dart
var duration = 5.minutes + 30.seconds;
duration += 0.5.hours;

var future = 2.days.fromNow() + 20.minutes;
var past = 15.minutes.ago();

var allDaysOf2020 = DateTime(2020).until(DateTime(2021));
var allFullHoursOfFirstJanuary2020 =
  DateTime(2020, 1, 1).until(DateTime(2020, 1, 2), by: 1.hours);
```

Simplified [data sorting](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/Iterable_/sortedByNum.html):
```dart
 persons = [
    Person(name: "John", age: 21),
    Person(name: "Carl", age: 18),
    Person(name: "Peter", age: 56),
    Person(name: "Sarah", age: 61)
  ];

  persons.sortedByNum((p) => p.age); // list sorted by age
  persons.sortedByString((p) => p.name); // list sorted by name
  persons  // sorted with comparator
      .sortedBy((a, b) => a.name.compareTo(b.name));

  persons // sorting is fully integrated into processing chain
      .filter((p) => p.name.length < 5)
      .sortedByNum((p) => p.age)
      .map((p) => p.name)
      .toList();
```

[Replace](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/Int_/rangeTo.html) your classic for-loop:
```dart
0.rangeTo(5); // [0, 1, 2, 3, 4, 5]
3.rangeTo(1); // [3, 2, 1]

var list = ["dog", "cat", "mouse"];
0.until(list.length); // [0, 1, 2]

list.forEachIndexed((index, value) {
    // index: 0, value: "dog"
    // index: 1, value: "cat"
    // index: 2, value: "mouse"
});
```

## 📑 API documentation

You can discover all the [API documentation](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/supercharged-library.html).
Each feature is **well documented** with an **example**.

Feel free to quickly **jump** into a topic:

- [double](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/DoubleSC.html)
- [int](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/IntSC.html)
- [Iterable / List / Set](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/IterableSC.html)
- [Iterable\<double\> / List\<double\> / Set\<double\>](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/IterableOfDoubleSC.html)
- [Iterable\<int\> / List\<int\> / Set\<int\>](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/IterableOfIntSC.html)
- [Iterable\<MapEntry\> / List\<MapEntry\> / Set\<MapEntry\>](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/IterableOfMapEntrySC.html)
- [List](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/ListSC.html)
- [Map](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/MapSC.html)
- [String](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/StringSC.html)
- [Duration](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/DurationSC.html)
- [DateTime](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/DateTimeSC.html)
- [Animatable](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/AnimatableSC.html)
- [Color](https://pub.dev/documentation/supercharged_dart/FIXME/supercharged_dart/ColorSC.html)

## 📈 Improve

Supercharged will **improve** in future updates. Help me by reporting bugs, **submit new ideas** for features or anything else that you want to share.

- Just [write an issue](https://github.com/felixblaschke/supercharged/issues) on GitHub. ✏️
- And don't forget to hit the **like button** for this package ✌️
