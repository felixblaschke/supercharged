extension IterableForEachIndexed<T> on Iterable<T> {

  // TODO doc
  // TODO test
  forEachIndexed(Function(int index, T element) forEachIndexed) {
    var index = 0;
    while (this.iterator.moveNext()) {
      forEachIndexed(index, this.iterator.current);
    }
  }
}
