import 'dart:developer';

import 'package:flutter/material.dart';
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
import 'package:flutter_sdui/src/parser/sdui_json_model.dart';

class SduiJsonParser {
  static SduiWidget parse(Map<String, dynamic> data) {
    final String type = data['type']?.toString().toUpperCase() ?? '';
    
    switch (type) {
      case 'COLUMN':
        return _parseColumn(data);
      case 'ROW':
        return _parseRow(data);
      case 'TEXT':
        return _parseText(data);
      case 'IMAGE':
        return _parseImage(data);
      case 'SIZED_BOX':
        return _parseSizedBox(data);
      case 'CONTAINER':
        return _parseContainer(data);
      case 'SCAFFOLD':
        return _parseScaffold(data);
      case 'SPACER':
        return _parseSpacer(data);
      case 'ICON':
        return _parseIcon(data);
      default:
        log('Unsupported widget type: $type');
        return SduiContainer();
    }
  }

  static SduiColumn _parseColumn(Map<String, dynamic> data) {
    List<SduiWidget> children = (data['children'] as List<dynamic>?)
            ?.map((child) => parse(child as Map<String, dynamic>))
            .toList() ??
        [];

    return SduiColumn(
      children: children,
      mainAxisAlignment: _parseMainAxisAlignment(data['mainAxisAlignment']),
      crossAxisAlignment: _parseCrossAxisAlignment(data['crossAxisAlignment']),
      mainAxisSize: _parseMainAxisSize(data['mainAxisSize']),
      textDirection: _parseTextDirection(data['textDirection']),
      verticalDirection: _parseVerticalDirection(data['verticalDirection']),
      textBaseline: _parseTextBaseline(data['textBaseline']),
    );
  }

  static SduiRow _parseRow(Map<String, dynamic> data) {
    List<SduiWidget> children = (data['children'] as List<dynamic>?)
            ?.map((child) => parse(child as Map<String, dynamic>))
            .toList() ??
        [];

    return SduiRow(
      children: children,
      mainAxisAlignment: _parseMainAxisAlignment(data['mainAxisAlignment']),
      crossAxisAlignment: _parseCrossAxisAlignment(data['crossAxisAlignment']),
      mainAxisSize: _parseMainAxisSize(data['mainAxisSize']),
      textDirection: _parseTextDirection(data['textDirection']),
      verticalDirection: _parseVerticalDirection(data['verticalDirection']),
      textBaseline: _parseTextBaseline(data['textBaseline']),
    );
  }

  static SduiText _parseText(Map<String, dynamic> data) {
    String text = data['text']?.toString() ?? '';
    TextStyle? style = data['style'] != null ? _parseTextStyle(data['style']) : null;

    return SduiText(
      text,
      style: style,
      textAlign: _parseTextAlign(data['textAlign']),
      overflow: _parseTextOverflow(data['overflow']),
      maxLines: data['maxLines'],
      softWrap: data['softWrap'],
      letterSpacing: data['letterSpacing']?.toDouble(),
      wordSpacing: data['wordSpacing']?.toDouble(),
      height: data['height']?.toDouble(),
      fontFamily: data['fontFamily'],
      textDirection: _parseTextDirection(data['textDirection']),
    );
  }

  static SduiImage _parseImage(Map<String, dynamic> data) {
    String src = data['src']?.toString() ?? '';
    
    return SduiImage(
      src,
      width: data['width']?.toDouble(),
      height: data['height']?.toDouble(),
      fit: _parseBoxFit(data['fit']),
      alignment: _parseAlignment(data['alignment']),
      repeat: _parseImageRepeat(data['repeat']),
      color: _parseColor(data['color']),
      colorBlendMode: _parseBlendMode(data['colorBlendMode']),
      centerSlice: _parseRect(data['centerSlice']),
      matchTextDirection: data['matchTextDirection'],
      gaplessPlayback: data['gaplessPlayback'],
      filterQuality: _parseFilterQuality(data['filterQuality']),
      cacheWidth: data['cacheWidth'],
      cacheHeight: data['cacheHeight'],
      scale: data['scale']?.toDouble(),
      semanticLabel: data['semanticLabel'],
      errorWidget: data['errorWidget'] != null 
          ? parse(data['errorWidget']).toFlutterWidget() 
          : null,
      loadingWidget: data['loadingWidget'] != null 
          ? parse(data['loadingWidget']).toFlutterWidget() 
          : null,
    );
  }

