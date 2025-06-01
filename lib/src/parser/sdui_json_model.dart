import 'package:flutter/material.dart';


class SduiJsonWidget {
  final String type;
  final Map<String, dynamic> attributes;
  final List<SduiJsonWidget>? children;

  SduiJsonWidget({
    required this.type,
    required this.attributes,
    this.children,
  });

  factory SduiJsonWidget.fromJson(Map<String, dynamic> json) {
    return SduiJsonWidget(
      type: json['type']?.toString().toUpperCase() ?? '',
      attributes: json['attributes'] as Map<String, dynamic>? ?? {},
      children: (json['children'] as List<dynamic>?)
          ?.map((child) => SduiJsonWidget.fromJson(child as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'attributes': attributes,
      'children': children?.map((child) => child.toJson()).toList(),
    };
  }
}

class SduiJsonStyle {
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  final double? wordSpacing;
  final double? height;
  final String? fontFamily;

  SduiJsonStyle({
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.height,
    this.fontFamily,
  });

  factory SduiJsonStyle.fromJson(Map<String, dynamic> json) {
    return SduiJsonStyle(
      color: json['color'] != null ? Color(int.parse(json['color'].toString().replaceAll('#', '0xFF'))) : null,
      fontSize: json['fontSize']?.toDouble(),
      fontWeight: json['fontWeight'] != null ? FontWeight.values.firstWhere(
        (e) => e.toString() == 'FontWeight.${json['fontWeight'].toString().toUpperCase()}',
        orElse: () => FontWeight.normal,
      ) : null,
      fontStyle: json['fontStyle'] != null ? FontStyle.values.firstWhere(
        (e) => e.toString() == 'FontStyle.${json['fontStyle'].toString().toUpperCase()}',
        orElse: () => FontStyle.normal,
      ) : null,
      letterSpacing: json['letterSpacing']?.toDouble(),
      wordSpacing: json['wordSpacing']?.toDouble(),
      height: json['height']?.toDouble(),
      fontFamily: json['fontFamily'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'color': color?.value.toRadixString(16).padLeft(8, '0'),
      'fontSize': fontSize,
      'fontWeight': fontWeight?.toString().split('.').last,
      'fontStyle': fontStyle?.toString().split('.').last,
      'letterSpacing': letterSpacing,
      'wordSpacing': wordSpacing,
      'height': height,
      'fontFamily': fontFamily,
    };
  }
}


class SduiJsonDecoration {
  final Color? color;
  final SduiJsonBorder? border;
  final SduiJsonBorderRadius? borderRadius;
  final List<SduiJsonBoxShadow>? boxShadow;

  SduiJsonDecoration({
    this.color,
    this.border,
    this.borderRadius,
    this.boxShadow,
  });

  factory SduiJsonDecoration.fromJson(Map<String, dynamic> json) {
    return SduiJsonDecoration(
      color: json['color'] != null ? Color(int.parse(json['color'].toString().replaceAll('#', '0xFF'))) : null,
      border: json['border'] != null ? SduiJsonBorder.fromJson(json['border']) : null,
      borderRadius: json['borderRadius'] != null ? SduiJsonBorderRadius.fromJson(json['borderRadius']) : null,
      boxShadow: (json['boxShadow'] as List<dynamic>?)
          ?.map((shadow) => SduiJsonBoxShadow.fromJson(shadow as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'color': color?.value.toRadixString(16).padLeft(8, '0'),
      'border': border?.toJson(),
      'borderRadius': borderRadius?.toJson(),
      'boxShadow': boxShadow?.map((shadow) => shadow.toJson()).toList(),
    };
  }
}


class SduiJsonBorder {
  final Color? color;
  final double? width;

  SduiJsonBorder({
    this.color,
    this.width,
  });

  factory SduiJsonBorder.fromJson(Map<String, dynamic> json) {
    return SduiJsonBorder(
      color: json['color'] != null ? Color(int.parse(json['color'].toString().replaceAll('#', '0xFF'))) : null,
      width: json['width']?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'color': color?.value.toRadixString(16).padLeft(8, '0'),
      'width': width,
    };
  }
}


class SduiJsonBorderRadius {
  final double? radius;

  SduiJsonBorderRadius({
    this.radius,
  });

  factory SduiJsonBorderRadius.fromJson(Map<String, dynamic> json) {
    return SduiJsonBorderRadius(
      radius: json['radius']?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'radius': radius,
    };
  }
}


class SduiJsonBoxShadow {
  final Color? color;
  final double? offsetX;
  final double? offsetY;
  final double? blurRadius;
  final double? spreadRadius;

  SduiJsonBoxShadow({
    this.color,
    this.offsetX,
    this.offsetY,
    this.blurRadius,
    this.spreadRadius,
  });

  factory SduiJsonBoxShadow.fromJson(Map<String, dynamic> json) {
    return SduiJsonBoxShadow(
      color: json['color'] != null ? Color(int.parse(json['color'].toString().replaceAll('#', '0xFF'))) : null,
      offsetX: json['offsetX']?.toDouble(),
      offsetY: json['offsetY']?.toDouble(),
      blurRadius: json['blurRadius']?.toDouble(),
      spreadRadius: json['spreadRadius']?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'color': color?.value.toRadixString(16).padLeft(8, '0'),
      'offsetX': offsetX,
      'offsetY': offsetY,
      'blurRadius': blurRadius,
      'spreadRadius': spreadRadius,
    };
  }
} 