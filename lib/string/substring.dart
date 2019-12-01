extension StringSubstring on String {

  // TODO needs work
  String allAfter(Pattern pattern) {
    var matchIterator = pattern.allMatches(this).iterator;

    if (matchIterator.moveNext()) {
      var match = matchIterator.current;
      var length = match.end - match.start;
      return this.substring(match.start + length);
    }
    return "";
  }

}