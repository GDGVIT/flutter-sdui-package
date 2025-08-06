import 'package:flutter/material.dart';
import 'package:flutter_sdui/src/widgets/sdui_column.dart';
import 'package:flutter_sdui/src/widgets/sdui_row.dart';
import 'package:flutter_sdui/src/widgets/sdui_text.dart';
import 'package:flutter_sdui/src/widgets/sdui_image.dart';
import 'package:flutter_sdui/src/widgets/sdui_sized_box.dart';
import 'package:flutter_sdui/src/widgets/sdui_container.dart';
import 'package:flutter_sdui/src/widgets/sdui_scaffold.dart';
import 'package:flutter_sdui/src/widgets/sdui_spacer.dart';
import 'package:flutter_sdui/src/widgets/sdui_icon.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

SduiWidget flutterToSdui(Widget widget) {
  if (widget is Column) {
    return SduiColumn(
      children: widget.children.map(flutterToSdui).toList(),
      mainAxisAlignment: widget.mainAxisAlignment,
      crossAxisAlignment: widget.crossAxisAlignment,
      mainAxisSize: widget.mainAxisSize,
      textDirection: widget.textDirection,
      verticalDirection: widget.verticalDirection,
      textBaseline: widget.textBaseline,
    );
  } else if (widget is Row) {
    return SduiRow(
      children: widget.children.map(flutterToSdui).toList(),
      mainAxisAlignment: widget.mainAxisAlignment,
      crossAxisAlignment: widget.crossAxisAlignment,
      mainAxisSize: widget.mainAxisSize,
      textDirection: widget.textDirection,
      verticalDirection: widget.verticalDirection,
      textBaseline: widget.textBaseline,
    );
  } else if (widget is Text) {
    return SduiText(
      widget.data ?? '',
      style: widget.style,
      textAlign: widget.textAlign,
      overflow: widget.overflow,
      maxLines: widget.maxLines,
      softWrap: widget.softWrap,
      textDirection: widget.textDirection,
    );
  } else if (widget is Image) {
    // Only support Image.network for now
    if (widget.image is NetworkImage) {
      final net = widget.image as NetworkImage;
      return SduiImage(
        net.url,
        width: widget.width,
        height: widget.height,
        fit: widget.fit,
        alignment: widget.alignment is Alignment ? widget.alignment as Alignment : null,
        repeat: widget.repeat,
        color: widget.color,
        colorBlendMode: widget.colorBlendMode,
        centerSlice: widget.centerSlice,
        matchTextDirection: widget.matchTextDirection,
        gaplessPlayback: widget.gaplessPlayback,
        filterQuality: widget.filterQuality,
        cacheWidth: null, // Not available on Image
        cacheHeight: null, // Not available on Image
        scale: null, // Not available on Image
        semanticLabel: widget.semanticLabel,
      );
    } else {
      throw UnimplementedError('Only Image.network is supported');
    }
  } else if (widget is SizedBox) {
    return SduiSizedBox(
      width: widget.width,
      height: widget.height,
      child: widget.child != null ? flutterToSdui(widget.child!) : null,
    );
  } else if (widget is Container) {
    return SduiContainer(
      child: widget.child != null ? flutterToSdui(widget.child!) : null,
      padding: widget.padding is EdgeInsets ? widget.padding as EdgeInsets : null,
      margin: widget.margin is EdgeInsets ? widget.margin as EdgeInsets : null,
      decoration: widget.decoration is BoxDecoration ? widget.decoration as BoxDecoration : null,
      width: null, // Container does not expose width directly
      height: null, // Container does not expose height directly
      color: widget.color,
      alignment: widget.alignment is Alignment ? widget.alignment as Alignment : null,
      constraints: widget.constraints,
      transform: widget.transform,
      transformAlignment: widget.transformAlignment is AlignmentGeometry ? widget.transformAlignment as AlignmentGeometry : null,
      clipBehavior: widget.clipBehavior,
    );
  } else if (widget is Scaffold) {
    return SduiScaffold(
      appBar: widget.appBar != null ? flutterToSdui(widget.appBar!) : null,
      body: widget.body != null ? flutterToSdui(widget.body!) : null,
      floatingActionButton: widget.floatingActionButton != null ? flutterToSdui(widget.floatingActionButton!) : null,
      bottomNavigationBar: widget.bottomNavigationBar != null ? flutterToSdui(widget.bottomNavigationBar!) : null,
      drawer: widget.drawer != null ? flutterToSdui(widget.drawer!) : null,
      endDrawer: widget.endDrawer != null ? flutterToSdui(widget.endDrawer!) : null,
      bottomSheet: widget.bottomSheet != null ? flutterToSdui(widget.bottomSheet!) : null,
      backgroundColor: widget.backgroundColor,
      resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
      primary: widget.primary,
      floatingActionButtonLocation: widget.floatingActionButtonLocation,
      extendBody: widget.extendBody,
      extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
      drawerScrimColor: widget.drawerScrimColor,
      drawerEdgeDragWidth: widget.drawerEdgeDragWidth,
      drawerEnableOpenDragGesture: widget.drawerEnableOpenDragGesture,
      endDrawerEnableOpenDragGesture: widget.endDrawerEnableOpenDragGesture,
    );
  } else if (widget is Spacer) {
    return SduiSpacer(flex: widget.flex);
  } else if (widget is Icon) {
    return SduiIcon(
      icon: widget.icon,
      size: widget.size,
      color: widget.color,
      semanticLabel: widget.semanticLabel,
      textDirection: widget.textDirection,
      opacity: null,
      applyTextScaling: widget.applyTextScaling,
      shadows: widget.shadows,
    );
  }
  throw UnimplementedError('Conversion for [38;5;9m${widget.runtimeType}[0m is not implemented');
} 