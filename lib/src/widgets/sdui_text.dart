import 'package:flutter/widgets.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// Represents a Text widget in SDUI.
class SduiText extends SduiWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextDecoration? decoration;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final bool? softWrap;
  final double? letterSpacing;
  final double? wordSpacing;
  final double? height;
  final String? fontFamily;
  final TextDirection? textDirection;

  SduiText(
    this.text, {
    this.style,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.decoration,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.softWrap,
    this.letterSpacing,
    this.wordSpacing,
    this.height,
    this.fontFamily,
    this.textDirection,
  });

  @override
  Widget toFlutterWidget() {
    // Create a merged TextStyle that combines the individual properties with the style
    TextStyle mergedStyle = (style ?? const TextStyle()).copyWith(
      decoration: decoration,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      height: height,
      fontFamily: fontFamily,
    );

    return Text(
      text,
      style: mergedStyle,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      textDirection: textDirection,
    );
  }
}
