part of supercharged;

/// Supercharged Flutter extension on [Animation] objects.
extension AnimationSCF on Animation<double> {
  /// Returns an [Animation] after applying [CurveTween] based on begin and end.
  /// Optionally a [Curve] can also be passed by passing curve parameter after the arguments.
  ///
  /// Example:
  /// ```dart
  /// controller.interval(0.0, 1.0, curve:Curves.elasticOut)
  /// ```
  Animation<double> interval(double begin, double end, {Curve? curve}) {
    assert(begin >= 0 && end <= 1);
    return drive(CurveTween(
      curve: Interval(begin, end, curve: curve ?? Curves.linear),
    ));
  }

  /// Returns an [Animation] after applying [CurveTween] that can just pass as first
  /// argument.
  ///
  /// Example:
  /// ```dart
  /// controller.interval(0.0, 0.5).curve(Curves.easeInOut)
  /// ```
  Animation<double> curve(Curve curve) {
    return drive(CurveTween(curve: curve));
  }
}
