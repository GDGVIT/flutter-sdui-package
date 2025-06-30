// ignore_for_file: dead_null_aware_expression
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_sdui/src/generated/sdui.pb.dart';
import 'package:flutter_sdui/src/widgets/sdui_column.dart';
import 'package:flutter_sdui/src/widgets/sdui_container.dart';
import 'package:flutter_sdui/src/widgets/sdui_icon.dart';
import 'package:flutter_sdui/src/widgets/sdui_image.dart';
import 'package:flutter_sdui/src/widgets/sdui_row.dart';
import 'package:flutter_sdui/src/widgets/sdui_scaffold.dart';
import 'package:flutter_sdui/src/widgets/sdui_sized_box.dart';
import 'package:flutter_sdui/src/widgets/sdui_spacer.dart';
import 'package:flutter_sdui/src/widgets/sdui_text.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

// Parser for Protobuf definitions for SDUI
class SduiParser {
  // Parse method for JSON data
  static SduiWidget parseJSON(Map<String, dynamic> data) {
    final String? type = data['type']?.toString().toLowerCase();
    switch (type) {
      case 'column':
        return _parseJsonColumn(data);
      case 'row':
        return _parseJsonRow(data);
      case 'text':
        return _parseJsonText(data);
      case 'image':
        return _parseJsonImage(data);
      case 'sized_box':
        return _parseJsonSizedBox(data);
      case 'container':
        return _parseJsonContainer(data);
      case 'scaffold':
        return _parseJsonScaffold(data);
      case 'spacer':
        return _parseJsonSpacer(data);
      case 'icon':
        return _parseJsonIcon(data);
      default:
        return SduiContainer();
    }
  }

  // Parse from Protobuf data model
  static SduiWidget parseProto(SduiWidgetData data) {
    switch (data.type) {
      case WidgetType.COLUMN:
        return _parseProtoColumn(data);
      case WidgetType.ROW:
        return _parseProtoRow(data);
      case WidgetType.TEXT:
        return _parseProtoText(data);
      case WidgetType.IMAGE:
        return _parseProtoImage(data);
      case WidgetType.SIZED_BOX:
        return _parseProtoSizedBox(data);
      case WidgetType.CONTAINER:
        return _parseProtoContainer(data);
      case WidgetType.SCAFFOLD:
        return _parseProtoScaffold(data);
      case WidgetType.SPACER:
        return _parseProtoSpacer(data);
      case WidgetType.ICON:
        return _parseProtoIcon(data);
      default:
        log('Unsupported widget type: ${data.type}');
        return SduiContainer();
    }
  }

  // Helper methods to parse specific widget types from protobuf
  static SduiColumn _parseProtoColumn(SduiWidgetData data) {
    List<SduiWidget> children =
        data.children.map((child) => SduiParser.parseProto(child)).toList();

    return SduiColumn(
      children: children,
      mainAxisAlignment: _parseProtoMainAxisAlignment(data.mainAxisAlignment),
      crossAxisAlignment:
          _parseProtoCrossAxisAlignment(data.crossAxisAlignment),
      mainAxisSize: _parseProtoMainAxisSize(data.mainAxisSize),
      textDirection: _parseProtoTextDirection(data.textDirection),
      verticalDirection: _parseProtoVerticalDirection(data.verticalDirection),
      textBaseline: _parseProtoTextBaseline(data.textBaseline),
    );
  }

  static SduiRow _parseProtoRow(SduiWidgetData data) {
    List<SduiWidget> children =
        data.children.map((child) => SduiParser.parseProto(child)).toList();

    return SduiRow(
      children: children,
      mainAxisAlignment: _parseProtoMainAxisAlignment(data.mainAxisAlignment),
      crossAxisAlignment:
          _parseProtoCrossAxisAlignment(data.crossAxisAlignment),
      mainAxisSize: _parseProtoMainAxisSize(data.mainAxisSize),
      textDirection: _parseProtoTextDirection(data.textDirection),
      verticalDirection: _parseProtoVerticalDirection(data.verticalDirection),
      textBaseline: _parseProtoTextBaseline(data.textBaseline),
    );
  }

  static SduiText _parseProtoText(SduiWidgetData data) {
    String text = data.stringAttributes['text'] ?? '';
    TextStyle? style =
        data.hasTextStyle() ? _parseProtoTextStyle(data.textStyle) : null;

    // Parse additional text properties
    TextAlign? textAlign = _parseProtoTextAlign(data.textAlign);
    TextOverflow? overflow = _parseProtoTextOverflow(data.overflow);
    int? maxLines = data.hasMaxLines() ? data.maxLines : null;
    bool? softWrap = data.hasSoftWrap() ? data.softWrap : null;
    double? letterSpacing = data.hasLetterSpacing() ? data.letterSpacing : null;
    double? wordSpacing = data.hasWordSpacing() ? data.wordSpacing : null;
    double? height = data.hasHeight() ? data.height : null;
    String? fontFamily = data.hasFontFamily() ? data.fontFamily : null;
    TextDirection? textDirection = _parseProtoTextDirection(data.textDirection);

    return SduiText(
      text,
      style: style,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      height: height,
      fontFamily: fontFamily,
      textDirection: textDirection,
    );
  }

  static SduiImage _parseProtoImage(SduiWidgetData data) {
    String src = data.stringAttributes['src'] ?? '';
    double? width = data.doubleAttributes['width'];
    double? height = data.doubleAttributes['height'];
    BoxFit? fit = _parseProtoBoxFit(data.stringAttributes['fit']);

    // Parse additional image properties
    Alignment? alignment = _parseProtoAlignment(data.alignment);
    ImageRepeat? repeat = _parseProtoImageRepeat(data.repeat);
    Color? color = data.hasColor() ? _parseProtoColor(data.color) : null;
    BlendMode? colorBlendMode = _parseProtoBlendMode(data.colorBlendMode);
    Rect? centerSlice =
        data.hasCenterSlice() ? _parseProtoRect(data.centerSlice) : null;
    bool? matchTextDirection =
        data.hasMatchTextDirection() ? data.matchTextDirection : null;
    bool? gaplessPlayback =
        data.hasGaplessPlayback() ? data.gaplessPlayback : null;
    FilterQuality? filterQuality = _parseProtoFilterQuality(data.filterQuality);
    int? cacheWidth = data.hasCacheWidth() ? data.cacheWidth : null;
    int? cacheHeight = data.hasCacheHeight() ? data.cacheHeight : null;
    double? scale = data.hasScale() ? data.scale : null;
    String? semanticLabel = data.hasSemanticLabel() ? data.semanticLabel : null;

    // Parse error and loading widgets
    Widget? errorWidget = data.hasErrorWidget()
        ? SduiParser.parseProto(data.errorWidget).toFlutterWidget()
        : null;
    Widget? loadingWidget = data.hasLoadingWidget()
        ? SduiParser.parseProto(data.loadingWidget).toFlutterWidget()
        : null;

    return SduiImage(
      src,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      color: color,
      colorBlendMode: colorBlendMode,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
      scale: scale,
      semanticLabel: semanticLabel,
      errorWidget: errorWidget,
      loadingWidget: loadingWidget,
    );
  }

  static SduiSizedBox _parseProtoSizedBox(SduiWidgetData data) {
    double? width = data.doubleAttributes['width'];
    double? height = data.doubleAttributes['height'];
    SduiWidget? child =
        data.hasChild() ? SduiParser.parseProto(data.child) : null;
    return SduiSizedBox(width: width, height: height, child: child);
  }

  static SduiContainer _parseProtoContainer(SduiWidgetData data) {
    SduiWidget? child =
        data.hasChild() ? SduiParser.parseProto(data.child) : null;
    EdgeInsets? padding =
        data.hasPadding() ? _parseProtoEdgeInsets(data.padding) : null;
    EdgeInsets? margin =
        data.hasMargin() ? _parseProtoEdgeInsets(data.margin) : null;
    BoxDecoration? decoration = data.hasBoxDecoration()
        ? _parseProtoBoxDecoration(data.boxDecoration)
        : null;
    double? width = data.doubleAttributes['width'];
    double? height = data.doubleAttributes['height'];
    Color? color = data.hasColor() ? _parseProtoColor(data.color) : null;

    // Parse additional container properties
    Alignment? alignment = _parseProtoAlignment(data.alignment);
    BoxConstraints? constraints = data.hasConstraints()
        ? _parseProtoBoxConstraints(data.constraints)
        : null;
    Matrix4? transform =
        data.hasTransform() ? _parseProtoTransform(data.transform) : null;
    AlignmentGeometry? transformAlignment = data.hasTransformAlignment()
        ? _parseProtoAlignmentGeometry(data.transformAlignment)
        : null;
    Clip? clipBehavior = _parseProtoClip(data.clipBehavior);

    return SduiContainer(
      child: child,
      padding: padding,
      margin: margin,
      decoration: decoration,
      width: width,
      height: height,
      color: color,
      alignment: alignment,
      constraints: constraints,
      transform: transform,
      transformAlignment: transformAlignment,
      clipBehavior: clipBehavior,
    );
  }

