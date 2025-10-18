import 'package:flutter/material.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// Represents an AppBar widget in SDUI.
class SduiAppBar extends SduiWidget {
  final String? title;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final bool? centerTitle;
  final List<Widget>? actions;
  final Widget? leading;
  final PreferredSizeWidget? bottom;
  final double? toolbarHeight;
  final double? leadingWidth;
  final bool? automaticallyImplyLeading;
  final Widget? flexibleSpace;
  final double? titleSpacing;
  final double? toolbarOpacity;
  final double? bottomOpacity;

  SduiAppBar({
    this.title,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.centerTitle,
    this.actions,
    this.leading,
    this.bottom,
    this.toolbarHeight,
    this.leadingWidth,
    this.automaticallyImplyLeading,
    this.flexibleSpace,
    this.titleSpacing,
    this.toolbarOpacity,
    this.bottomOpacity,
  });

  @override
  Widget toFlutterWidget() {
    return AppBar(
      title: title != null ? Text(title!) : null,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      centerTitle: centerTitle,
      actions: actions,
      leading: leading,
      bottom: bottom,
      toolbarHeight: toolbarHeight,
      leadingWidth: leadingWidth,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      flexibleSpace: flexibleSpace,
      titleSpacing: titleSpacing,
      toolbarOpacity: toolbarOpacity ?? 1.0,
      bottomOpacity: bottomOpacity ?? 1.0,
    );
  }
}
