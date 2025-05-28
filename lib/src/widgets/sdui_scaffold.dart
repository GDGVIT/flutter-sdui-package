import 'package:flutter/material.dart'; // Scaffold is in material.dart
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// Represents a Scaffold widget in SDUI.
class SduiScaffold extends SduiWidget {
  final SduiWidget? appBar;
  final SduiWidget? body;
  final SduiWidget? floatingActionButton;
  final SduiWidget? bottomNavigationBar;
  final SduiWidget? drawer;
  final SduiWidget? endDrawer;
  final SduiWidget? bottomSheet;
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset;
  final bool? primary;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final bool? extendBody;
  final bool? extendBodyBehindAppBar;
  final Color? drawerScrimColor;
  final double? drawerEdgeDragWidth;
  final bool? drawerEnableOpenDragGesture;
  final bool? endDrawerEnableOpenDragGesture;

  SduiScaffold({
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.drawer,
    this.endDrawer,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.primary,
    this.floatingActionButtonLocation,
    this.extendBody,
    this.extendBodyBehindAppBar,
    this.drawerScrimColor,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture,
    this.endDrawerEnableOpenDragGesture,
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
      bottomNavigationBar: bottomNavigationBar?.toFlutterWidget(),
      drawer: drawer?.toFlutterWidget(),
      endDrawer: endDrawer?.toFlutterWidget(),
      bottomSheet: bottomSheet?.toFlutterWidget(),
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      primary: primary ?? true,
      floatingActionButtonLocation: floatingActionButtonLocation,
      extendBody: extendBody ?? false,
      extendBodyBehindAppBar: extendBodyBehindAppBar ?? false,
      drawerScrimColor: drawerScrimColor,
      drawerEdgeDragWidth: drawerEdgeDragWidth,
      drawerEnableOpenDragGesture: drawerEnableOpenDragGesture ?? true,
      endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture ?? true,
    );
  }
}
