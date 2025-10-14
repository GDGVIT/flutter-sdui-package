import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// A server-driven UI widget that represents a Flutter [Icon] widget.
///
/// This widget displays a graphical icon from Flutter's built-in icon sets
/// or custom icon fonts. It supports comprehensive styling options including
/// size, color, shadows, and opacity.
///
/// The widget can handle missing icon data gracefully by rendering an empty
/// widget instead of throwing an error.
class SduiIcon extends SduiWidget {
  /// The icon to display. If null, an empty widget will be rendered.
  final IconData? icon;

  /// The size of the icon in logical pixels.
  final double? size;

  /// The color to use when drawing the icon.
  final Color? color;

  /// Semantic description of the icon for accessibility.
  final String? semanticLabel;

  /// The text direction to use for resolving the icon.
  final TextDirection? textDirection;

  /// The opacity to apply to the icon. Values should be between 0.0 and 1.0.
  final double? opacity;

  /// Whether to scale the icon based on the text scale factor.
  final bool? applyTextScaling;

  /// A list of shadows to cast behind the icon.
  final List<Shadow>? shadows;

  /// Creates a new [SduiIcon] widget.
  ///
  /// All parameters are optional. If [icon] is null, an empty widget
  /// will be rendered. The [opacity] will be applied using an [Opacity]
  /// widget if the value is less than 1.0.
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
    log(codePointToName.toString());
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

    // Apply opacity wrapper if needed
    if (opacity != null && opacity! < 1.0) {
      iconWidget = Opacity(
        opacity: opacity!,
        child: iconWidget,
      );
    }

    return iconWidget;
  }
}
