import 'package:flutter/widgets.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// Represents a SizedBox widget in SDUI.
class SduiSizedBox extends SduiWidget {
  final double? width;
  final double? height;
  final SduiWidget? child;

  SduiSizedBox({this.width, this.height, this.child});

  @override
  Widget toFlutterWidget() {
    return SizedBox(
      width: width,
      height: height,
      child: child?.toFlutterWidget(),
    );
  }
}
