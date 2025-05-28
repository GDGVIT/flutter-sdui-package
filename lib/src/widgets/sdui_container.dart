import 'package:flutter/widgets.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// Represents a Container widget in SDUI.
class SduiContainer extends SduiWidget {
  final SduiWidget? child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final BoxDecoration? decoration; // Handles color, borderRadius, border, etc.
  final double? width;
  final double? height;
  final Color? color;
  final Alignment? alignment;
  final BoxConstraints? constraints;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final Clip? clipBehavior;

  SduiContainer({
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
      color: decoration == null
          ? color
          : null, // Only use color if decoration is null
      alignment: alignment,
      constraints: constraints,
      transform: transform,
      transformAlignment: transformAlignment,
      clipBehavior: clipBehavior ?? Clip.none,
      child: child?.toFlutterWidget(),
    );
  }
}
