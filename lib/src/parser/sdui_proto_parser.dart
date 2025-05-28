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
class SduiProtoParser {
  // Parse method for JSON data
  static SduiWidget parseJSON(Map<String, dynamic> data) {
    // TODO: Implement JSON parsing logic
    throw UnimplementedError('JSON parser not fully implemented');
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
    List<SduiWidget> children = data.children
        .map((child) => SduiProtoParser.parseProto(child))
        .toList();
    return SduiColumn(children: children);
  }

  static SduiRow _parseProtoRow(SduiWidgetData data) {
    List<SduiWidget> children = data.children
        .map((child) => SduiProtoParser.parseProto(child))
        .toList();
    return SduiRow(children: children);
  }

  static SduiText _parseProtoText(SduiWidgetData data) {
    String text = data.stringAttributes['text'] ?? '';
    TextStyle? style =
        data.hasTextStyle() ? _parseProtoTextStyle(data.textStyle) : null;
    return SduiText(text, style: style);
  }

  static SduiImage _parseProtoImage(SduiWidgetData data) {
    String src = data.stringAttributes['src'] ?? '';
    double? width = data.doubleAttributes['width'];
    double? height = data.doubleAttributes['height'];
    BoxFit? fit = _parseProtoBoxFit(data.stringAttributes['fit']);
    return SduiImage(src, width: width, height: height, fit: fit);
  }

  static SduiSizedBox _parseProtoSizedBox(SduiWidgetData data) {
    double? width = data.doubleAttributes['width'];
    double? height = data.doubleAttributes['height'];
    SduiWidget? child =
        data.hasChild() ? SduiProtoParser.parseProto(data.child) : null;
    return SduiSizedBox(width: width, height: height, child: child);
  }

  static SduiContainer _parseProtoContainer(SduiWidgetData data) {
    SduiWidget? child =
        data.hasChild() ? SduiProtoParser.parseProto(data.child) : null;
    EdgeInsets? padding =
        data.hasPadding() ? _parseProtoEdgeInsets(data.padding) : null;
    BoxDecoration? decoration = data.hasBoxDecoration()
        ? _parseProtoBoxDecoration(data.boxDecoration)
        : null;
    double? width = data.doubleAttributes['width'];
    double? height = data.doubleAttributes['height'];

    return SduiContainer(
      child: child,
      padding: padding,
      decoration: decoration,
      width: width,
      height: height,
    );
  }

  static SduiScaffold _parseProtoScaffold(SduiWidgetData data) {
    SduiWidget? appBar =
        data.hasAppBar() ? SduiProtoParser.parseProto(data.appBar) : null;
    SduiWidget? body =
        data.hasBody() ? SduiProtoParser.parseProto(data.body) : null;
    SduiWidget? floatingActionButton = data.hasFloatingActionButton()
        ? SduiProtoParser.parseProto(data.floatingActionButton)
        : null;
    Color? backgroundColor = data.hasBackgroundColor()
        ? _parseProtoColor(data.backgroundColor)
        : null;

    return SduiScaffold(
      appBar: appBar,
      body: body,
      floatingActionButton: floatingActionButton,
      backgroundColor: backgroundColor,
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

    return SduiIcon(
      icon: iconData,
      size: size,
      color: color,
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

    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
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
}
