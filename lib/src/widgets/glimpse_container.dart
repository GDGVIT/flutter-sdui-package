import 'package:flutter/widgets.dart';
import 'package:flutter_glimpse/src/widgets/glimpse_widget.dart';

/// A Glimpse widget that represents a Flutter [Container] widget.
///
/// This widget combines common painting, positioning, and sizing widgets
/// into a single convenient widget. It's one of the most versatile widgets
/// in the Glimpse toolkit, supporting decoration, padding, margins, constraints,
/// and transformations.
///
/// Note: The [color] parameter is only applied when [decoration] is null.
/// If both are specified, [decoration] takes precedence.
class GlimpseContainer extends GlimpseWidget {
  /// The widget below this widget in the tree.
  final GlimpseWidget? child;

  /// Empty space to inscribe inside the decoration. The child is placed inside this padding.
  final EdgeInsets? padding;

  /// Empty space to surround the decoration and child.
  final EdgeInsets? margin;

  /// The decoration to paint behind the child.
  /// Handles background color, border radius, borders, shadows, and gradients.
  final BoxDecoration? decoration;

  /// If non-null, requires the child to have exactly this width.
  final double? width;

  /// If non-null, requires the child to have exactly this height.
  final double? height;

  /// The color to paint behind the child. Only used when [decoration] is null.
  final Color? color;

  /// Aligns the child within the container.
  final Alignment? alignment;

  /// Additional constraints to apply to the child.
  final BoxConstraints? constraints;

  /// The transformation matrix to apply before painting the container.
  final Matrix4? transform;

  /// The alignment of the origin for the transformation.
  final AlignmentGeometry? transformAlignment;

  /// The clip behavior for the container's contents.
  final Clip? clipBehavior;

  /// Creates a new [GlimpseContainer] widget.
  ///
  /// All parameters are optional. The container's appearance and behavior
  /// are determined by the combination of properties provided.
  GlimpseContainer({
    this.child,
    this.padding,
    this.margin,
    this.decoration,
    this.width,
    this.height,
    this.color,
    this.alignment,
    this.constraints,
    this.transform,
    this.transformAlignment,
    this.clipBehavior,
  });

  @override
  Widget toFlutterWidget() {
    return Container(
      padding: padding,
      margin: margin,
      decoration: decoration,
      width: width,
      height: height,
      // Only use color if decoration is null to avoid conflicts
      color: decoration == null ? color : null,
      alignment: alignment,
      constraints: constraints,
      transform: transform,
      transformAlignment: transformAlignment,
      clipBehavior: clipBehavior ?? Clip.none,
      child: child?.toFlutterWidget(),
    );
  }
}
