import 'package:flutter/widgets.dart';
import 'package:flutter_glimpse/src/widgets/glimpse_widget.dart';

/// A Glimpse widget that represents a Flutter [Column] widget.
///
/// This widget displays its children in a vertical array, allowing for
/// flexible layout configuration through server-defined properties.
///
/// The column's layout behavior can be controlled through alignment,
/// sizing, and direction properties that mirror Flutter's Column widget.
class GlimpseColumn extends GlimpseWidget {
  /// The widgets below this widget in the tree.
  final List<GlimpseWidget> children;

  /// How the children should be placed along the main axis (vertically).
  final MainAxisAlignment? mainAxisAlignment;

  /// How much space should be occupied in the main axis.
  final MainAxisSize? mainAxisSize;

  /// How the children should be placed along the cross axis (horizontally).
  final CrossAxisAlignment? crossAxisAlignment;

  /// Determines the order to lay children out horizontally.
  final TextDirection? textDirection;

  /// Determines the order to lay children out vertically.
  final VerticalDirection? verticalDirection;

  /// The baseline to use when aligning text within the column.
  final TextBaseline? textBaseline;

  /// Creates a new [GlimpseColumn] widget.
  ///
  /// The [children] parameter is required and defines the widgets to be
  /// laid out vertically. All other parameters are optional and control
  /// the layout behavior.
  GlimpseColumn({
    required this.children,
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    this.textDirection,
    this.verticalDirection,
    this.textBaseline,
  });

  @override
  Widget toFlutterWidget() {
    return Column(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      mainAxisSize: mainAxisSize ?? MainAxisSize.max,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      textDirection: textDirection,
      verticalDirection: verticalDirection ?? VerticalDirection.down,
      textBaseline: textBaseline,
      children: children.map((child) => child.toFlutterWidget()).toList(),
    );
  }
}
