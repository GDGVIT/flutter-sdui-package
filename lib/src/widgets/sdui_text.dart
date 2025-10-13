import 'package:flutter/widgets.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// A server-driven UI widget that represents a Flutter [Text] widget.
///
/// This widget allows displaying text with customizable styling properties
/// that can be defined on the server side and rendered on the client.
///
/// The widget supports all common text properties including font styling,
/// alignment, overflow handling, and text direction.
class SduiText extends SduiWidget {
  /// The text content to display.
  final String text;

  /// The text style to apply. This can be merged with individual style properties.
  final TextStyle? style;

  /// How the text should be aligned horizontally.
  final TextAlign? textAlign;

  /// How visual overflow should be handled.
  final TextOverflow? overflow;

  /// An optional maximum number of lines for the text to span.
  final int? maxLines;

  /// The decoration to paint near the text (e.g., underline).
  final TextDecoration? decoration;

  /// The size of glyphs (in logical pixels) to use when painting the text.
  final double? fontSize;

  /// The typeface thickness to use when painting the text.
  final FontWeight? fontWeight;

  /// The color to use when painting the text.
  final Color? color;

  /// Whether the text should break at soft line breaks.
  final bool? softWrap;

  /// The amount of space (in logical pixels) to add between each letter.
  final double? letterSpacing;

  /// The amount of space (in logical pixels) to add at each sequence of white-space.
  final double? wordSpacing;

  /// The height of this text span, as a multiple of the font size.
  final double? height;

  /// The name of the font to use when painting the text.
  final String? fontFamily;

  /// The directionality of the text.
  final TextDirection? textDirection;

  /// Creates a new [SduiText] widget.
  ///
  /// The [text] parameter is required and specifies the content to display.
  /// All other parameters are optional and can be used to customize the
  /// appearance and behavior of the text.
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
    // Merge individual style properties with the base style
    final TextStyle mergedStyle = (style ?? const TextStyle()).copyWith(
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
