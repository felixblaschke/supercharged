extension IterableAggregation<T> on Iterable<T> {
  // TODO doc
  // TODO test
  int sumBy(int Function(T) selector) {
    this.fold(0, (value, element) => value + selector(element));
  }

  // TODO doc
  // TODO test
  double sumByDouble(double Function(T) selector) {
    this.fold(0.0, (value, element) => value + selector(element));
  }

  // TODO doc
  // TODO test
  double averageBy(double Function(T) selector) {
    return this.sumByDouble(selector) / this.length;
  }


}
