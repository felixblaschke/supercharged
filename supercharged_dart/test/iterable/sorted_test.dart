import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';
import 'package:collection/collection.dart';

void main() {
  test('iterable sortedBy', () {
    expect(<int>[].sortedBySC((a, b) => a.compareTo(b)), equals([]));
    expect([3, 1, 5, 9, 7].sortedBySC((a, b) => a.compareTo(b)),
        equals([1, 3, 5, 7, 9]));
    expect([1, 3, 5, 7, 9].sortedBySC((a, b) => a.compareTo(b)),
        equals([1, 3, 5, 7, 9]));
    expect([9, 7, 5, 3, 1].sortedBySC((a, b) => a.compareTo(b)),
        equals([1, 3, 5, 7, 9]));
  });

  test('iterable sortedBy (dart)', () {
    expect([3, 1, 5, 9, 7].sortedBy<num>((a) => a), equals([1, 3, 5, 7, 9]));
  });

  test('iterable sortedBy dont modify origin list', () {
    var list = [3, 2, 1];
    var sortedList = list.sortedBySC((a, b) => a.compareTo(b));
    expect(list, equals([3, 2, 1]));
    expect(sortedList, equals([1, 2, 3]));
  });

  test('iterable sortedByNum', () {
    expect(<int>[].sortedByNumSC((n) => n), equals([]));
    expect([2, 1, 3].sortedByNumSC((n) => n), equals([1, 2, 3]));

    expect(
        [_Person('Hans', 21), _Person('Gerald', 9), _Person('Detlef', 5)]
            .sortedByNumSC((p) => p.age)
            .map((p) => p.name),
        equals(['Detlef', 'Gerald', 'Hans']));
  });

  test('iterable sortedByNum (dart)', () {
    expect([2, 1, 3].sortedBy<num>((n) => n), equals([1, 2, 3]));

    expect(
        [_Person('Hans', 21), _Person('Gerald', 9), _Person('Detlef', 5)]
            .sortedBy<num>((p) => p.age)
            .map((p) => p.name),
        equals(['Detlef', 'Gerald', 'Hans']));
  });


  test('iterable sortedByNum (dart)', () {
    expect(<int>[].sortedByNumSC((n) => n), equals([]));
    expect([2, 1, 3].sortedByNumSC((n) => n), equals([1, 2, 3]));

    expect(
        [_Person('Hans', 21), _Person('Gerald', 9), _Person('Detlef', 5)]
            .sortedByNumSC((p) => p.age)
            .map((p) => p.name),
        equals(['Detlef', 'Gerald', 'Hans']));
  });

  test('iterable sortedByString', () {
    expect(<String>[].sortedByStringSC((n) => n), equals([]));
    expect([2, 1, 3].sortedByStringSC((n) => 'a$n'), equals([1, 2, 3]));

    expect(
        [_Person('Hans', 21), _Person('Gerald', 9), _Person('Detlef', 5)]
            .sortedByStringSC((p) => p.name)
            .map((p) => p.name),
        equals(['Detlef', 'Gerald', 'Hans']));
  });

  test('iterable sortedByString (dart)', () {
    expect([2, 1, 3].sortedBy<String>((n) => 'a$n'), equals([1, 2, 3]));

    expect(
        [_Person('Hans', 21), _Person('Gerald', 9), _Person('Detlef', 5)]
            .sortedBy<String>((p) => p.name)
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