  static SduiScaffold _parseProtoScaffold(SduiWidgetData data) {
    SduiWidget? appBar =
        data.hasAppBar() ? SduiParser.parseProto(data.appBar) : null;
    SduiWidget? body = data.hasBody() ? SduiParser.parseProto(data.body) : null;
    SduiWidget? floatingActionButton = data.hasFloatingActionButton()
        ? SduiParser.parseProto(data.floatingActionButton)
        : null;
    Color? backgroundColor = data.hasBackgroundColor()
        ? _parseProtoColor(data.backgroundColor)
        : null;

    // Parse additional scaffold properties
    SduiWidget? bottomNavigationBar = data.hasBottomNavigationBar()
        ? SduiParser.parseProto(data.bottomNavigationBar)
        : null;
    SduiWidget? drawer =
        data.hasDrawer() ? SduiParser.parseProto(data.drawer) : null;
    SduiWidget? endDrawer =
        data.hasEndDrawer() ? SduiParser.parseProto(data.endDrawer) : null;
    SduiWidget? bottomSheet =
        data.hasBottomSheet() ? SduiParser.parseProto(data.bottomSheet) : null;
    bool? resizeToAvoidBottomInset = data.hasResizeToAvoidBottomInset()
        ? data.resizeToAvoidBottomInset
        : null;
    bool? primary = data.hasPrimary() ? data.primary : null;
    FloatingActionButtonLocation? fabLocation =
        data.hasFloatingActionButtonLocation()
            ? _parseProtoFabLocation(data.floatingActionButtonLocation)
            : null;
    bool? extendBody = data.hasExtendBody() ? data.extendBody : null;
    bool? extendBodyBehindAppBar =
        data.hasExtendBodyBehindAppBar() ? data.extendBodyBehindAppBar : null;
    Color? drawerScrimColor = data.hasDrawerScrimColor()
        ? _parseProtoColor(data.drawerScrimColor)
        : null;
    double? drawerEdgeDragWidth =
        data.hasDrawerEdgeDragWidth() ? data.drawerEdgeDragWidth : null;
    bool? drawerEnableOpenDragGesture = data.hasDrawerEnableOpenDragGesture()
        ? data.drawerEnableOpenDragGesture
        : null;
    bool? endDrawerEnableOpenDragGesture =
        data.hasEndDrawerEnableOpenDragGesture()
            ? data.endDrawerEnableOpenDragGesture
            : null;

    return SduiScaffold(
      appBar: appBar,
      body: body,
      floatingActionButton: floatingActionButton,
      backgroundColor: backgroundColor,
      bottomNavigationBar: bottomNavigationBar,
      drawer: drawer,
      endDrawer: endDrawer,
      bottomSheet: bottomSheet,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      primary: primary,
      floatingActionButtonLocation: fabLocation,
      extendBody: extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      drawerScrimColor: drawerScrimColor,
      drawerEdgeDragWidth: drawerEdgeDragWidth,
      drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
      endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
    );
  }

  static SduiSpacer _parseProtoSpacer(SduiWidgetData data) {
    int flex = data.intAttributes['flex'] ?? 1;
    return SduiSpacer(flex: flex);
  }

  static SduiIcon _parseProtoIcon(SduiWidgetData data) {
    IconData? iconData = data.hasIcon() ? _parseProtoIconData(data.icon) : null;
    double? size = data.icon.size;
    Color? color =
        data.icon.hasColor() ? _parseProtoColor(data.icon.color) : null;

    // Parse additional icon properties
    String? semanticLabel = data.hasSemanticLabel() ? data.semanticLabel : null;
    TextDirection? textDirection = _parseProtoTextDirection(data.textDirection);
    double? opacity = data.hasOpacity() ? data.opacity : null;
    bool? applyTextScaling =
        data.hasApplyTextScaling() ? data.applyTextScaling : null;
    List<Shadow>? shadows = data.shadows.isNotEmpty
        ? data.shadows.map((s) => _parseProtoShadow(s)).toList()
        : null;

    return SduiIcon(
      icon: iconData,
      size: size,
      color: color,
      semanticLabel: semanticLabel,
      textDirection: textDirection,
      opacity: opacity,
      applyTextScaling: applyTextScaling,
      shadows: shadows,
    );
  }

  // Helper methods for parsing protobuf attribute types

  static BoxFit? _parseProtoBoxFit(String? value) {
    if (value == null) return null;
    switch (value.toLowerCase()) {
      case 'fill':
        return BoxFit.fill;
      case 'contain':
        return BoxFit.contain;
      case 'cover':
        return BoxFit.cover;
      case 'fitwidth':
        return BoxFit.fitWidth;
      case 'fitheight':
        return BoxFit.fitHeight;
      case 'none':
        return BoxFit.none;
      case 'scaledown':
        return BoxFit.scaleDown;
      default:
        return null;
    }
  }

