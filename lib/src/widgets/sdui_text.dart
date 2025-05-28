import 'package:flutter/widgets.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// Represents a Text widget in SDUI.
class SduiText extends SduiWidget {
  final String text;
  final TextStyle? style;

  SduiText(this.text, {this.style});

  @override
  Widget toFlutterWidget() {
    return Text(text, style: style);
  }
}
