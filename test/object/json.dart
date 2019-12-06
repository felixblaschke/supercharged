import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("object json", () {
    expect(1.0.toJSON(), equals("1.0"));
    expect([1, 2, 3].toJSON(), equals("[1,2,3]"));
    expect({"a": 1, "b": 2}.toJSON(), equals("""{"a":1,"b":2}"""));
  });

  test("object json toEncodable", () {
    var persons = [_Person("Jack"), _Person("Ana")];
    var jsonString = persons.toJSON(toEncodable: (obj) {
      if (obj is _Person) {
        return "@person(${obj.name})";
      }
      return null;
    });
    expect(jsonString, equals("""["@person(Jack)","@person(Ana)"]"""));
  });
}

class _Person {
  String name;

  _Person(this.name);
}
