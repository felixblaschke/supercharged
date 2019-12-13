# ⚡️ Supercharged

[![Pub](https://img.shields.io/pub/v/supercharged.svg)](https://pub.dartlang.org/packages/supercharged)


**Supercharged** brings **all the comfort features** from languages like Kotlin to **all Flutter developers**.

- 💪 **fully tested**
- 📝 **well documented**
- 💼 **enterprise-ready**

## ⛏️ Getting started

Add the dependency `supercharged: ^1.0.0` to your project and start using **Supercharged** everywhere:
```dart
import 'package:supercharged/supercharged.dart';
```

For more details have a look at the [install tab](https://pub.dev/packages/supercharged#-installing-tab-).


## 🌞 Highlights

Transform any string to **[colors](https://pub.dev/documentation/supercharged/latest/supercharged/String_/toColor.html)**
```dart
"#ff00ff".toColor(); // painless hex to color
"red".toColor(); // supports all web color names
```

Helpful [substring](https://pub.dev/documentation/supercharged/latest/supercharged/String_/allAfter.html) functions:
```dart
"mode:production".allAfter(":"); // "production"
"<html>".allBetween("<", ">"); // "html"`
"flutter is cool".allBefore(" is"); // "flutter"
```

[Parse](https://pub.dev/documentation/supercharged/latest/supercharged/String_/toDouble.html) user input:
```dart
"2.1".toDouble(); // 2.1
"42".toInt(); // 
```

Effordless [aggregation](https://pub.dev/documentation/supercharged/latest/supercharged/IterableOfInt_/sum.html) for int and double:
```dart
[1,2,3].sum(); // 6
[1,2,3].average(); // 2
```

Advanced [aggregation](https://pub.dev/documentation/supercharged/latest/supercharged/Iterable_/sumBy.html):
```dart
persons = [Person(age: 20), Person(age: 30), Person(age: 40)];
persons.sumBy((p) => p.age); // 90
persons.averageBy((p) => p.age); // 30
persons.count((p) => p.age < 35); // 2
```


## 📑 APIs

[API Dokumentation](https://pub.dev/documentation/supercharged/latest/supercharged/supercharged-library.html)

- [double](https://pub.dev/documentation/supercharged/latest/supercharged/Double_.html)
- [int](https://pub.dev/documentation/supercharged/latest/supercharged/Int_.html)
- [Iterable / List / Set](https://pub.dev/documentation/supercharged/latest/supercharged/Iterable_.html)
- [Iterable\<double\> / List\<double\> / Set\<double\>](https://pub.dev/documentation/supercharged/latest/supercharged/IterableOfDouble_.html)
- [Iterable\<int\> / List\<int\> / Set\<int\>](https://pub.dev/documentation/supercharged/latest/supercharged/IterableOfInt_.html)
- [Iterable\<MapEntry\> / List\<MapEntry\> / Set\<MapEntry\>](https://pub.dev/documentation/supercharged/latest/supercharged/IterableOfMapEntry_.html)
- [List](https://pub.dev/documentation/supercharged/latest/supercharged/List_.html)
- [Map](https://pub.dev/documentation/supercharged/latest/supercharged/Map_.html)
- [String](https://pub.dev/documentation/supercharged/latest/supercharged/String_.html)


## 📈 Improve

You got an idea for a feature or anything to improve. Write an [issue on GitHub](https://github.com/felixblaschke/supercharged/issues). 