  static TextStyle? _parseProtoTextStyle(TextStyleData data) {
    Color? color = data.hasColor() ? _parseProtoColor(data.color) : null;
    double? fontSize = data.fontSize;
    FontWeight? fontWeight = _parseProtoFontWeight(data.fontWeight);
    TextDecoration? decoration = _parseProtoTextDecoration(data.decoration);
    double? letterSpacing = data.hasLetterSpacing() ? data.letterSpacing : null;
    double? wordSpacing = data.hasWordSpacing() ? data.wordSpacing : null;
    double? height = data.hasHeight() ? data.height : null;
    String? fontFamily = data.hasFontFamily() ? data.fontFamily : null;
    FontStyle? fontStyle = _parseProtoFontStyle(data.fontStyle);

    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      decoration: decoration,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle,
    );
  }

  static FontWeight? _parseProtoFontWeight(String? value) {
    if (value == null) return null;
    switch (value.toLowerCase()) {
      case 'bold':
        return FontWeight.bold;
      case 'normal':
        return FontWeight.normal;
      case 'w100':
        return FontWeight.w100;
      case 'w200':
        return FontWeight.w200;
      case 'w300':
        return FontWeight.w300;
      case 'w400':
        return FontWeight.w400;
      case 'w500':
        return FontWeight.w500;
      case 'w600':
        return FontWeight.w600;
      case 'w700':
        return FontWeight.w700;
      case 'w800':
        return FontWeight.w800;
      case 'w900':
        return FontWeight.w900;
      default:
        return null;
    }
  }

  static EdgeInsets? _parseProtoEdgeInsets(EdgeInsetsData data) {
    if (data.hasAll()) {
      return EdgeInsets.all(data.all);
    }

    return EdgeInsets.only(
      left: data.left,
      top: data.top,
      right: data.right,
      bottom: data.bottom,
    );
  }

  static Color? _parseProtoColor(ColorData data) {
    return Color.fromARGB(
      data.alpha,
      data.red,
      data.green,
      data.blue,
    );
  }

  static IconData? _parseProtoIconData(IconDataMessage data) {
    if (data.hasName()) {
      // Map common icon names to Material icons (expand as needed)
      switch (data.name.toLowerCase()) {
        case 'settings':
          return Icons.settings;
        case 'home':
          return Icons.home;
        case 'search':
          return Icons.search;
        case 'add':
          return Icons.add;
        case 'edit':
          return Icons.edit;
        default:
          break;
      }
    }

    // Fallback to codePoint if available
    if (data.hasCodePoint()) {
      return IconData(
        data.codePoint,
        fontFamily: data.fontFamily.isEmpty ? 'MaterialIcons' : data.fontFamily,
      );
    }

    return null;
  }

  static BoxDecoration? _parseProtoBoxDecoration(BoxDecorationData data) {
    return BoxDecoration(
      color: data.hasColor() ? _parseProtoColor(data.color) : null,
      borderRadius: data.hasBorderRadius()
          ? _parseProtoBorderRadius(data.borderRadius)
          : null,
      // Add more properties as needed
    );
  }

  static BorderRadius? _parseProtoBorderRadius(BorderRadiusData data) {
    if (data.hasAll()) {
      return BorderRadius.all(Radius.circular(data.all));
    } else if (data.hasTopLeft() &&
        data.hasTopRight() &&
        data.hasBottomLeft() &&
        data.hasBottomRight()) {
      return BorderRadius.only(
        topLeft: Radius.circular(data.topLeft),
        topRight: Radius.circular(data.topRight),
        bottomLeft: Radius.circular(data.bottomLeft),
        bottomRight: Radius.circular(data.bottomRight),
      );
    } else if (data.hasTopLeft() ||
        data.hasTopRight() ||
        data.hasBottomLeft() ||
        data.hasBottomRight()) {
      return BorderRadius.only(
        topLeft:
            data.hasTopLeft() ? Radius.circular(data.topLeft) : Radius.zero,
        topRight:
            data.hasTopRight() ? Radius.circular(data.topRight) : Radius.zero,
        bottomLeft: data.hasBottomLeft()
            ? Radius.circular(data.bottomLeft)
            : Radius.zero,
        bottomRight: data.hasBottomRight()
            ? Radius.circular(data.bottomRight)
            : Radius.zero,
      );
    }

    return BorderRadius.circular(8.0); // Example default value
  }

  // New helper methods for parsing new property types

  static MainAxisAlignment? _parseProtoMainAxisAlignment(
      MainAxisAlignmentProto proto) {
    switch (proto) {
      case MainAxisAlignmentProto.MAIN_AXIS_START:
        return MainAxisAlignment.start;
      case MainAxisAlignmentProto.MAIN_AXIS_END:
        return MainAxisAlignment.end;
      case MainAxisAlignmentProto.MAIN_AXIS_CENTER:
        return MainAxisAlignment.center;
      case MainAxisAlignmentProto.SPACE_BETWEEN:
        return MainAxisAlignment.spaceBetween;
      case MainAxisAlignmentProto.SPACE_AROUND:
        return MainAxisAlignment.spaceAround;
      case MainAxisAlignmentProto.SPACE_EVENLY:
        return MainAxisAlignment.spaceEvenly;
      default:
        return null;
    }
  }

  static CrossAxisAlignment? _parseProtoCrossAxisAlignment(
      CrossAxisAlignmentProto proto) {
    switch (proto) {
      case CrossAxisAlignmentProto.CROSS_AXIS_START:
        return CrossAxisAlignment.start;
      case CrossAxisAlignmentProto.CROSS_AXIS_END:
        return CrossAxisAlignment.end;
      case CrossAxisAlignmentProto.CROSS_AXIS_CENTER:
        return CrossAxisAlignment.center;
      case CrossAxisAlignmentProto.STRETCH:
        return CrossAxisAlignment.stretch;
      case CrossAxisAlignmentProto.BASELINE:
        return CrossAxisAlignment.baseline;
      default:
        return null;
    }
  }

  static MainAxisSize? _parseProtoMainAxisSize(MainAxisSizeProto proto) {
    switch (proto) {
      case MainAxisSizeProto.MIN:
        return MainAxisSize.min;
      case MainAxisSizeProto.MAX:
        return MainAxisSize.max;
      default:
        return null;
    }
  }

  static TextDirection? _parseProtoTextDirection(TextDirectionProto proto) {
    switch (proto) {
      case TextDirectionProto.LTR:
        return TextDirection.ltr;
      case TextDirectionProto.RTL:
        return TextDirection.rtl;
      default:
        return null;
    }
  }

  static VerticalDirection? _parseProtoVerticalDirection(
      VerticalDirectionProto proto) {
    switch (proto) {
      case VerticalDirectionProto.UP:
        return VerticalDirection.up;
      case VerticalDirectionProto.DOWN:
        return VerticalDirection.down;
      default:
        return null;
    }
  }

  static TextBaseline? _parseProtoTextBaseline(TextBaselineProto proto) {
    switch (proto) {
      case TextBaselineProto.ALPHABETIC:
        return TextBaseline.alphabetic;
      case TextBaselineProto.IDEOGRAPHIC:
        return TextBaseline.ideographic;
      default:
        return null;
    }
  }

  static Alignment? _parseProtoAlignment(AlignmentData? data) {
    if (data == null) return null;

    if (data.hasXy()) {
      return Alignment(data.xy.x, data.xy.y);
    }

    switch (data.predefined) {
      case AlignmentData_PredefinedAlignment.BOTTOM_CENTER:
        return Alignment.bottomCenter;
      case AlignmentData_PredefinedAlignment.BOTTOM_LEFT:
        return Alignment.bottomLeft;
      case AlignmentData_PredefinedAlignment.BOTTOM_RIGHT:
        return Alignment.bottomRight;
      case AlignmentData_PredefinedAlignment.CENTER_ALIGN:
        return Alignment.center;
      case AlignmentData_PredefinedAlignment.CENTER_LEFT:
        return Alignment.centerLeft;
      case AlignmentData_PredefinedAlignment.CENTER_RIGHT:
        return Alignment.centerRight;
      case AlignmentData_PredefinedAlignment.TOP_CENTER:
        return Alignment.topCenter;
      case AlignmentData_PredefinedAlignment.TOP_LEFT:
        return Alignment.topLeft;
      case AlignmentData_PredefinedAlignment.TOP_RIGHT:
        return Alignment.topRight;
      default:
        return Alignment.center;
    }
  }

  static AlignmentGeometry? _parseProtoAlignmentGeometry(AlignmentData? data) {
    // For now, just use the same alignment parsing
    return _parseProtoAlignment(data);
  }

  static BoxConstraints? _parseProtoBoxConstraints(BoxConstraintsData data) {
    return BoxConstraints(
      minWidth: data.hasMinWidth() ? data.minWidth : 0.0,
      maxWidth: data.hasMaxWidth() ? data.maxWidth : double.infinity,
      minHeight: data.hasMinHeight() ? data.minHeight : 0.0,
      maxHeight: data.hasMaxHeight() ? data.maxHeight : double.infinity,
    );
  }

  static Matrix4? _parseProtoTransform(TransformData data) {
    switch (data.type) {
      case TransformData_TransformType.MATRIX_4X4:
        if (data.matrixValues.length == 16) {
          return Matrix4(
            data.matrixValues[0],
            data.matrixValues[1],
            data.matrixValues[2],
            data.matrixValues[3],
            data.matrixValues[4],
            data.matrixValues[5],
            data.matrixValues[6],
            data.matrixValues[7],
            data.matrixValues[8],
            data.matrixValues[9],
            data.matrixValues[10],
            data.matrixValues[11],
            data.matrixValues[12],
            data.matrixValues[13],
            data.matrixValues[14],
            data.matrixValues[15],
          );
        }
        return null;
      case TransformData_TransformType.TRANSLATE:
        return Matrix4.translationValues(
          data.translateX ?? 0.0,
          data.translateY ?? 0.0,
          data.translateZ ?? 0.0,
        );
      case TransformData_TransformType.ROTATE:
        if (data.hasRotationAngle()) {
          return Matrix4.rotationZ(data.rotationAngle);
        }
        return Matrix4.identity();
      case TransformData_TransformType.SCALE:
        return Matrix4.diagonal3Values(
          data.scaleX ?? 1.0,
          data.scaleY ?? 1.0,
          data.scaleZ ?? 1.0,
        );
      default:
        return null;
    }
  }

  static Clip? _parseProtoClip(ClipProto proto) {
    switch (proto) {
      case ClipProto.CLIP_NONE:
        return Clip.none;
      case ClipProto.HARD_EDGE:
        return Clip.hardEdge;
      case ClipProto.ANTI_ALIAS:
        return Clip.antiAlias;
      case ClipProto.ANTI_ALIAS_WITH_SAVE_LAYER:
        return Clip.antiAliasWithSaveLayer;
      default:
        return null;
    }
  }

  static TextAlign? _parseProtoTextAlign(TextAlignProto proto) {
    switch (proto) {
      case TextAlignProto.LEFT:
        return TextAlign.left;
      case TextAlignProto.RIGHT:
        return TextAlign.right;
      case TextAlignProto.TEXT_ALIGN_CENTER:
        return TextAlign.center;
      case TextAlignProto.JUSTIFY:
        return TextAlign.justify;
      case TextAlignProto.TEXT_ALIGN_START:
        return TextAlign.start;
      case TextAlignProto.TEXT_ALIGN_END:
        return TextAlign.end;
      default:
        return null;
    }
  }

  static TextOverflow? _parseProtoTextOverflow(TextOverflowProto proto) {
    switch (proto) {
      case TextOverflowProto.CLIP:
        return TextOverflow.clip;
      case TextOverflowProto.ELLIPSIS:
        return TextOverflow.ellipsis;
      case TextOverflowProto.FADE:
        return TextOverflow.fade;
      case TextOverflowProto.VISIBLE:
        return TextOverflow.visible;
      default:
        return null;
    }
  }

  static TextDecoration? _parseProtoTextDecoration(TextDecorationProto proto) {
    switch (proto) {
      case TextDecorationProto.TEXT_DECORATION_NONE:
        return TextDecoration.none;
      case TextDecorationProto.UNDERLINE:
        return TextDecoration.underline;
      case TextDecorationProto.OVERLINE:
        return TextDecoration.overline;
      case TextDecorationProto.LINE_THROUGH:
        return TextDecoration.lineThrough;
      default:
        return null;
    }
  }

  static FontStyle? _parseProtoFontStyle(FontStyleProto proto) {
    switch (proto) {
      case FontStyleProto.NORMAL:
        return FontStyle.normal;
      case FontStyleProto.ITALIC:
        return FontStyle.italic;
      default:
        return null;
    }
  }

  static Rect? _parseProtoRect(RectData data) {
    return Rect.fromLTRB(
      data.left,
      data.top,
      data.right,
      data.bottom,
    );
  }

  static ImageRepeat? _parseProtoImageRepeat(ImageRepeatProto proto) {
    switch (proto) {
      case ImageRepeatProto.REPEAT:
        return ImageRepeat.repeat;
      case ImageRepeatProto.REPEAT_X:
        return ImageRepeat.repeatX;
      case ImageRepeatProto.REPEAT_Y:
        return ImageRepeat.repeatY;
      case ImageRepeatProto.NO_REPEAT:
        return ImageRepeat.noRepeat;
      default:
        return null;
    }
  }

  static BlendMode? _parseProtoBlendMode(BlendModeProto proto) {
    switch (proto) {
      case BlendModeProto.CLEAR:
        return BlendMode.clear;
      case BlendModeProto.SRC:
        return BlendMode.src;
      case BlendModeProto.DST:
        return BlendMode.dst;
      case BlendModeProto.SRC_OVER:
        return BlendMode.srcOver;
      case BlendModeProto.DST_OVER:
        return BlendMode.dstOver;
      case BlendModeProto.SRC_IN:
        return BlendMode.srcIn;
      case BlendModeProto.DST_IN:
        return BlendMode.dstIn;
      case BlendModeProto.SRC_OUT:
        return BlendMode.srcOut;
      case BlendModeProto.DST_OUT:
        return BlendMode.dstOut;
      case BlendModeProto.SRC_ATOP:
        return BlendMode.srcATop;
      case BlendModeProto.DST_ATOP:
        return BlendMode.dstATop;
      case BlendModeProto.XOR:
        return BlendMode.xor;
      case BlendModeProto.PLUS:
        return BlendMode.plus;
      case BlendModeProto.MODULATE:
        return BlendMode.modulate;
      case BlendModeProto.SCREEN:
        return BlendMode.screen;
      case BlendModeProto.OVERLAY:
        return BlendMode.overlay;
      case BlendModeProto.DARKEN:
        return BlendMode.darken;
      case BlendModeProto.LIGHTEN:
        return BlendMode.lighten;
      case BlendModeProto.COLOR_DODGE:
        return BlendMode.colorDodge;
      case BlendModeProto.COLOR_BURN:
        return BlendMode.colorBurn;
      case BlendModeProto.HARD_LIGHT:
        return BlendMode.hardLight;
      case BlendModeProto.SOFT_LIGHT:
        return BlendMode.softLight;
      case BlendModeProto.DIFFERENCE:
        return BlendMode.difference;
      case BlendModeProto.EXCLUSION:
        return BlendMode.exclusion;
      case BlendModeProto.MULTIPLY:
        return BlendMode.multiply;
      case BlendModeProto.HUE:
        return BlendMode.hue;
      case BlendModeProto.SATURATION:
        return BlendMode.saturation;
      case BlendModeProto.COLOR:
        return BlendMode.color;
      case BlendModeProto.LUMINOSITY:
        return BlendMode.luminosity;
      default:
        return null;
    }
  }

  static FilterQuality? _parseProtoFilterQuality(FilterQualityProto proto) {
    switch (proto) {
      case FilterQualityProto.NONE_FQ:
        return FilterQuality.none;
      case FilterQualityProto.LOW:
        return FilterQuality.low;
      case FilterQualityProto.MEDIUM:
        return FilterQuality.medium;
      case FilterQualityProto.HIGH:
        return FilterQuality.high;
      default:
        return null;
    }
  }

  static Shadow _parseProtoShadow(ShadowData data) {
    return Shadow(
      color: _parseProtoColor(data.color) ?? Colors.black,
      offset: Offset(data.offsetX, data.offsetY),
      blurRadius: data.blurRadius,
    );
  }

  static FloatingActionButtonLocation? _parseProtoFabLocation(
      FloatingActionButtonLocationProto proto) {
    switch (proto) {
      case FloatingActionButtonLocationProto.FAB_START_TOP:
        return FloatingActionButtonLocation.startTop;
      case FloatingActionButtonLocationProto.FAB_START:
        return FloatingActionButtonLocation.startFloat;
      case FloatingActionButtonLocationProto.FAB_START_FLOAT:
        return FloatingActionButtonLocation.startFloat;
      case FloatingActionButtonLocationProto.FAB_CENTER_TOP:
        return FloatingActionButtonLocation.centerTop;
      case FloatingActionButtonLocationProto.FAB_CENTER:
        return FloatingActionButtonLocation.centerFloat;
      case FloatingActionButtonLocationProto.FAB_CENTER_FLOAT:
        return FloatingActionButtonLocation.centerFloat;
      case FloatingActionButtonLocationProto.FAB_END_TOP:
        return FloatingActionButtonLocation.endTop;
      case FloatingActionButtonLocationProto.FAB_END:
        return FloatingActionButtonLocation.endFloat;
      case FloatingActionButtonLocationProto.FAB_END_FLOAT:
        return FloatingActionButtonLocation.endFloat;
      case FloatingActionButtonLocationProto.FAB_MINI_CENTER_TOP:
        return FloatingActionButtonLocation.miniCenterTop;
      case FloatingActionButtonLocationProto.FAB_MINI_CENTER_FLOAT:
        return FloatingActionButtonLocation.miniCenterFloat;
      case FloatingActionButtonLocationProto.FAB_MINI_START_TOP:
        return FloatingActionButtonLocation.miniStartTop;
      case FloatingActionButtonLocationProto.FAB_MINI_START_FLOAT:
        return FloatingActionButtonLocation.miniStartFloat;
      case FloatingActionButtonLocationProto.FAB_MINI_END_TOP:
        return FloatingActionButtonLocation.miniEndTop;
      case FloatingActionButtonLocationProto.FAB_MINI_END_FLOAT:
        return FloatingActionButtonLocation.miniEndFloat;
      default:
        return null;
    }
  }

  static SduiColumn _parseJsonColumn(Map<String, dynamic> data) {
    final children = (data['children'] as List<dynamic>? ?? [])
        .map((child) => parseJSON(child as Map<String, dynamic>))
        .toList();
    return SduiColumn(
      children: children,
      mainAxisAlignment: _parseJsonMainAxisAlignment(data['mainAxisAlignment']),
      crossAxisAlignment: _parseJsonCrossAxisAlignment(data['crossAxisAlignment']),
      mainAxisSize: _parseJsonMainAxisSize(data['mainAxisSize']),
      textDirection: _parseJsonTextDirection(data['textDirection']),
      verticalDirection: _parseJsonVerticalDirection(data['verticalDirection']),
      textBaseline: _parseJsonTextBaseline(data['textBaseline']),
    );
  }

  static MainAxisAlignment? _parseJsonMainAxisAlignment(dynamic value) {
    if (value == null) return null;
    switch (value.toString().toLowerCase()) {
      case 'start':
        return MainAxisAlignment.start;
      case 'end':
        return MainAxisAlignment.end;
      case 'center':
        return MainAxisAlignment.center;
      case 'spacebetween':
      case 'space_between':
        return MainAxisAlignment.spaceBetween;
      case 'spacearound':
      case 'space_around':
        return MainAxisAlignment.spaceAround;
      case 'spaceevenly':
      case 'space_evenly':
        return MainAxisAlignment.spaceEvenly;
      default:
        return null;
    }
  }

  static CrossAxisAlignment? _parseJsonCrossAxisAlignment(dynamic value) {
    if (value == null) return null;
    switch (value.toString().toLowerCase()) {
      case 'start':
        return CrossAxisAlignment.start;
      case 'end':
        return CrossAxisAlignment.end;
      case 'center':
        return CrossAxisAlignment.center;
      case 'stretch':
        return CrossAxisAlignment.stretch;
      case 'baseline':
        return CrossAxisAlignment.baseline;
      default:
        return null;
    }
  }

  static MainAxisSize? _parseJsonMainAxisSize(dynamic value) {
    if (value == null) return null;
    switch (value.toString().toLowerCase()) {
      case 'min':
        return MainAxisSize.min;
      case 'max':
        return MainAxisSize.max;
      default:
        return null;
    }
  }

  static TextDirection? _parseJsonTextDirection(dynamic value) {
    if (value == null) return null;
    switch (value.toString().toLowerCase()) {
      case 'ltr':
        return TextDirection.ltr;
      case 'rtl':
        return TextDirection.rtl;
      default:
        return null;
    }
  }

  static VerticalDirection? _parseJsonVerticalDirection(dynamic value) {
    if (value == null) return null;
    switch (value.toString().toLowerCase()) {
      case 'up':
        return VerticalDirection.up;
      case 'down':
        return VerticalDirection.down;
      default:
        return null;
    }
  }

  static TextBaseline? _parseJsonTextBaseline(dynamic value) {
    if (value == null) return null;
    switch (value.toString().toLowerCase()) {
      case 'alphabetic':
        return TextBaseline.alphabetic;
      case 'ideographic':
        return TextBaseline.ideographic;
      default:
        return null;
    }
  }

  static SduiRow _parseJsonRow(Map<String, dynamic> data) {
    final children = (data['children'] as List<dynamic>? ?? [])
        .map((child) => parseJSON(child as Map<String, dynamic>))
        .toList();
    return SduiRow(
      children: children,
      mainAxisAlignment: _parseJsonMainAxisAlignment(data['mainAxisAlignment']),
      crossAxisAlignment: _parseJsonCrossAxisAlignment(data['crossAxisAlignment']),
      mainAxisSize: _parseJsonMainAxisSize(data['mainAxisSize']),
      textDirection: _parseJsonTextDirection(data['textDirection']),
      verticalDirection: _parseJsonVerticalDirection(data['verticalDirection']),
      textBaseline: _parseJsonTextBaseline(data['textBaseline']),
    );
  }

  static SduiText _parseJsonText(Map<String, dynamic> data) {
    return SduiText(
      data['text']?.toString() ?? '',
      style: _parseJsonTextStyle(data['style']),
      textAlign: _parseJsonTextAlign(data['textAlign']),
      overflow: _parseJsonTextOverflow(data['overflow']),
      maxLines: data['maxLines'] is int ? data['maxLines'] : int.tryParse(data['maxLines']?.toString() ?? ''),
      softWrap: data['softWrap'] is bool ? data['softWrap'] : null,
      letterSpacing: (data['letterSpacing'] is num) ? (data['letterSpacing'] as num).toDouble() : null,
      wordSpacing: (data['wordSpacing'] is num) ? (data['wordSpacing'] as num).toDouble() : null,
      height: (data['height'] is num) ? (data['height'] as num).toDouble() : null,
      fontFamily: data['fontFamily']?.toString(),
      textDirection: _parseJsonTextDirection(data['textDirection']),
    );
  }

  static SduiImage _parseJsonImage(Map<String, dynamic> data) {
    SduiWidget? errorSduiWidget = data['errorWidget'] is Map<String, dynamic> ? parseJSON(data['errorWidget']) : null;
    SduiWidget? loadingSduiWidget = data['loadingWidget'] is Map<String, dynamic> ? parseJSON(data['loadingWidget']) : null;
    return SduiImage(
      data['src']?.toString() ?? '',
      width: (data['width'] is num) ? (data['width'] as num).toDouble() : null,
      height: (data['height'] is num) ? (data['height'] as num).toDouble() : null,
      fit: _parseJsonBoxFit(data['fit']),
      alignment: _parseJsonAlignment(data['alignment']),
      repeat: _parseJsonImageRepeat(data['repeat']),
      color: _parseJsonColor(data['color']),
      colorBlendMode: _parseJsonBlendMode(data['colorBlendMode']),
      centerSlice: _parseJsonRect(data['centerSlice']),
      matchTextDirection: data['matchTextDirection'] is bool ? data['matchTextDirection'] : null,
      gaplessPlayback: data['gaplessPlayback'] is bool ? data['gaplessPlayback'] : null,
      filterQuality: _parseJsonFilterQuality(data['filterQuality']),
      cacheWidth: data['cacheWidth'] is int ? data['cacheWidth'] : int.tryParse(data['cacheWidth']?.toString() ?? ''),
      cacheHeight: data['cacheHeight'] is int ? data['cacheHeight'] : int.tryParse(data['cacheHeight']?.toString() ?? ''),
      scale: (data['scale'] is num) ? (data['scale'] as num).toDouble() : null,
      semanticLabel: data['semanticLabel']?.toString(),
      errorWidget: errorSduiWidget != null ? errorSduiWidget.toFlutterWidget() : null,
      loadingWidget: loadingSduiWidget != null ? loadingSduiWidget.toFlutterWidget() : null,
    );
  }

  static SduiSizedBox _parseJsonSizedBox(Map<String, dynamic> data) {
    return SduiSizedBox(
      width: (data['width'] is num) ? (data['width'] as num).toDouble() : null,
      height: (data['height'] is num) ? (data['height'] as num).toDouble() : null,
      child: data['child'] is Map<String, dynamic> ? parseJSON(data['child']) : null,
    );
  }

  static SduiContainer _parseJsonContainer(Map<String, dynamic> data) {
    return SduiContainer(
      child: data['child'] is Map<String, dynamic> ? parseJSON(data['child']) : null,
      padding: _parseJsonEdgeInsets(data['padding']),
      margin: _parseJsonEdgeInsets(data['margin']),
      decoration: _parseJsonBoxDecoration(data['decoration']),
      width: (data['width'] is num) ? (data['width'] as num).toDouble() : null,
      height: (data['height'] is num) ? (data['height'] as num).toDouble() : null,
      color: _parseJsonColor(data['color']),
      alignment: _parseJsonAlignment(data['alignment']),
      constraints: _parseJsonBoxConstraints(data['constraints']),
      transform: _parseJsonTransform(data['transform']),
      transformAlignment: _parseJsonAlignmentGeometry(data['transformAlignment']),
      clipBehavior: _parseJsonClip(data['clipBehavior']),
    );
  }

  static SduiScaffold _parseJsonScaffold(Map<String, dynamic> data) {
    return SduiScaffold(
      appBar: data['appBar'] is Map<String, dynamic> ? parseJSON(data['appBar']) : null,
      body: data['body'] is Map<String, dynamic> ? parseJSON(data['body']) : null,
      floatingActionButton: data['floatingActionButton'] is Map<String, dynamic> ? parseJSON(data['floatingActionButton']) : null,
      bottomNavigationBar: data['bottomNavigationBar'] is Map<String, dynamic> ? parseJSON(data['bottomNavigationBar']) : null,
      drawer: data['drawer'] is Map<String, dynamic> ? parseJSON(data['drawer']) : null,
      endDrawer: data['endDrawer'] is Map<String, dynamic> ? parseJSON(data['endDrawer']) : null,
      bottomSheet: data['bottomSheet'] is Map<String, dynamic> ? parseJSON(data['bottomSheet']) : null,
      backgroundColor: _parseJsonColor(data['backgroundColor']),
      resizeToAvoidBottomInset: data['resizeToAvoidBottomInset'] is bool ? data['resizeToAvoidBottomInset'] : null,
      primary: data['primary'] is bool ? data['primary'] : null,
      floatingActionButtonLocation: _parseJsonFabLocation(data['floatingActionButtonLocation']),
      extendBody: data['extendBody'] is bool ? data['extendBody'] : null,
      extendBodyBehindAppBar: data['extendBodyBehindAppBar'] is bool ? data['extendBodyBehindAppBar'] : null,
      drawerScrimColor: _parseJsonColor(data['drawerScrimColor']),
      drawerEdgeDragWidth: (data['drawerEdgeDragWidth'] is num) ? (data['drawerEdgeDragWidth'] as num).toDouble() : null,
      drawerEnableOpenDragGesture: data['drawerEnableOpenDragGesture'] is bool ? data['drawerEnableOpenDragGesture'] : null,
      endDrawerEnableOpenDragGesture: data['endDrawerEnableOpenDragGesture'] is bool ? data['endDrawerEnableOpenDragGesture'] : null,
    );
  }

  static SduiSpacer _parseJsonSpacer(Map<String, dynamic> data) {
    return SduiSpacer(
      flex: data['flex'] is int ? data['flex'] : int.tryParse(data['flex']?.toString() ?? '') ?? 1,
    );
  }

  static SduiIcon _parseJsonIcon(Map<String, dynamic> data) {
    return SduiIcon(
      icon: _parseJsonIconData(data['icon']),
      size: (data['size'] is num) ? (data['size'] as num).toDouble() : null,
      color: _parseJsonColor(data['color']),
      semanticLabel: data['semanticLabel']?.toString(),
      textDirection: _parseJsonTextDirection(data['textDirection']),
      opacity: (data['opacity'] is num) ? (data['opacity'] as num).toDouble() : null,
      applyTextScaling: data['applyTextScaling'] is bool ? data['applyTextScaling'] : null,
      shadows: _parseJsonShadows(data['shadows']),
    );
  }

  // --- JSON attribute helpers (implement as needed, similar to proto helpers) ---
  static TextStyle? _parseJsonTextStyle(dynamic value) {
    if (value is! Map<String, dynamic>) return null;
    return TextStyle(
      color: _parseJsonColor(value['color']),
      fontSize: (value['fontSize'] is num) ? (value['fontSize'] as num).toDouble() : null,
      fontWeight: _parseJsonFontWeight(value['fontWeight']),
      decoration: _parseJsonTextDecoration(value['decoration']),
      letterSpacing: (value['letterSpacing'] is num) ? (value['letterSpacing'] as num).toDouble() : null,
      wordSpacing: (value['wordSpacing'] is num) ? (value['wordSpacing'] as num).toDouble() : null,
      height: (value['height'] is num) ? (value['height'] as num).toDouble() : null,
      fontFamily: value['fontFamily']?.toString(),
      fontStyle: _parseJsonFontStyle(value['fontStyle']),
    );
  }

  static TextAlign? _parseJsonTextAlign(dynamic value) {
    if (value == null) return null;
    switch (value.toString().toLowerCase()) {
      case 'left':
        return TextAlign.left;
      case 'right':
        return TextAlign.right;
      case 'center':
        return TextAlign.center;
      case 'justify':
        return TextAlign.justify;
      case 'start':
        return TextAlign.start;
      case 'end':
        return TextAlign.end;
      default:
        return null;
    }
  }

  static TextOverflow? _parseJsonTextOverflow(dynamic value) {
    if (value == null) return null;
    switch (value.toString().toLowerCase()) {
      case 'clip':
        return TextOverflow.clip;
      case 'ellipsis':
        return TextOverflow.ellipsis;
      case 'fade':
        return TextOverflow.fade;
      case 'visible':
        return TextOverflow.visible;
      default:
        return null;
    }
  }

  static TextDecoration? _parseJsonTextDecoration(dynamic value) {
    if (value == null) return null;
    switch (value.toString().toLowerCase()) {
      case 'none':
        return TextDecoration.none;
      case 'underline':
        return TextDecoration.underline;
      case 'overline':
        return TextDecoration.overline;
      case 'line_through':
      case 'linethrough':
        return TextDecoration.lineThrough;
      default:
        return null;
    }
  }

  static FontWeight? _parseJsonFontWeight(dynamic value) {
    if (value == null) return null;
    switch (value.toString().toLowerCase()) {
      case 'bold':
        return FontWeight.bold;
      case 'normal':
        return FontWeight.normal;
      case 'w100':
        return FontWeight.w100;
      case 'w200':
        return FontWeight.w200;
      case 'w300':
        return FontWeight.w300;
      case 'w400':
        return FontWeight.w400;
      case 'w500':
        return FontWeight.w500;
      case 'w600':
        return FontWeight.w600;
      case 'w700':
        return FontWeight.w700;
      case 'w800':
        return FontWeight.w800;
      case 'w900':
        return FontWeight.w900;
      default:
        return null;
    }
  }

  static FontStyle? _parseJsonFontStyle(dynamic value) {
    if (value == null) return null;
    switch (value.toString().toLowerCase()) {
      case 'italic':
        return FontStyle.italic;
      case 'normal':
        return FontStyle.normal;
      default:
        return null;
    }
  }

  static BoxFit? _parseJsonBoxFit(dynamic value) {
    if (value == null) return null;
    switch (value.toString().toLowerCase()) {
      case 'fill':
        return BoxFit.fill;
      case 'contain':
        return BoxFit.contain;
      case 'cover':
        return BoxFit.cover;
      case 'fitwidth':
      case 'fit_width':
        return BoxFit.fitWidth;
      case 'fitheight':
      case 'fit_height':
        return BoxFit.fitHeight;
      case 'none':
        return BoxFit.none;
      case 'scaledown':
      case 'scale_down':
        return BoxFit.scaleDown;
      default:
        return null;
    }
  }

  static Alignment? _parseJsonAlignment(dynamic value) {
    if (value == null) return null;
    if (value is String) {
      switch (value.toLowerCase()) {
        case 'bottomcenter':
        case 'bottom_center':
          return Alignment.bottomCenter;
        case 'bottomleft':
        case 'bottom_left':
          return Alignment.bottomLeft;
        case 'bottomright':
        case 'bottom_right':
          return Alignment.bottomRight;
        case 'center':
          return Alignment.center;
        case 'centerleft':
        case 'center_left':
          return Alignment.centerLeft;
        case 'centerright':
        case 'center_right':
          return Alignment.centerRight;
        case 'topcenter':
        case 'top_center':
          return Alignment.topCenter;
        case 'topleft':
        case 'top_left':
          return Alignment.topLeft;
        case 'topright':
        case 'top_right':
          return Alignment.topRight;
        default:
          return Alignment.center;
      }
    } else if (value is Map<String, dynamic>) {
      if (value.containsKey('x') && value.containsKey('y')) {
        return Alignment(
          (value['x'] is num) ? (value['x'] as num).toDouble() : 0.0,
          (value['y'] is num) ? (value['y'] as num).toDouble() : 0.0,
        );
      }
    }
    return null;
  }

  static ImageRepeat? _parseJsonImageRepeat(dynamic value) {
    if (value == null) return null;
    switch (value.toString().toLowerCase()) {
      case 'repeat':
        return ImageRepeat.repeat;
      case 'repeatx':
      case 'repeat_x':
        return ImageRepeat.repeatX;
      case 'repeaty':
      case 'repeat_y':
        return ImageRepeat.repeatY;
      case 'norepeat':
      case 'no_repeat':
        return ImageRepeat.noRepeat;
      default:
        return null;
    }
  }

  static Color? _parseJsonColor(dynamic value) {
    if (value == null) return null;
    if (value is String) {
      // Accept hex string: #RRGGBB or #AARRGGBB
      String hex = value.replaceAll('#', '');
      if (hex.length == 6) {
        hex = 'FF$hex';
      }
      if (hex.length == 8) {
        return Color(int.parse(hex, radix: 16));
      }
    } else if (value is Map<String, dynamic>) {
      int a = value['alpha'] ?? 255;
      int r = value['red'] ?? 0;
      int g = value['green'] ?? 0;
      int b = value['blue'] ?? 0;
      return Color.fromARGB(a, r, g, b);
    }
    return null;
  }

  static BlendMode? _parseJsonBlendMode(dynamic value) {
    if (value == null) return null;
    switch (value.toString().toLowerCase()) {
      case 'clear': return BlendMode.clear;
      case 'src': return BlendMode.src;
      case 'dst': return BlendMode.dst;
      case 'srcover':
      case 'src_over': return BlendMode.srcOver;
      case 'dstover':
      case 'dst_over': return BlendMode.dstOver;
      case 'srcin':
      case 'src_in': return BlendMode.srcIn;
      case 'dstin':
      case 'dst_in': return BlendMode.dstIn;
      case 'srcout':
      case 'src_out': return BlendMode.srcOut;
      case 'dstout':
      case 'dst_out': return BlendMode.dstOut;
      case 'srcatop':
      case 'src_atop': return BlendMode.srcATop;
      case 'dstatop':
      case 'dst_atop': return BlendMode.dstATop;
      case 'xor': return BlendMode.xor;
      case 'plus': return BlendMode.plus;
      case 'modulate': return BlendMode.modulate;
      case 'screen': return BlendMode.screen;
      case 'overlay': return BlendMode.overlay;
      case 'darken': return BlendMode.darken;
      case 'lighten': return BlendMode.lighten;
      case 'colordodge':
      case 'color_dodge': return BlendMode.colorDodge;
      case 'colorburn':
      case 'color_burn': return BlendMode.colorBurn;
      case 'hardlight':
      case 'hard_light': return BlendMode.hardLight;
      case 'softlight':
      case 'soft_light': return BlendMode.softLight;
      case 'difference': return BlendMode.difference;
      case 'exclusion': return BlendMode.exclusion;
      case 'multiply': return BlendMode.multiply;
      case 'hue': return BlendMode.hue;
      case 'saturation': return BlendMode.saturation;
      case 'color': return BlendMode.color;
      case 'luminosity': return BlendMode.luminosity;
      default: return null;
    }
  }

  static Rect? _parseJsonRect(dynamic value) {
    if (value is Map<String, dynamic>) {
      return Rect.fromLTRB(
        (value['left'] is num) ? (value['left'] as num).toDouble() : 0.0,
        (value['top'] is num) ? (value['top'] as num).toDouble() : 0.0,
        (value['right'] is num) ? (value['right'] as num).toDouble() : 0.0,
        (value['bottom'] is num) ? (value['bottom'] as num).toDouble() : 0.0,
      );
    }
    return null;
  }

  static FilterQuality? _parseJsonFilterQuality(dynamic value) {
    if (value == null) return null;
    switch (value.toString().toLowerCase()) {
      case 'none': return FilterQuality.none;
      case 'low': return FilterQuality.low;
      case 'medium': return FilterQuality.medium;
      case 'high': return FilterQuality.high;
      default: return null;
    }
  }

  static EdgeInsets? _parseJsonEdgeInsets(dynamic value) {
    if (value is Map<String, dynamic>) {
      if (value.containsKey('all')) {
        return EdgeInsets.all((value['all'] as num).toDouble());
      }
      return EdgeInsets.only(
        left: (value['left'] is num) ? (value['left'] as num).toDouble() : 0.0,
        top: (value['top'] is num) ? (value['top'] as num).toDouble() : 0.0,
        right: (value['right'] is num) ? (value['right'] as num).toDouble() : 0.0,
        bottom: (value['bottom'] is num) ? (value['bottom'] as num).toDouble() : 0.0,
      );
    }
    return null;
  }

  static BoxDecoration? _parseJsonBoxDecoration(dynamic value) {
    if (value is! Map<String, dynamic>) return null;
    return BoxDecoration(
      color: _parseJsonColor(value['color']),
      borderRadius: _parseJsonBorderRadius(value['borderRadius']),
      // Add more as needed
    );
  }

  static BorderRadius? _parseJsonBorderRadius(dynamic value) {
    if (value is Map<String, dynamic>) {
      if (value.containsKey('all')) {
        return BorderRadius.all(Radius.circular((value['all'] as num).toDouble()));
      }
      return BorderRadius.only(
        topLeft: value['topLeft'] != null ? Radius.circular((value['topLeft'] as num).toDouble()) : Radius.zero,
        topRight: value['topRight'] != null ? Radius.circular((value['topRight'] as num).toDouble()) : Radius.zero,
        bottomLeft: value['bottomLeft'] != null ? Radius.circular((value['bottomLeft'] as num).toDouble()) : Radius.zero,
        bottomRight: value['bottomRight'] != null ? Radius.circular((value['bottomRight'] as num).toDouble()) : Radius.zero,
      );
    }
    return null;
  }

  static BoxConstraints? _parseJsonBoxConstraints(dynamic value) {
    if (value is Map<String, dynamic>) {
      return BoxConstraints(
        minWidth: (value['minWidth'] is num) ? (value['minWidth'] as num).toDouble() : 0.0,
        maxWidth: (value['maxWidth'] is num) ? (value['maxWidth'] as num).toDouble() : double.infinity,
        minHeight: (value['minHeight'] is num) ? (value['minHeight'] as num).toDouble() : 0.0,
        maxHeight: (value['maxHeight'] is num) ? (value['maxHeight'] as num).toDouble() : double.infinity,
      );
    }
    return null;
  }

  static Matrix4? _parseJsonTransform(dynamic value) {
    if (value is Map<String, dynamic>) {
      if (value['type'] == 'matrix4' && value['matrixValues'] is List) {
        final vals = value['matrixValues'] as List;
        if (vals.length == 16) {
          return Matrix4(
            (vals[0] as num).toDouble(), (vals[1] as num).toDouble(), (vals[2] as num).toDouble(), (vals[3] as num).toDouble(),
            (vals[4] as num).toDouble(), (vals[5] as num).toDouble(), (vals[6] as num).toDouble(), (vals[7] as num).toDouble(),
            (vals[8] as num).toDouble(), (vals[9] as num).toDouble(), (vals[10] as num).toDouble(), (vals[11] as num).toDouble(),
            (vals[12] as num).toDouble(), (vals[13] as num).toDouble(), (vals[14] as num).toDouble(), (vals[15] as num).toDouble(),
          );
        }
      } else if (value['type'] == 'translate') {
        return Matrix4.translationValues(
          (value['x'] as num?)?.toDouble() ?? 0.0,
          (value['y'] as num?)?.toDouble() ?? 0.0,
          (value['z'] as num?)?.toDouble() ?? 0.0,
        );
      } else if (value['type'] == 'rotate') {
        return Matrix4.rotationZ((value['angle'] as num?)?.toDouble() ?? 0.0);
      } else if (value['type'] == 'scale') {
        return Matrix4.diagonal3Values(
          (value['x'] as num?)?.toDouble() ?? 1.0,
          (value['y'] as num?)?.toDouble() ?? 1.0,
          (value['z'] as num?)?.toDouble() ?? 1.0,
        );
      }
    }
    return null;
  }

  static AlignmentGeometry? _parseJsonAlignmentGeometry(dynamic value) {
    return _parseJsonAlignment(value);
  }

  static Clip? _parseJsonClip(dynamic value) {
    if (value == null) return null;
    switch (value.toString().toLowerCase()) {
      case 'none': return Clip.none;
      case 'hardedge':
      case 'hard_edge': return Clip.hardEdge;
      case 'antialias': return Clip.antiAlias;
      case 'antialiaswithsavelayer':
      case 'antialias_with_save_layer': return Clip.antiAliasWithSaveLayer;
      default: return null;
    }
  }

  static FloatingActionButtonLocation? _parseJsonFabLocation(dynamic value) {
    if (value == null) return null;
    switch (value.toString().toLowerCase()) {
      case 'starttop':
      case 'start_top': return FloatingActionButtonLocation.startTop;
      case 'start':
      case 'startfloat':
      case 'start_float': return FloatingActionButtonLocation.startFloat;
      case 'centertop':
      case 'center_top': return FloatingActionButtonLocation.centerTop;
      case 'center':
      case 'centerfloat':
      case 'center_float': return FloatingActionButtonLocation.centerFloat;
      case 'endtop':
      case 'end_top': return FloatingActionButtonLocation.endTop;
      case 'end':
      case 'endfloat':
      case 'end_float': return FloatingActionButtonLocation.endFloat;
      case 'minicentertop':
      case 'mini_center_top': return FloatingActionButtonLocation.miniCenterTop;
      case 'minicenterfloat':
      case 'mini_center_float': return FloatingActionButtonLocation.miniCenterFloat;
      case 'ministarttop':
      case 'mini_start_top': return FloatingActionButtonLocation.miniStartTop;
      case 'ministartfloat':
      case 'mini_start_float': return FloatingActionButtonLocation.miniStartFloat;
      case 'miniendtop':
      case 'mini_end_top': return FloatingActionButtonLocation.miniEndTop;
      case 'miniendfloat':
      case 'mini_end_float': return FloatingActionButtonLocation.miniEndFloat;
      default: return null;
    }
  }

  static IconData? _parseJsonIconData(dynamic value) {
    if (value == null) return null;
    if (value is String) {
      switch (value.toLowerCase()) {
        case 'settings': return Icons.settings;
        case 'home': return Icons.home;
        case 'search': return Icons.search;
        case 'add': return Icons.add;
        case 'edit': return Icons.edit;
        default: break;
      }
    } else if (value is Map<String, dynamic>) {
      if (value['name'] != null) {
        switch (value['name'].toString().toLowerCase()) {
          case 'settings': return Icons.settings;
          case 'home': return Icons.home;
          case 'search': return Icons.search;
          case 'add': return Icons.add;
          case 'edit': return Icons.edit;
          default: break;
        }
      }
      if (value['codePoint'] != null) {
        return IconData(
          value['codePoint'] is int ? value['codePoint'] : int.tryParse(value['codePoint'].toString()) ?? 0,
          fontFamily: value['fontFamily']?.toString() ?? 'MaterialIcons',
        );
      }
    }
    return null;
  }

  static List<Shadow>? _parseJsonShadows(dynamic value) {
    if (value is List) {
      return value.map((v) {
        if (v is Map<String, dynamic>) {
          return Shadow(
            color: _parseJsonColor(v['color']) ?? Colors.black,
            offset: Offset(
              (v['offsetX'] is num) ? (v['offsetX'] as num).toDouble() : 0.0,
              (v['offsetY'] is num) ? (v['offsetY'] as num).toDouble() : 0.0,
            ),
            blurRadius: (v['blurRadius'] is num) ? (v['blurRadius'] as num).toDouble() : 0.0,
          );
        }
        return const Shadow();
      }).toList();
    }
    return null;
  }

  static Map<String, dynamic> toJson(SduiWidget widget) {
    if (widget is SduiColumn) {
      return _toJsonColumn(widget);
    } else if (widget is SduiRow) {
      return _toJsonRow(widget);
    } else if (widget is SduiText) {
      return _toJsonText(widget);
    } else if (widget is SduiImage) {
      return _toJsonImage(widget);
    } else if (widget is SduiSizedBox) {
      return _toJsonSizedBox(widget);
    } else if (widget is SduiContainer) {
      return _toJsonContainer(widget);
    } else if (widget is SduiScaffold) {
      return _toJsonScaffold(widget);
    } else if (widget is SduiSpacer) {
      return _toJsonSpacer(widget);
    } else if (widget is SduiIcon) {
      return _toJsonIcon(widget);
    }
    return {};
  }

  static Map<String, dynamic> _toJsonColumn(SduiColumn widget) {
    return {
      'type': 'column',
      if (widget.mainAxisAlignment != null) 'mainAxisAlignment': widget.mainAxisAlignment.toString().split('.').last,
      if (widget.crossAxisAlignment != null) 'crossAxisAlignment': widget.crossAxisAlignment.toString().split('.').last,
      if (widget.mainAxisSize != null) 'mainAxisSize': widget.mainAxisSize.toString().split('.').last,
      if (widget.textDirection != null) 'textDirection': widget.textDirection.toString().split('.').last,
      if (widget.verticalDirection != null) 'verticalDirection': widget.verticalDirection.toString().split('.').last,
      if (widget.textBaseline != null) 'textBaseline': widget.textBaseline.toString().split('.').last,
      'children': widget.children.map(toJson).toList(),
    };
  }

  static Map<String, dynamic> _toJsonRow(SduiRow widget) {
    return {
      'type': 'row',
      if (widget.mainAxisAlignment != null) 'mainAxisAlignment': widget.mainAxisAlignment.toString().split('.').last,
      if (widget.crossAxisAlignment != null) 'crossAxisAlignment': widget.crossAxisAlignment.toString().split('.').last,
      if (widget.mainAxisSize != null) 'mainAxisSize': widget.mainAxisSize.toString().split('.').last,
      if (widget.textDirection != null) 'textDirection': widget.textDirection.toString().split('.').last,
      if (widget.verticalDirection != null) 'verticalDirection': widget.verticalDirection.toString().split('.').last,
      if (widget.textBaseline != null) 'textBaseline': widget.textBaseline.toString().split('.').last,
      'children': widget.children.map(toJson).toList(),
    };
  }

  static Map<String, dynamic> _toJsonText(SduiText widget) {
    return {
      'type': 'text',
      'text': widget.text,
      if (widget.style != null) 'style': _toJsonTextStyle(widget.style!),
      if (widget.textAlign != null) 'textAlign': widget.textAlign.toString().split('.').last,
      if (widget.overflow != null) 'overflow': widget.overflow.toString().split('.').last,
      if (widget.maxLines != null) 'maxLines': widget.maxLines,
      if (widget.softWrap != null) 'softWrap': widget.softWrap,
      if (widget.letterSpacing != null) 'letterSpacing': widget.letterSpacing,
      if (widget.wordSpacing != null) 'wordSpacing': widget.wordSpacing,
      if (widget.height != null) 'height': widget.height,
      if (widget.fontFamily != null) 'fontFamily': widget.fontFamily,
      if (widget.textDirection != null) 'textDirection': widget.textDirection.toString().split('.').last,
    };
  }

  static Map<String, dynamic> _toJsonTextStyle(TextStyle style) {
    return {
      if (style.color != null) 'color': '#${style.color!.value.toRadixString(16).padLeft(8, '0')}',
      if (style.fontSize != null) 'fontSize': style.fontSize,
      if (style.fontWeight != null) 'fontWeight': style.fontWeight.toString().split('.').last,
      if (style.decoration != null) 'decoration': style.decoration.toString().split('.').last,
      if (style.letterSpacing != null) 'letterSpacing': style.letterSpacing,
      if (style.wordSpacing != null) 'wordSpacing': style.wordSpacing,
      if (style.height != null) 'height': style.height,
      if (style.fontFamily != null) 'fontFamily': style.fontFamily,
      if (style.fontStyle != null) 'fontStyle': style.fontStyle.toString().split('.').last,
    };
  }

  static Map<String, dynamic> _toJsonImage(SduiImage widget) {
    return {
      'type': 'image',
      'src': widget.src,
      if (widget.width != null) 'width': widget.width,
      if (widget.height != null) 'height': widget.height,
      if (widget.fit != null) 'fit': widget.fit.toString().split('.').last,
      if (widget.alignment != null) 'alignment': widget.alignment.toString(),
      if (widget.repeat != null) 'repeat': widget.repeat.toString().split('.').last,
      if (widget.color != null) 'color': '#${widget.color!.value.toRadixString(16).padLeft(8, '0')}',
      if (widget.colorBlendMode != null) 'colorBlendMode': widget.colorBlendMode.toString().split('.').last,
      if (widget.centerSlice != null) 'centerSlice': widget.centerSlice.toString(),
      if (widget.matchTextDirection != null) 'matchTextDirection': widget.matchTextDirection,
      if (widget.gaplessPlayback != null) 'gaplessPlayback': widget.gaplessPlayback,
      if (widget.filterQuality != null) 'filterQuality': widget.filterQuality.toString().split('.').last,
      if (widget.cacheWidth != null) 'cacheWidth': widget.cacheWidth,
      if (widget.cacheHeight != null) 'cacheHeight': widget.cacheHeight,
      if (widget.scale != null) 'scale': widget.scale,
      if (widget.semanticLabel != null) 'semanticLabel': widget.semanticLabel,
    };
  }

  static Map<String, dynamic> _toJsonSizedBox(SduiSizedBox widget) {
    return {
      'type': 'sized_box',
      if (widget.width != null) 'width': widget.width,
      if (widget.height != null) 'height': widget.height,
      if (widget.child != null) 'child': toJson(widget.child!),
    };
  }

  static Map<String, dynamic> _toJsonContainer(SduiContainer widget) {
    return {
      'type': 'container',
      if (widget.child != null) 'child': toJson(widget.child!),
      if (widget.padding != null) 'padding': _toJsonEdgeInsets(widget.padding!),
      if (widget.margin != null) 'margin': _toJsonEdgeInsets(widget.margin!),
      if (widget.decoration != null) 'decoration': _toJsonBoxDecoration(widget.decoration!),
      if (widget.width != null) 'width': widget.width,
      if (widget.height != null) 'height': widget.height,
      if (widget.color != null) 'color': '#${widget.color!.value.toRadixString(16).padLeft(8, '0')}',
      if (widget.alignment != null) 'alignment': widget.alignment.toString(),
      if (widget.constraints != null) 'constraints': _toJsonBoxConstraints(widget.constraints!),
      if (widget.transform != null) 'transform': widget.transform.toString(),
      if (widget.transformAlignment != null) 'transformAlignment': widget.transformAlignment.toString(),
      if (widget.clipBehavior != null) 'clipBehavior': widget.clipBehavior.toString().split('.').last,
    };
  }

  static Map<String, dynamic> _toJsonScaffold(SduiScaffold widget) {
    return {
      'type': 'scaffold',
      if (widget.appBar != null) 'appBar': toJson(widget.appBar!),
      if (widget.body != null) 'body': toJson(widget.body!),
      if (widget.floatingActionButton != null) 'floatingActionButton': toJson(widget.floatingActionButton!),
      if (widget.bottomNavigationBar != null) 'bottomNavigationBar': toJson(widget.bottomNavigationBar!),
      if (widget.drawer != null) 'drawer': toJson(widget.drawer!),
      if (widget.endDrawer != null) 'endDrawer': toJson(widget.endDrawer!),
      if (widget.bottomSheet != null) 'bottomSheet': toJson(widget.bottomSheet!),
      if (widget.backgroundColor != null) 'backgroundColor': '#${widget.backgroundColor!.value.toRadixString(16).padLeft(8, '0')}',
      if (widget.resizeToAvoidBottomInset != null) 'resizeToAvoidBottomInset': widget.resizeToAvoidBottomInset,
      if (widget.primary != null) 'primary': widget.primary,
      if (widget.floatingActionButtonLocation != null) 'floatingActionButtonLocation': widget.floatingActionButtonLocation.toString().split('.').last,
      if (widget.extendBody != null) 'extendBody': widget.extendBody,
      if (widget.extendBodyBehindAppBar != null) 'extendBodyBehindAppBar': widget.extendBodyBehindAppBar,
      if (widget.drawerScrimColor != null) 'drawerScrimColor': '#${widget.drawerScrimColor!.value.toRadixString(16).padLeft(8, '0')}',
      if (widget.drawerEdgeDragWidth != null) 'drawerEdgeDragWidth': widget.drawerEdgeDragWidth,
      if (widget.drawerEnableOpenDragGesture != null) 'drawerEnableOpenDragGesture': widget.drawerEnableOpenDragGesture,
      if (widget.endDrawerEnableOpenDragGesture != null) 'endDrawerEnableOpenDragGesture': widget.endDrawerEnableOpenDragGesture,
    };
  }

  static Map<String, dynamic> _toJsonSpacer(SduiSpacer widget) {
    return {
      'type': 'spacer',
      'flex': widget.flex,
    };
  }

  static Map<String, dynamic> _toJsonIcon(SduiIcon widget) {
    return {
      'type': 'icon',
      if (widget.icon != null) 'icon': widget.icon!.codePoint,
      if (widget.size != null) 'size': widget.size,
      if (widget.color != null) 'color': '#${widget.color!.value.toRadixString(16).padLeft(8, '0')}',
      if (widget.semanticLabel != null) 'semanticLabel': widget.semanticLabel,
      if (widget.textDirection != null) 'textDirection': widget.textDirection.toString().split('.').last,
      if (widget.opacity != null) 'opacity': widget.opacity,
      if (widget.applyTextScaling != null) 'applyTextScaling': widget.applyTextScaling,
      if (widget.shadows != null) 'shadows': widget.shadows!.map((s) => s.toString()).toList(),
    };
  }

  static Map<String, dynamic> _toJsonEdgeInsets(EdgeInsets edge) {
    if (edge.left == edge.right && edge.left == edge.top && edge.left == edge.bottom) {
      return {'all': edge.left};
    }
    return {
      'left': edge.left,
      'top': edge.top,
      'right': edge.right,
      'bottom': edge.bottom,
    };
  }

  static Map<String, dynamic> _toJsonBoxDecoration(BoxDecoration decoration) {
    return {
      if (decoration.color != null) 'color': '#${decoration.color!.value.toRadixString(16).padLeft(8, '0')}',
      if (decoration.borderRadius != null) 'borderRadius': decoration.borderRadius.toString(),
      // Add more as needed
    };
  }

  static Map<String, dynamic> _toJsonBoxConstraints(BoxConstraints constraints) {
    return {
      'minWidth': constraints.minWidth,
      'maxWidth': constraints.maxWidth,
      'minHeight': constraints.minHeight,
      'maxHeight': constraints.maxHeight,
    };
  }
}