  static SduiSizedBox _parseSizedBox(Map<String, dynamic> data) {
    return SduiSizedBox(
      width: data['width']?.toDouble(),
      height: data['height']?.toDouble(),
      child: data['child'] != null ? parse(data['child']) : null,
    );
  }

  static SduiContainer _parseContainer(Map<String, dynamic> data) {
    return SduiContainer(
      child: data['child'] != null ? parse(data['child']) : null,
      padding: _parseEdgeInsets(data['padding']),
      margin: _parseEdgeInsets(data['margin']),
      decoration: _parseBoxDecoration(data['decoration']),
      width: data['width']?.toDouble(),
      height: data['height']?.toDouble(),
      color: _parseColor(data['color']),
      alignment: _parseAlignment(data['alignment']),
      constraints: _parseBoxConstraints(data['constraints']),
      transform: _parseTransform(data['transform']),
      transformAlignment: _parseAlignmentGeometry(data['transformAlignment']),
    );
  }

  static SduiScaffold _parseScaffold(Map<String, dynamic> data) {
    return SduiScaffold(
      appBar: data['appBar'] != null ? parse(data['appBar']) : null,
      body: data['body'] != null ? parse(data['body']) : null,
      floatingActionButton: data['floatingActionButton'] != null 
          ? parse(data['floatingActionButton']) 
          : null,
      bottomNavigationBar: data['bottomNavigationBar'] != null 
          ? parse(data['bottomNavigationBar']) 
          : null,
      backgroundColor: _parseColor(data['backgroundColor']),
      resizeToAvoidBottomInset: data['resizeToAvoidBottomInset'],
    );
  }

  static SduiSpacer _parseSpacer(Map<String, dynamic> data) {
    return SduiSpacer(
      flex: data['flex'],
    );
  }

  static SduiIcon _parseIcon(Map<String, dynamic> data) {
    return SduiIcon(
      icon: _parseIconData(data['icon']),
      size: data['size']?.toDouble(),
      color: _parseColor(data['color']),
      semanticLabel: data['semanticLabel'],
      textDirection: _parseTextDirection(data['textDirection']),
    );
  }

  // Helper methods for parsing various Flutter types
  static MainAxisAlignment _parseMainAxisAlignment(dynamic value) {
    if (value == null) return MainAxisAlignment.start;
    return MainAxisAlignment.values.firstWhere(
      (e) => e.toString() == 'MainAxisAlignment.${value.toString().toUpperCase()}',
      orElse: () => MainAxisAlignment.start,
    );
  }

  static CrossAxisAlignment _parseCrossAxisAlignment(dynamic value) {
    if (value == null) return CrossAxisAlignment.center;
    return CrossAxisAlignment.values.firstWhere(
      (e) => e.toString() == 'CrossAxisAlignment.${value.toString().toUpperCase()}',
      orElse: () => CrossAxisAlignment.center,
    );
  }

  static MainAxisSize _parseMainAxisSize(dynamic value) {
    if (value == null) return MainAxisSize.max;
    return MainAxisSize.values.firstWhere(
      (e) => e.toString() == 'MainAxisSize.${value.toString().toUpperCase()}',
      orElse: () => MainAxisSize.max,
    );
  }

  static TextDirection _parseTextDirection(dynamic value) {
    if (value == null) return TextDirection.ltr;
    return TextDirection.values.firstWhere(
      (e) => e.toString() == 'TextDirection.${value.toString().toUpperCase()}',
      orElse: () => TextDirection.ltr,
    );
  }

