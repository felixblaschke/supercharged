import 'package:test/test.dart';
import 'package:supercharged_dart/supercharged_dart.dart';

void main() {
  test('iterable sortedBy', () {
    expect(<int>[].sortedBy((a, b) => a.compareTo(b)), equals([]));
    expect(() => [0, 1, 2].sortedBy(null), throwsArgumentError);
    expect([3, 1, 5, 9, 7].sortedBy((a, b) => a.compareTo(b)),
        equals([1, 3, 5, 7, 9]));
    expect([1, 3, 5, 7, 9].sortedBy((a, b) => a.compareTo(b)),
        equals([1, 3, 5, 7, 9]));
    expect([9, 7, 5, 3, 1].sortedBy((a, b) => a.compareTo(b)),
        equals([1, 3, 5, 7, 9]));
  });

  test('iterable sortedBy dont modify origin list', () {
    var list = [3, 2, 1];
    var sortedList = list.sortedBy((a, b) => a.compareTo(b));
    expect(list, equals([3, 2, 1]));
    expect(sortedList, equals([1, 2, 3]));
  });

  test('iterable sortedByNum', () {
    expect(() => [0, 1, 2].sortedByNum(null), throwsArgumentError);
    expect(<int>[].sortedByNum((n) => n), equals([]));
    expect([2, 1, 3].sortedByNum((n) => n), equals([1, 2, 3]));

    expect(
        [_Person('Hans', 21), _Person('Gerald', 9), _Person('Detlef', 5)]
            .sortedByNum((p) => p.age)
            .map((p) => p.name),
        equals(['Detlef', 'Gerald', 'Hans']));
  });

  test('iterable sortedByString', () {
    expect(() => [0, 1, 2].sortedByString(null), throwsArgumentError);
    expect(<String>[].sortedByString((n) => n), equals([]));
    expect([2, 1, 3].sortedByString((n) => 'a$n'), equals([1, 2, 3]));

    expect(
        [_Person('Hans', 21), _Person('Gerald', 9), _Person('Detlef', 5)]
            .sortedByString((p) => p.name)
            .map((p) => p.name),
        equals(['Detlef', 'Gerald', 'Hans']));
  });
}

class _Person {
  String name;
  int age;

  _Person(this.name, this.age);

  @override
  String toString() {
    return 'Person($name,$age)';
  }
}
