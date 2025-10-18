import 'package:flutter/widgets.dart';
import 'package:flutter_glimpse/src/widgets/glimpse_widget.dart';

/// A Glimpse widget that represents a Flutter [Spacer] widget.
///
/// This widget creates an adjustable, empty spacer that can be used to tune
/// the spacing between widgets in a [Flex] container, like [Row] or [Column].
///
/// The spacer takes up space proportional to its [flex] value relative to
/// other flexible widgets in the same container.
class GlimpseSpacer extends GlimpseWidget {
  /// The flex factor to use for determining how much space to take up.
  ///
  /// The amount of space this widget takes up is proportional to its [flex]
  /// value divided by the total flex values of all widgets in the container.
  final int flex;

  /// Creates a new [GlimpseSpacer] widget.
  ///
  /// The [flex] parameter defaults to 1, which means the spacer will take
  /// up an equal amount of space as other spacers with the same flex value.
  GlimpseSpacer({this.flex = 1});

  @override
  Widget toFlutterWidget() {
    return Spacer(flex: flex);
  }
}
