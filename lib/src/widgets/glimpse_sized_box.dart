import 'package:flutter/widgets.dart';
import 'package:flutter_glimpse/src/widgets/glimpse_widget.dart';

/// A Glimpse widget that represents a Flutter [SizedBox] widget.
///
/// This widget forces its child to have a specific width and/or height.
/// It's useful for creating fixed-size layouts or adding spacing between widgets.
///
/// If no dimensions are specified, the widget will try to be as big as possible.
/// If only one dimension is specified, the widget will try to be as big as
/// possible in the other dimension.
class GlimpseSizedBox extends GlimpseWidget {
  /// The width to constrain the child to.
  final double? width;

  /// The height to constrain the child to.
  final double? height;

  /// The widget below this widget in the tree.
  final GlimpseWidget? child;

  /// Creates a new [GlimpseSizedBox] widget.
  ///
  /// All parameters are optional. If neither [width] nor [height] are
  /// specified, the child will be unconstrained. If only one dimension
  /// is specified, the child will be constrained in that dimension only.
  GlimpseSizedBox({this.width, this.height, this.child});

  @override
  Widget toFlutterWidget() {
    return SizedBox(
      width: width,
      height: height,
      child: child?.toFlutterWidget(),
    );
  }
}
