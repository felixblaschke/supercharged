import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test('sortAsc', () {
    final list = [1, 3, 2, 4]..sort(sortAsc);

    expect(list.join(','), '1,2,3,4');
  });

  test('sortDesc', () {
    final list = [1, 3, 2, 4]..sort(sortDesc);

    expect(list.join(','), '4,3,2,1');
  });
}
