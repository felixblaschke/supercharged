part of supercharged;

// @codegen begin block flutter

/// Supercharged extension on [Animatable] objects.
extension AnimatableSC<T> on Animatable<T> {
  /// Assigns this to an [AnimationController] specified by [controller] that
  /// computes the animation.
  ///
  /// Returns an [Animation] that represents the animated values.
  ///
  /// Example:
  /// ```dart
  /// 0.0.tweenTo(100.0).animatedBy(controller);
  /// ```
  Animation<T> animatedBy(AnimationController controller) {
    return animate(controller);
  }

  /// Applies non-linear animation behavior like acceleration
  /// by providing a transformation [curve].
  /// You can find many predefined curves in [Curves].
  ///
  /// Example:
  /// ```dart
  /// 0.0.tweenTo(100.0).curved(Curves.easeInOut);
  /// ```
  Animatable<T> curved(Curve curve) {
    return chain(CurveTween(curve: curve));
  }
}

// @codegen end block flutter