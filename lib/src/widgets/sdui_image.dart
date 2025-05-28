import 'package:flutter/widgets.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// Represents an Image widget in SDUI.
class SduiImage extends SduiWidget {
  final String src; // Network URL
  final double? width;
  final double? height;
  final BoxFit? fit;

  SduiImage(this.src, {this.width, this.height, this.fit});

  @override
  Widget toFlutterWidget() {
    // Only network images are supported as per the new requirement.
    if (src.startsWith('http')) {
      return Image.network(src, width: width, height: height, fit: fit);
    } else {
      // Optionally, return a placeholder or throw an error for non-network images.
      // For now, returning an empty SizedBox.
      print(
          "Warning: SduiImage currently only supports network images. Provided src: $src");
      return const SizedBox.shrink();
    }
  }
}
