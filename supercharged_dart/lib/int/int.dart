part of supercharged_dart;

/// Supercharged extensions on [int] numbers.
extension IntSC on int {
  /// Creates an [Iterable<int>] that contains all values from current integer
  /// until (including) the value [n].
  ///
  /// Example:
  /// ```dart
  /// 0.rangeTo(5); // [0, 1, 2, 3, 4, 5]
  /// 3.rangeTo(1); // [3, 2, 1]
  /// ```
  Iterable<int> rangeTo(int n) {
    var count = (n - this).abs() + 1;
    var direction = (n - this).sign;
    var i = this - direction;
    return Iterable.generate(count, (int index) {
      return i += direction;
    });
  }

  /// Creates an [Iterable<int>] that contains all values from current integer
  /// until (excluding) the value [n].
  ///
  /// Example:
  /// ```dart
  /// 0.until(5); // [0, 1, 2, 3, 4]
  /// 3.until(1); // [3, 2]
  /// ```
  Iterable<int> until(int n) {
    if (this < n) {
      return rangeTo(n - 1);
    } else if (this > n) {
      return rangeTo(n + 1);
    } else {
      return Iterable.empty();
    }
  }

  /// Executes the function [action] for [this] times.
  ///
  /// Example:
  /// 3.times(() => print('Hello')); // Hello... Hello... Hello
  void times(void Function() action) {
    0.until(this).forEach((_) => action());
  }

  /// Returns a [Duration] representing the current value as microseconds.
  ///
  /// Example:
  /// ```dart
  /// 200.microseconds; // Duration(microseconds: 200);
  /// ```
  Duration get microseconds {
    return Duration(microseconds: this);
  }

  /// Returns a [Duration] representing the current value as milliseconds.
  ///
  /// Example:
  /// ```dart
  /// 1000.milliseconds; // Duration(milliseconds: 1000);
  /// ```
  Duration get milliseconds {
    return Duration(milliseconds: this);
  }

  /// Returns a [Duration] representing the current value as seconds.
  ///
  /// Example:
  /// ```dart
  /// 30.seconds; // Duration(seconds: 1000);
  /// ```
  Duration get seconds {
    return Duration(seconds: this);
  }

  /// Returns a [Duration] representing the current value as minutes.
  ///
  /// Example:
  /// ```dart
  /// 15.minutes; // Duration(minutes: 15);
  /// ```
  Duration get minutes {
    return Duration(minutes: this);
  }

  /// Returns a [Duration] representing the current value as hours.
  ///
  /// Example:
  /// ```dart
  /// 24.hours; // Duration(hours: 24);
  /// ```
  Duration get hours {
    return Duration(hours: this);
  }

  /// Returns a [Duration] representing the current value as days.
  ///
  /// Example:
  /// ```dart
  /// 14.days; // Duration(days: 14);
  /// ```
  Duration get days {
    return Duration(days: this);
  }

  /// Returns a [bool] if [this] value is between (including) the two
  /// numeric values [first] and [second].
  ///
  /// Example:
  /// ```dart
  /// 100.isBetween(50, 150) // true;
  /// 100.isBetween(50.0, 150.0) // true;
  /// 100.isBetween(100, 100) // true;
  /// ```
  bool isBetween(num first, num second) {
    if (first <= second) {
      return this >= first && this <= second;
    } else {
      return this >= second && this <= first;
    }
  }
}
