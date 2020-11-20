import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('iterable associate', () {
    expect([1, 2, 3].associate((e) => MapEntry('key_$e', e * 100)),
        equals({'key_1': 100, 'key_2': 200, 'key_3': 300}));
  });

  test('iterable associateBy', () {
    expect([1, 2, 3].associateBy((e) => 'key_$e'),
        equals({'key_1': 1, 'key_2': 2, 'key_3': 3}));
    expect(['a', 'ab', 'abc', 'ba'].associateBy((e) => 'length_${e.length}'),
        equals({'length_1': 'a', 'length_2': 'ba', 'length_3': 'abc'}));
  });

  test('iterable associateWith', () {
    expect(
        [1, 2, 3].associateWith((e) => e * 10), equals({1: 10, 2: 20, 3: 30}));

    var i = 0;
    expect(['a', 'b', 'c', 'b'].associateWith((_) => i++),
        equals({'a': 0, 'b': 3, 'c': 2}));
  });
}
