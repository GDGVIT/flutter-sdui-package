import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_glimpse/src/widgets/glimpse_widget.dart';

/// A Glimpse widget that represents a Flutter [Scaffold] widget.
///
/// This widget implements the basic material design visual layout structure.
/// It provides slots for the most common components of a screen, such as
/// app bars, bodies, floating action buttons, and drawers.
///
/// The scaffold ensures proper Material Design layout behavior and manages
/// component positioning and sizing automatically.
///
/// Note: The [appBar] widget must resolve to a [PreferredSizeWidget]
/// (such as an AppBar) to be properly displayed.
class GlimpseScaffold extends GlimpseWidget {
  /// An app bar to display at the top of the scaffold.
  final GlimpseWidget? appBar;

  /// The primary content of the scaffold.
  final GlimpseWidget? body;

  /// A floating action button displayed over the body.
  final GlimpseWidget? floatingActionButton;

  /// A bottom navigation bar to display at the bottom of the scaffold.
  final GlimpseWidget? bottomNavigationBar;

  /// A navigation drawer that slides in from the left side.
  final GlimpseWidget? drawer;

  /// A navigation drawer that slides in from the right side.
  final GlimpseWidget? endDrawer;

  /// A bottom sheet displayed above the scaffold body.
  final GlimpseWidget? bottomSheet;

  /// The color of the scaffold's background.
  final Color? backgroundColor;

  /// Whether the body should resize when the keyboard appears.
  final bool? resizeToAvoidBottomInset;

  /// Whether this scaffold is being displayed at the top of the screen.
  final bool? primary;

  /// The position of the floating action button.
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  /// Whether the body should extend behind the app bar.
  final bool? extendBody;

  /// Whether the body should extend behind the app bar when fully expanded.
  final bool? extendBodyBehindAppBar;

  /// The color to use for the scrim that obscures primary content while a drawer is open.
  final Color? drawerScrimColor;

  /// The width of the area within which a horizontal swipe will open the drawer.
  final double? drawerEdgeDragWidth;

  /// Whether the drawer can be opened with a drag gesture.
  final bool? drawerEnableOpenDragGesture;

  /// Whether the end drawer can be opened with a drag gesture.
  final bool? endDrawerEnableOpenDragGesture;

  /// Creates a new [GlimpseScaffold] widget.
  ///
  /// All parameters are optional. The scaffold will display only the
  /// components that are provided.
  GlimpseScaffold({
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
      final potentialAppBar = appBar!.toFlutterWidget();
      if (potentialAppBar is PreferredSizeWidget) {
        flutterAppBar = potentialAppBar;
      } else {
        log("Warning: appBar widget for GlimpseScaffold is not a PreferredSizeWidget. It might not render correctly.");
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
