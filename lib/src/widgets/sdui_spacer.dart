import 'package:flutter/widgets.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// Represents a Spacer widget in SDUI.
class SduiSpacer extends SduiWidget {
  final int flex;

  SduiSpacer({this.flex = 1});

  @override
  Widget toFlutterWidget() {
    return Spacer(flex: flex);
  }
}
