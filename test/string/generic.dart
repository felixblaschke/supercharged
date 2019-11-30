import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("string repeat", () {
    expect("".repeat(1), equals(""));
    expect("".repeat(2), equals(""));
    expect("a".repeat(1), equals("a"));
    expect("a".repeat(2), equals("aa"));
    expect("ab".repeat(3), equals("ababab"));
    expect(() => "a".repeat(0), throwsAssertionError);
    expect(() => "abab".repeat(-2), throwsAssertionError);
    expect("hello".repeat(3, separator: "-"), equals("hello-hello-hello"));
  });
}
