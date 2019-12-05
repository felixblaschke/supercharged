import 'range.dart';

extension IntTimes on int {
  /// Executes the function [action] for [this] times.
  ///
  /// Example:
  /// 3.times(() => print("Hello")); // Hello... Hello... Hello
  void times(Function() action) {
    0.until(this).forEach((_) => action());
  }
}
