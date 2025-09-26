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

  String? get iconName {
    if (icon == null) return null;
    
    const codePointToName = <int, String>{
      0xe8b8: 'settings',
      0xe88a: 'home',
      0xe8b6: 'search',
      0xe145: 'add',
      0xe3c9: 'edit',
      0xe88e: 'info',
      0xe318: 'home',
    };
    print(codePointToName);
    return codePointToName[icon!.codePoint];
  }

  @override
  Widget toFlutterWidget() {
    if (icon == null) {
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
