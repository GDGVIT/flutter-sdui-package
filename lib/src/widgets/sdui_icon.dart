import 'package:flutter/material.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// Represents an Icon widget in SDUI.
class SduiIcon extends SduiWidget {
  final IconData? icon;
  final double? size;
  final Color? color;
  final String? semanticLabel;
  final TextDirection? textDirection;
  final double?
      opacity; // Custom property for opacity - will use Opacity widget
  final bool? applyTextScaling;
  final List<Shadow>? shadows;

  SduiIcon({
    this.icon,
    this.size,
    this.color,
    this.semanticLabel,
    this.textDirection,
    this.opacity,
    this.applyTextScaling,
    this.shadows,
  });

  @override
  Widget toFlutterWidget() {
    if (icon == null) {
      // Return a placeholder or an empty widget if icon data is missing
      return const SizedBox.shrink();
    }

    Widget iconWidget = Icon(
      icon,
      size: size,
      color: color,
      semanticLabel: semanticLabel,
      textDirection: textDirection,
      shadows: shadows,
      applyTextScaling: applyTextScaling,
    );

    // Apply opacity if provided
    if (opacity != null && opacity! < 1.0) {
      iconWidget = Opacity(
        opacity: opacity!,
        child: iconWidget,
      );
    }

    return iconWidget;
  }
}
