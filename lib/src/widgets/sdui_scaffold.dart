import 'package:flutter/material.dart'; // Scaffold is in material.dart
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// Represents a Scaffold widget in SDUI.
class SduiScaffold extends SduiWidget {
  final SduiWidget? appBar;
  final SduiWidget? body;
  final SduiWidget? floatingActionButton;
  final Color? backgroundColor;
  // Add other Scaffold properties as needed (e.g., bottomNavigationBar, drawer)

  SduiScaffold({
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.backgroundColor,
  });

  @override
  Widget toFlutterWidget() {
    Widget? flutterAppBar;
    if (appBar != null) {
      // Attempt to cast to PreferredSizeWidget. This assumes the SDUI appBar resolves to something like AppBar.
      // More robust handling might be needed if it can be any widget.
      // For now, we expect it to be a widget that can be an AppBar (e.g. SduiContainer styled as an AppBar)
      // or a custom SduiAppBar widget if we introduce one.
      var potentialAppBar = appBar!.toFlutterWidget();
      if (potentialAppBar is PreferredSizeWidget) {
        flutterAppBar = potentialAppBar;
      } else {
        // If it's not a PreferredSizeWidget, wrap it in one if possible or log a warning.
        // For simplicity, we are strict for now. Consider a SduiAppBar sdui widget for proper typing.
        print(
            "Warning: appBar widget for SduiScaffold is not a PreferredSizeWidget. It might not render correctly.");
        // As a fallback, one might wrap it in a simple PreferredSize if it has a defined height.
        // flutterAppBar = PreferredSize(child: potentialAppBar, preferredSize: Size.fromHeight(kToolbarHeight));
      }
    }

    return Scaffold(
      appBar: flutterAppBar as PreferredSizeWidget?,
      body: body?.toFlutterWidget(),
      floatingActionButton: floatingActionButton?.toFlutterWidget(),
      backgroundColor: backgroundColor,
    );
  }
}
