## 2.1.1

- Updated `README.md`.

## 2.1.0

- **Update**: Use `flutter_lints` instead of `pedantic`

## 2.0.0

- **New:** Supercharged is sound null-safe (Flutter 2.0)
- **Breaking:** Renamed and deprecated several methods to avoid conflict Dart's own implementation. See [migration guide](https://github.com/felixblaschke/supercharged/blob/master/migration_v2.md) for more details.
  - `sortedBy` renamed to `sortedBySC`
  - `sortedByNum` renamed to `sortedByNumSC`
  - `sortedByString` renamed to `sortedByStringSC`
  - `sum` renamed to `sumSC`
  - `average` renamed to `averageSC`
  - `firstOrNull` renamed to `firstOrNullSC`
  - `lastOrNull` renamed to `lastOrNullSC`
  - `forEachIndexed` renamed to `forEachIndexedSC`
  - `mapIndexed` renamed to `mapIndexedSC`
- **Breaking:** Removed already deprecated method `between`.
- **Deprecation:** `filter` is now deprecated in favour of Dart's own `where`.

## 1.4.0

- **New:** Auto-import helper class `SuperchargedDart` added.

## 1.3.1

- **Fix:** Optional parameter in Iterable `pickOne` and `pickSome` methods

## 1.3.0

- **New:** Iterable `onEach` method
- **New:** Iterable `onEachIndexed` method
- **New:** Iterable `pickOne` method
- **New:** Iterable `pickSome` method
- **Fix:** Example for Iterable `associateWith` method

## 1.2.0

- **New:** Duration `delay` method

## 1.1.0

- **New:** Iterable `replaceWhere` method
- **New:** Iterable `replaceFirstWhere` method
- **New:** Iterable `maxIndexed` method

## 1.0.1

- **Improved:** documentation

## 1.0.0

- Migrated all non-Flutter extensions from [supercharged](https://pub.dev/packages/supercharged) to this package
