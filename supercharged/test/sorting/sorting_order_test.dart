import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test('sortAsc extension method', () {
    final list = [1, 3, 2, 4]..sortAsc();

    expect(list.join(','), '1,2,3,4');
  });

  test('sortDesc extension method', () {
    final list = [1, 3, 2, 4]..sortDesc();

    expect(list.join(','), '4,3,2,1');
  });

  test('sortAsc function', () {
    final list = [1, 3, 2, 4]..sort((a, b) => sortAsc(a, b));

    expect(list.join(','), '1,2,3,4');
  });

  test('sortDesc function', () {
    final list = [1, 3, 2, 4]..sort((a, b) => sortDesc(a, b));

    expect(list.join(','), '4,3,2,1');
  });
}
