import 'package:flutter/widgets.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// Represents a Container widget in SDUI.
class SduiContainer extends SduiWidget {
  final SduiWidget? child;
  final EdgeInsets? padding;
  final BoxDecoration? decoration; // Handles color, borderRadius, border, etc.
  final double? width;
  final double? height;
  // Add other properties like margin, alignment etc.

  SduiContainer({
    this.child,
    this.padding,
    this.decoration,
    this.width,
    this.height,
  });

  @override
  Widget toFlutterWidget() {
    return Container(
      padding: padding,
      decoration: decoration,
      width: width,
      height: height,
      child: child?.toFlutterWidget(),
    );
  }
}
