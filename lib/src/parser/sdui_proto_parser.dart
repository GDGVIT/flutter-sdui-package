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
   
    throw UnimplementedError('JSON parser not fully implemented');
  }

  
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

    return BorderRadius.circular(8.0); 
  }

  

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
}
