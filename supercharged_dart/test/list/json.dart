import 'package:test/test.dart';
import 'package:supercharged_dart/supercharged_dart.dart';

void main() {
  test('list json', () {
    expect([1, 2, 3].toJSON(), equals('[1,2,3]'));
  });

  test('object json toEncodable', () {
    var persons = [_Person('Jack'), _Person('Ana')];
    var jsonString = persons.toJSON(toEncodable: (obj) {
      if (obj is _Person) {
        return '@person(${obj.name})';
      }
      return null;
    });
    expect(jsonString, equals('["@person(Jack)","@person(Ana)"]'));
  });
}

class _Person {
  String name;

  _Person(this.name);
}
