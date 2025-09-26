import 'package:flutter/widgets.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// A server-driven UI widget that represents a Flutter [Image] widget.
///
/// This widget supports displaying images from network URLs with comprehensive
/// customization options for sizing, alignment, color blending, and caching.
///
/// Currently, only network images (URLs starting with 'http') are supported.
/// Local assets and file system images are not yet implemented.
///
/// The widget provides loading and error handling capabilities through
/// optional custom widgets.
class SduiImage extends SduiWidget {
  /// The network URL of the image to display.
  final String src;

  /// If non-null, requires the image to have exactly this width.
  final double? width;

  /// If non-null, requires the image to have exactly this height.
  final double? height;

  /// How the image should be inscribed into the space allocated during layout.
  final BoxFit? fit;

  /// How to align the image within its bounds.
  final Alignment? alignment;

  /// How the image should be repeated if it doesn't fill its layout bounds.
  final ImageRepeat? repeat;

  /// A color to blend with the image.
  final Color? color;

  /// The blend mode to use when applying the color.
  final BlendMode? colorBlendMode;

  /// The center slice for a nine-patch image.
  final Rect? centerSlice;

  /// Whether to paint the image in the direction of the text.
  final bool? matchTextDirection;

  /// Whether to continue showing the old image when the new image fails to load.
  final bool? gaplessPlayback;

  /// The quality level to use when scaling the image.
  final FilterQuality? filterQuality;

  /// The target width for image caching.
  final int? cacheWidth;

  /// The target height for image caching.
  final int? cacheHeight;

  /// The scale to place in the ImageInfo object of the image.
  final double? scale;

  /// A semantic description of the image for accessibility.
  final String? semanticLabel;

  /// Widget to display when an error occurs while loading the image.
  final Widget? errorWidget;

  /// Widget to display while the image is loading.
  final Widget? loadingWidget;

  /// Creates a new [SduiImage] widget.
  ///
  /// The [src] parameter is required and must be a valid network URL.
  /// All other parameters are optional and provide customization for
  /// image display and behavior.
  SduiImage(
    this.src, {
    this.width,
    this.height,
    this.fit,
    this.alignment,
    this.repeat,
    this.color,
    this.colorBlendMode,
    this.centerSlice,
    this.matchTextDirection,
    this.gaplessPlayback,
    this.filterQuality,
    this.cacheWidth,
    this.cacheHeight,
    this.scale,
    this.semanticLabel,
    this.errorWidget,
    this.loadingWidget,
  });

  @override
  Widget toFlutterWidget() {
    // Only network images are supported as per the new requirement.
    if (src.startsWith('http')) {
      return Image.network(
        src,
        width: width,
        height: height,
        fit: fit,
        alignment: alignment ?? Alignment.center,
        repeat: repeat ?? ImageRepeat.noRepeat,
        color: color,
        colorBlendMode: colorBlendMode,
        centerSlice: centerSlice,
        matchTextDirection: matchTextDirection ?? false,
        gaplessPlayback: gaplessPlayback ?? false,
        filterQuality: filterQuality ?? FilterQuality.low,
        cacheWidth: cacheWidth,
        cacheHeight: cacheHeight,
        scale: scale ?? 1.0,
        semanticLabel: semanticLabel,
        errorBuilder: errorWidget != null
            ? (context, error, stackTrace) => errorWidget!
            : null,
        loadingBuilder: loadingWidget != null
            ? (context, child, loadingProgress) =>
                loadingProgress == null ? child : loadingWidget!
            : null,
      );
    } else {
      // Return empty widget for non-network URLs with warning
      print(
          "Warning: SduiImage currently only supports network images. Provided src: $src");
      return const SizedBox.shrink();
    }
  }
}
