import 'package:flutter/material.dart';
import 'package:flutter_glimpse/flutter_glimpse.dart';

GlimpseWidget flutterToGlimpse(Widget widget) {
  if (widget is Column) {
    return GlimpseColumn(
      children: widget.children.map(flutterToGlimpse).toList(),
      mainAxisAlignment: widget.mainAxisAlignment,
      crossAxisAlignment: widget.crossAxisAlignment,
      mainAxisSize: widget.mainAxisSize,
      textDirection: widget.textDirection,
      verticalDirection: widget.verticalDirection,
      textBaseline: widget.textBaseline,
    );
  } else if (widget is Row) {
    return GlimpseRow(
      children: widget.children.map(flutterToGlimpse).toList(),
      mainAxisAlignment: widget.mainAxisAlignment,
      crossAxisAlignment: widget.crossAxisAlignment,
      mainAxisSize: widget.mainAxisSize,
      textDirection: widget.textDirection,
      verticalDirection: widget.verticalDirection,
      textBaseline: widget.textBaseline,
    );
  } else if (widget is Text) {
    return GlimpseText(
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
      return GlimpseImage(
        net.url,
        width: widget.width,
        height: widget.height,
        fit: widget.fit,
        alignment: widget.alignment is Alignment
            ? widget.alignment as Alignment
            : null,
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
    return GlimpseSizedBox(
      width: widget.width,
      height: widget.height,
      child: widget.child != null ? flutterToGlimpse(widget.child!) : null,
    );
  } else if (widget is Container) {
    return GlimpseContainer(
      child: widget.child != null ? flutterToGlimpse(widget.child!) : null,
      padding:
          widget.padding is EdgeInsets ? widget.padding as EdgeInsets : null,
      margin: widget.margin is EdgeInsets ? widget.margin as EdgeInsets : null,
      decoration: widget.decoration is BoxDecoration
          ? widget.decoration as BoxDecoration
          : null,
      width: null, // Container does not expose width directly
      height: null, // Container does not expose height directly
      color: widget.color,
      alignment:
          widget.alignment is Alignment ? widget.alignment as Alignment : null,
      constraints: widget.constraints,
      transform: widget.transform,
      transformAlignment: widget.transformAlignment is AlignmentGeometry
          ? widget.transformAlignment as AlignmentGeometry
          : null,
      clipBehavior: widget.clipBehavior,
    );
  } else if (widget is Scaffold) {
    return GlimpseScaffold(
      appBar: widget.appBar != null ? flutterToGlimpse(widget.appBar!) : null,
      body: widget.body != null ? flutterToGlimpse(widget.body!) : null,
      floatingActionButton: widget.floatingActionButton != null
          ? flutterToGlimpse(widget.floatingActionButton!)
          : null,
      bottomNavigationBar: widget.bottomNavigationBar != null
          ? flutterToGlimpse(widget.bottomNavigationBar!)
          : null,
      drawer: widget.drawer != null ? flutterToGlimpse(widget.drawer!) : null,
      endDrawer:
          widget.endDrawer != null ? flutterToGlimpse(widget.endDrawer!) : null,
      bottomSheet: widget.bottomSheet != null
          ? flutterToGlimpse(widget.bottomSheet!)
          : null,
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
    return GlimpseSpacer(flex: widget.flex);
  } else if (widget is Icon) {
    return GlimpseIcon(
      icon: widget.icon,
      size: widget.size,
      color: widget.color,
      semanticLabel: widget.semanticLabel,
      textDirection: widget.textDirection,
      opacity: null,
      applyTextScaling: widget.applyTextScaling,
      shadows: widget.shadows,
    );
  } else if (widget is AppBar) {
    return GlimpseAppBar(
      title: widget.title is Text ? (widget.title as Text).data : null,
      backgroundColor: widget.backgroundColor,
      foregroundColor: widget.foregroundColor,
      elevation: widget.elevation,
      centerTitle: widget.centerTitle,
      actions: widget.actions,
      leading: widget.leading,
      bottom: widget.bottom,
      toolbarHeight: widget.toolbarHeight,
      leadingWidth: widget.leadingWidth,
      automaticallyImplyLeading: widget.automaticallyImplyLeading,
      flexibleSpace: widget.flexibleSpace,
      titleSpacing: widget.titleSpacing,
      toolbarOpacity: widget.toolbarOpacity,
      bottomOpacity: widget.bottomOpacity,
    );
  }
  throw UnimplementedError(
      'Conversion for ${widget.runtimeType} is not implemented');
}
