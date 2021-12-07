part of supercharged;

extension ListSort<T> on List<Comparable<T>> {
  /// A supercharged helper that sorts a list ascending. For example:
  ///
  /// 1, 3, 2, 4  =>  1, 2, 3, 4
  ///
  /// a, c, b, d  =>  a, b, c, d
  void sortAsc() {
    sort(_sortAscInternal);
  }

  /// A supercharged helper that sorts a list ascending. For example:
  ///
  /// 1, 3, 2, 4  =>  4, 3, 2, 1
  ///
  /// a, c, b, d  =>  d, c, b, a
  void sortDesc() {
    sort(_sortDescInternal);
  }
}

/// A supercharged helper that sorts a list ascending. For example:
///
/// 1, 3, 2, 4  =>  1, 2, 3, 4
///
/// a, c, b, d  =>  a, b, c, d
int sortAsc<T>(Comparable<T> a, T b) => _sortAscInternal(a, b);

int _sortAscInternal<T>(Comparable<T> a, T b) => a.compareTo(b);

/// A supercharged helper that sorts a list ascending. For example:
///
/// 1, 3, 2, 4  =>  4, 3, 2, 1
///
/// a, c, b, d  =>  d, c, b, a
int sortDesc<T>(T a, Comparable<T> b) => _sortDescInternal(a, b);

int _sortDescInternal<T>(T a, Comparable<T> b) => b.compareTo(a);
