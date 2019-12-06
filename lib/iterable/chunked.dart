extension IterableChunked<T> on Iterable<T> {
  Iterable<List<T>> chunked(int chunkSize) {
    ArgumentError.checkNotNull(chunkSize, "chunkSize");
    if (chunkSize <= 0) {
      throw ArgumentError("chunkSize must be positive integer greater than 0.");
    }

    if (this.length == 0) {
      return Iterable.empty();
    }

    var countOfChunks = (this.length / chunkSize.toDouble()).ceil();

    return Iterable.generate(countOfChunks, (int index) {
      return this.skip(index * chunkSize).take(chunkSize).toList();
    });
  }
}
