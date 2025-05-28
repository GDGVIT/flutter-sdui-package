import 'package:flutter/material.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// Represents an Icon widget in SDUI.
class SduiIcon extends SduiWidget {
  final IconData? icon;
  final double? size;
  final Color? color;
  // final String? semanticLabel; // Future enhancement

  SduiIcon({
    required this.icon,
    this.size,
    this.color,
    // this.semanticLabel,
  });

  @override
  Widget toFlutterWidget() {
    if (icon == null) {
      // Return a placeholder or an empty widget if icon data is missing
      return const SizedBox.shrink();
    }
    return Icon(
      icon,
      size: size,
      color: color,
      // semanticLabel: semanticLabel,
    );
  }
}
