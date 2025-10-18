import 'package:flutter/widgets.dart';
import 'package:flutter_glimpse/src/widgets/glimpse_widget.dart';

/// A Glimpse widget that represents a Flutter [Row] widget.
///
/// This widget displays its children in a horizontal array, allowing for
/// flexible layout configuration through server-defined properties.
///
/// The row's layout behavior can be controlled through alignment,
/// sizing, and direction properties that mirror Flutter's Row widget.
class GlimpseRow extends GlimpseWidget {
  /// The widgets below this widget in the tree.
  final List<GlimpseWidget> children;

  /// How the children should be placed along the main axis (horizontally).
  final MainAxisAlignment? mainAxisAlignment;

  /// How much space should be occupied in the main axis.
  final MainAxisSize? mainAxisSize;

  /// How the children should be placed along the cross axis (vertically).
  final CrossAxisAlignment? crossAxisAlignment;

  /// Determines the order to lay children out horizontally.
  final TextDirection? textDirection;

  /// Determines the order to lay children out vertically.
  final VerticalDirection? verticalDirection;

  /// The baseline to use when aligning text within the row.
  final TextBaseline? textBaseline;

  /// Creates a new [GlimpseRow] widget.
  ///
  /// The [children] parameter is required and defines the widgets to be
  /// laid out horizontally. All other parameters are optional and control
  /// the layout behavior.
  GlimpseRow({
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
    return Row(
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
