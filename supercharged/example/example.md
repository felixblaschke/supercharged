# 📝 Examples

```dart
import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

main() {
  // Transform any String to colors
  "#ff00ff".toColor(); // painless hex to color
  "red".toColor(); // supports all web color names

  // Helpful substring functions:
  "mode:production".allAfter(":"); // "production"
  "<html>".allBetween("<", ">"); // "html"`
  "flutter is cool".allBefore(" is"); // "flutter"

  // Handle user input:
  "2.1".toDouble(); // 2.1
  "42".toInt(); // 42
  12.isBetween(0, 30); // true

  // Effortless aggregation for Iterable<int> and Iterable<double>:
  [1, 2, 3].min(); // 1
  [1, 2, 3].max(); // 3

  // Advanced aggregation for any Iterable:
  var persons = [Person(age: 20), Person(age: 30), Person(age: 40)];
  persons.sumBy((p) => p.age); // 90
  persons.averageBy((p) => p.age); // 30
  persons.count((p) => p.age < 35); // 2
  persons.minBy((a, b) => a.age.compareTo(b.age)); // Person(age: 20)
  persons.maxBy((a, b) => a.age.compareTo(b.age)); // Person(age: 40)

  // Safely access Iterable:
  [].firstOrElse(() => Placeholder()); // Produce default values
  [].lastOrElse(() => Placeholder());  // on the fly

  [1, 2, 3].elementAtOrNull(4); // Never go out of bounds
  [1, 2, 3].elementAtOrElse(4, () => 0);

  [1, 2, 3].pickOne();   // Get a random item
  [1, 2, 3].pickSome(2); // or multiple random items

  // Group up data to match view:
  persons = [
    Person(name: "John", age: 21),
    Person(name: "Carl", age: 18),
    Person(name: "Peter", age: 56),
    Person(name: "Sarah", age: 61)
  ];

  persons.groupBy((p) => p.age < 40 ? "young" : "old",
      valueTransform: (p) =>
          p.name); // {"young": ["John", "Carl"], "old": ["Peter", "Sarah"]}

  // Chunking for easy pagination:
  ["a", "b", "c", "d", "e"].chunked(3); // [ ["a", "b", "c"], ["d", "e"] ]
  ["a", "b", "c"].chunked(2, fill: () => ""); // [ ["a", "b"], ["c", ""] ]

  // More natural durations and dates:
  var duration = 5.minutes + 30.seconds;
  duration += 0.5.hours;

  var future = 2.days.fromNow() + 20.minutes;
  var past = 15.minutes.ago();

  var allDaysOf2020 = DateTime(2020).until(DateTime(2021));
  var allFullHoursOfFirstJanuary2020 =
      DateTime(2020, 1, 1).until(DateTime(2020, 1, 2), by: 1.hours);

  await 2.seconds.delay; // waits for 2 seconds

  // Solid tween shortcuts for animations
  100.0.tweenTo(200.0); // Tween(begin: 100.0, end: 200.0)
  Colors.red.tweenTo(Colors.blue); // ColorTween(...)
  0.0.tweenTo(100.0).curved(Curves.easeInOut); // Apply acceleration
  Offset(50, 50).tweenTo(Offset.zero); // Offset-Tween
  Size(400, 300).tweenTo(Size.square(50)) // Size-Tween
  Rect.zero.tweenTo(Rect.fromLTWH(50, 50, 400, 300)) // Rect-Tween
  
  // Replace your classic for loop:
  0.rangeTo(5); // [0, 1, 2, 3, 4, 5]
  3.rangeTo(1); // [3, 2, 1]

  var list = ["dog", "cat", "mouse"];
  0.until(list.length); // [0, 1, 2]
}

class Person {
  final String name;
  final int age;

  Person({this.age, this.name = ""});
}

class Placeholder {}
```
