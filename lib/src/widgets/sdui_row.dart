import 'package:flutter/widgets.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// Represents a Row widget in SDUI.
class SduiRow extends SduiWidget {
  final List<SduiWidget> children;
  // Add other properties like mainAxisAlignment, crossAxisAlignment etc. as needed

  SduiRow({required this.children});

  @override
  Widget toFlutterWidget() {
    return Row(
      children: children.map((child) => child.toFlutterWidget()).toList(),
    );
  }
}
