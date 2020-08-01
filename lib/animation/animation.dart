part of supercharged;

/// Supercharged extension on [Animation] objects.
extension Animation_ on Animation<double> {
  /// Returns an [Animation] after applying [CurveTween] based on begin and end.
  /// Optionally can passe [Curve] as well by pass curve object at last parameter.
  ///
  /// Example:
  /// ```dart
  /// controller.interval(0.0, 1.0, curve:Curves.elasticOut)
  /// ```
  Animation<double> interval(double begin, double end, {Curve curve}) {
    assert(begin >= 0 && end <= 1);
    return drive(CurveTween(
      curve: Interval(begin, end, curve: curve ?? Curves.linear),
    ));
  }

  /// Returns an [Animation] after applying [CurveTween]. You can just pass curve
  /// object.
  ///
  /// Example:
  /// ```dart
  /// controller.interval(0.0, 0.5).curve(Curves.easeInOut)
  /// ```
  Animation<double> curve(Curve curve) {
    return drive(CurveTween(curve: curve));
  }
}