  static VerticalDirection _parseVerticalDirection(dynamic value) {
    if (value == null) return VerticalDirection.down;
    return VerticalDirection.values.firstWhere(
      (e) => e.toString() == 'VerticalDirection.${value.toString().toUpperCase()}',
      orElse: () => VerticalDirection.down,
    );
  }

  static TextBaseline _parseTextBaseline(dynamic value) {
    if (value == null) return TextBaseline.alphabetic;
    return TextBaseline.values.firstWhere(
      (e) => e.toString() == 'TextBaseline.${value.toString().toUpperCase()}',
      orElse: () => TextBaseline.alphabetic,
    );
  }

  static TextStyle _parseTextStyle(Map<String, dynamic>? data) {
    if (data == null) return const TextStyle();
    return TextStyle(
      color: _parseColor(data['color']),
      fontSize: data['fontSize']?.toDouble(),
      fontWeight: _parseFontWeight(data['fontWeight']),
      fontStyle: _parseFontStyle(data['fontStyle']),
      letterSpacing: data['letterSpacing']?.toDouble(),
      wordSpacing: data['wordSpacing']?.toDouble(),
      height: data['height']?.toDouble(),
      fontFamily: data['fontFamily'],
    );
  }

  static TextAlign _parseTextAlign(dynamic value) {
    if (value == null) return TextAlign.start;
    return TextAlign.values.firstWhere(
      (e) => e.toString() == 'TextAlign.${value.toString().toUpperCase()}',
      orElse: () => TextAlign.start,
    );
  }

  static TextOverflow _parseTextOverflow(dynamic value) {
    if (value == null) return TextOverflow.clip;
    return TextOverflow.values.firstWhere(
      (e) => e.toString() == 'TextOverflow.${value.toString().toUpperCase()}',
      orElse: () => TextOverflow.clip,
    );
  }

  static BoxFit _parseBoxFit(dynamic value) {
    if (value == null) return BoxFit.cover;
    return BoxFit.values.firstWhere(
      (e) => e.toString() == 'BoxFit.${value.toString().toUpperCase()}',
      orElse: () => BoxFit.cover,
    );
  }

  static Alignment _parseAlignment(dynamic value) {
    if (value == null) return Alignment.center;
    switch (value.toString().toUpperCase()) {
      case 'TOP_LEFT':
        return Alignment.topLeft;
      case 'TOP_CENTER':
        return Alignment.topCenter;
      case 'TOP_RIGHT':
        return Alignment.topRight;
      case 'CENTER_LEFT':
        return Alignment.centerLeft;
      case 'CENTER':
        return Alignment.center;
      case 'CENTER_RIGHT':
        return Alignment.centerRight;
      case 'BOTTOM_LEFT':
        return Alignment.bottomLeft;
      case 'BOTTOM_CENTER':
        return Alignment.bottomCenter;
      case 'BOTTOM_RIGHT':
        return Alignment.bottomRight;
      default:
        return Alignment.center;
    }
  }

  static ImageRepeat _parseImageRepeat(dynamic value) {
    if (value == null) return ImageRepeat.noRepeat;
    return ImageRepeat.values.firstWhere(
      (e) => e.toString() == 'ImageRepeat.${value.toString().toUpperCase()}',
      orElse: () => ImageRepeat.noRepeat,
    );
  }

  static Color _parseColor(dynamic value) {
    if (value == null) return Colors.transparent;
    if (value is String) {
      return Color(int.parse(value.replaceAll('#', '0xFF')));
    }
    return Colors.transparent;
  }

  static BlendMode _parseBlendMode(dynamic value) {
    if (value == null) return BlendMode.srcOver;
    return BlendMode.values.firstWhere(
      (e) => e.toString() == 'BlendMode.${value.toString().toUpperCase()}',
      orElse: () => BlendMode.srcOver,
    );
  }

