import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('datetime add', () {
    expect(DateTime(2020, 1, 1, 0, 0, 0) + 1.days,
        equals(DateTime(2020, 1, 2, 0, 0, 0)));
    expect(DateTime(2020, 1, 1, 0, 0, 0) + 10.minutes,
        equals(DateTime(2020, 1, 1, 0, 10, 0)));
  });

  test('datetime subtract', () {
    expect(DateTime(2020, 1, 1, 0, 0, 0) - 1.days,
        equals(DateTime(2019, 12, 31, 0, 0, 0)));
    expect(DateTime(2020, 1, 1, 0, 0, 0) - 10.minutes,
        equals(DateTime(2019, 12, 31, 23, 50, 0)));
  });

  test('datetime rangeTo future', () {
    expectDates(
        dates: DateTime(2020).rangeTo(DateTime(2021)),
        first: DateTime(2020, 1, 1),
        last: DateTime(2021, 1, 1),
        length: 367);
    expectDates(
        dates: DateTime(2020, 1, 1).rangeTo(DateTime(2020, 1, 2), by: 1.hours),
        first: DateTime(2020, 1, 1, 0, 00),
        last: DateTime(2020, 1, 2, 0, 00),
        length: 25);
    expectDates(
        dates: DateTime(2020, 1, 1).rangeTo(DateTime(2020, 1, 1)),
        first: DateTime(2020, 1, 1),
        last: DateTime(2020, 1, 1),
        length: 1);
  });

  test('datetime rangeTo past', () {
    expectDates(
        dates: DateTime(2021).rangeTo(DateTime(2020)),
        first: DateTime(2021, 1, 1),
        last: DateTime(2020, 1, 1),
        length: 367);
    expectDates(
        dates: DateTime(2020, 1, 2).rangeTo(DateTime(2020, 1, 1), by: 1.hours),
        first: DateTime(2020, 1, 2, 0, 00),
        last: DateTime(2020, 1, 1, 0, 00),
        length: 25);
  });

  test('datetime until future', () {
    expectDates(
        dates: DateTime(2020).until(DateTime(2021)),
        first: DateTime(2020, 1, 1),
        last: DateTime(2020, 12, 31),
        length: 366);
    expectDates(
        dates: DateTime(2020, 1, 1).until(DateTime(2020, 1, 2), by: 1.hours),
        first: DateTime(2020, 1, 1, 0, 00),
        last: DateTime(2020, 1, 1, 23, 00),
        length: 24);
    expect(DateTime(2020, 1, 1).until(DateTime(2020, 1, 1)).isEmpty, isTrue);
  });

  test('datetime until past', () {
    expectDates(
        dates: DateTime(2021).until(DateTime(2020)),
        first: DateTime(2021, 1, 1),
        last: DateTime(2020, 1, 2),
        length: 366);
    expectDates(
        dates: DateTime(2020, 1, 2).until(DateTime(2020, 1, 1), by: 1.hours),
        first: DateTime(2020, 1, 2, 0, 00),
        last: DateTime(2020, 1, 1, 1, 00),
        length: 24);
  });

  test('datetime duration1', () {
    var date = DateTime.utc(2020, 1, 1);
    var duration = date.duration();
    expect(duration, 438288.hours);
  });

  test('datetime duration2', () {
    var date = DateTime.utc(1960, 3, 31, 14, 32, 32);
    var duration = date.duration();
    expect(duration, -85497.hours - 27.minutes - 28.seconds);
  });

  test('datetime isBetween', () {
    var dateFromOne = DateTime(1959, 3, 31, 14, 32, 32);
    var dateFromTwo = DateTime(1960, 3, 31, 14, 32, 32);
    var dateTo = DateTime(1960, 3, 31, 14, 32, 32);
    expect(
        DateTime(1960, 3, 31, 14, 32, 32).isBetween(dateFromOne, dateTo), true);
    expect(DateTime(2000, 3, 31, 14, 32, 32).isBetween(dateFromOne, dateTo),
        false);
    expect(DateTime(1900, 3, 31, 14, 32, 32).isBetween(dateFromOne, dateTo),
        false);
    expect(
        DateTime(1960, 3, 31, 14, 32, 32).isBetween(dateFromTwo, dateTo), true);
    expect(
        DateTime(2000, 1, 2)
            .isBetween(DateTime(2000, 1, 1), DateTime(2000, 1, 31)),
        true);
    expect(
        DateTime(2000, 1, 1)
            .isBetween(DateTime(2000, 1, 1), DateTime(2000, 1, 1)),
        true);
  });
}

void expectDates(
    {required Iterable<DateTime> dates,
    required DateTime first,
    required DateTime last,
    required int length}) {
  expect(dates.first, equals(first));
  expect(dates.last, equals(last));
  expect(dates.length, equals(length));
}
