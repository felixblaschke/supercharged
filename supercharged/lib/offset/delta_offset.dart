part of supercharged;

/// Supercharged helper to create an [Offset] based on directional deltas.
class DeltaOffset extends Offset {
  /// Creates a [DeltaOffset] based on right  deltas.
  const DeltaOffset.right(
    double right,
  ) : super(right, 0.0);

  /// Creates a [DeltaOffset] based on top  deltas.
  const DeltaOffset.top(
    double top,
  ) : super(0.0, top * -1);

  /// Creates a [DeltaOffset] based on left  deltas.
  const DeltaOffset.left(
    double left,
  ) : super(left * -1, 0.0);

  /// Creates a [DeltaOffset] based on bottom  deltas.
  const DeltaOffset.bottom(
    double bottom,
  ) : super(0.0, bottom);

  /// Creates a [DeltaOffset] based on right and top deltas.
  const DeltaOffset.rightTop(
    double right,
    double top,
  ) : super(right, top * -1);

  /// Creates a [DeltaOffset] based on left and top deltas.
  const DeltaOffset.leftTop(
    double left,
    double top,
  ) : super(left * -1, top * -1);

  /// Creates a [DeltaOffset] based on right and bottom deltas.
  const DeltaOffset.rightBottom(
    double right,
    double bottom,
  ) : super(right, bottom);

  /// Creates a [DeltaOffset] based on left and bottom deltas.
  const DeltaOffset.leftBottom(
    double left,
    double bottom,
  ) : super(left * -1, bottom);
}