  static Rect _parseRect(Map<String, dynamic>? data) {
    if (data == null) return Rect.zero;
    return Rect.fromLTWH(
      data['left']?.toDouble() ?? 0,
      data['top']?.toDouble() ?? 0,
      data['width']?.toDouble() ?? 0,
      data['height']?.toDouble() ?? 0,
    );
  }

  static FilterQuality _parseFilterQuality(dynamic value) {
    if (value == null) return FilterQuality.low;
    return FilterQuality.values.firstWhere(
      (e) => e.toString() == 'FilterQuality.${value.toString().toUpperCase()}',
      orElse: () => FilterQuality.low,
    );
  }

  static EdgeInsets _parseEdgeInsets(Map<String, dynamic>? data) {
    if (data == null) return EdgeInsets.zero;
    return EdgeInsets.fromLTRB(
      data['left']?.toDouble() ?? 0,
      data['top']?.toDouble() ?? 0,
      data['right']?.toDouble() ?? 0,
      data['bottom']?.toDouble() ?? 0,
    );
  }

  static BoxDecoration _parseBoxDecoration(Map<String, dynamic>? data) {
    if (data == null) return const BoxDecoration();
    return BoxDecoration(
      color: _parseColor(data['color']),
      border: _parseBorder(data['border']),
      borderRadius: _parseBorderRadius(data['borderRadius']),
      boxShadow: _parseBoxShadow(data['boxShadow']),
    );
  }

  static Border _parseBorder(Map<String, dynamic>? data) {
    if (data == null) return Border.all();
    return Border.all(
      color: _parseColor(data['color']),
      width: data['width']?.toDouble() ?? 1.0,
    );
  }

  static BorderRadius _parseBorderRadius(Map<String, dynamic>? data) {
    if (data == null) return BorderRadius.zero;
    return BorderRadius.circular(data['radius']?.toDouble() ?? 0);
  }

  static List<BoxShadow> _parseBoxShadow(List<dynamic>? data) {
    if (data == null) return [];
    return data.map((shadow) {
      return BoxShadow(
        color: _parseColor(shadow['color']),
        offset: Offset(
          shadow['offsetX']?.toDouble() ?? 0,
          shadow['offsetY']?.toDouble() ?? 0,
        ),
        blurRadius: shadow['blurRadius']?.toDouble() ?? 0,
        spreadRadius: shadow['spreadRadius']?.toDouble() ?? 0,
      );
    }).toList();
  }

  static BoxConstraints _parseBoxConstraints(Map<String, dynamic>? data) {
    if (data == null) return const BoxConstraints();
    return BoxConstraints(
      minWidth: data['minWidth']?.toDouble(),
      maxWidth: data['maxWidth']?.toDouble(),
      minHeight: data['minHeight']?.toDouble(),
      maxHeight: data['maxHeight']?.toDouble(),
    );
  }

  static Matrix4 _parseTransform(List<dynamic>? data) {
    if (data == null) return Matrix4.identity();
    return Matrix4.fromList(data.map((e) => (e as num).toDouble()).toList());
  }

  static AlignmentGeometry _parseAlignmentGeometry(dynamic value) {
    if (value == null) return Alignment.center;
    return _parseAlignment(value);
  }

  static IconData _parseIconData(Map<String, dynamic>? data) {
    if (data == null) return Icons.error;
    return IconData(
      data['codePoint'] ?? 0,
      fontFamily: data['fontFamily'],
      fontPackage: data['fontPackage'],
    );
  }

  static FontWeight _parseFontWeight(dynamic value) {
    if (value == null) return FontWeight.normal;
    return FontWeight.values.firstWhere(
      (e) => e.toString() == 'FontWeight.${value.toString().toUpperCase()}',
      orElse: () => FontWeight.normal,
    );
  }

  static FontStyle _parseFontStyle(dynamic value) {
    if (value == null) return FontStyle.normal;
    return FontStyle.values.firstWhere(
      (e) => e.toString() == 'FontStyle.${value.toString().toUpperCase()}',
      orElse: () => FontStyle.normal,
    );
  }
} 