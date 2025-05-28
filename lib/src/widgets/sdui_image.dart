import 'package:flutter/widgets.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// Represents an Image widget in SDUI.
class SduiImage extends SduiWidget {
  final String src; // Network URL
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;
  final ImageRepeat? repeat;
  final Color? color;
  final BlendMode? colorBlendMode;
  final Rect? centerSlice;
  final bool? matchTextDirection;
  final bool? gaplessPlayback;
  final FilterQuality? filterQuality;
  final int? cacheWidth;
  final int? cacheHeight;
  final double? scale;
  final String? semanticLabel;
  final Widget? errorWidget;
  final Widget? loadingWidget;

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
      // Optionally, return a placeholder or throw an error for non-network images.
      // For now, returning an empty SizedBox.
      print(
          "Warning: SduiImage currently only supports network images. Provided src: $src");
      return const SizedBox.shrink();
    }
  }
}
