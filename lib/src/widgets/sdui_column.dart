import 'package:flutter/widgets.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// Represents a Column widget in SDUI.
class SduiColumn extends SduiWidget {
  final List<SduiWidget> children;
  // Add other properties like mainAxisAlignment, crossAxisAlignment etc. as needed

  SduiColumn({required this.children});

  @override
  Widget toFlutterWidget() {
    return Column(
      children: children.map((child) => child.toFlutterWidget()).toList(),
    );
  }
}
