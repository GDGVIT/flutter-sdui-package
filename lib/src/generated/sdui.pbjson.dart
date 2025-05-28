//
//  Generated code. Do not modify.
//  source: sdui.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use widgetTypeDescriptor instead')
const WidgetType$json = {
  '1': 'WidgetType',
  '2': [
    {'1': 'WIDGET_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'COLUMN', '2': 1},
    {'1': 'ROW', '2': 2},
    {'1': 'TEXT', '2': 3},
    {'1': 'IMAGE', '2': 4},
    {'1': 'SIZED_BOX', '2': 5},
    {'1': 'CONTAINER', '2': 6},
    {'1': 'SCAFFOLD', '2': 7},
    {'1': 'SPACER', '2': 8},
    {'1': 'ICON', '2': 9},
  ],
};

/// Descriptor for `WidgetType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List widgetTypeDescriptor = $convert.base64Decode(
    'CgpXaWRnZXRUeXBlEhsKF1dJREdFVF9UWVBFX1VOU1BFQ0lGSUVEEAASCgoGQ09MVU1OEAESBw'
    'oDUk9XEAISCAoEVEVYVBADEgkKBUlNQUdFEAQSDQoJU0laRURfQk9YEAUSDQoJQ09OVEFJTkVS'
    'EAYSDAoIU0NBRkZPTEQQBxIKCgZTUEFDRVIQCBIICgRJQ09OEAk=');

@$core.Deprecated('Use boxFitProtoDescriptor instead')
const BoxFitProto$json = {
  '1': 'BoxFitProto',
  '2': [
    {'1': 'BOX_FIT_UNSPECIFIED', '2': 0},
    {'1': 'FILL', '2': 1},
    {'1': 'CONTAIN', '2': 2},
    {'1': 'COVER', '2': 3},
    {'1': 'FIT_WIDTH', '2': 4},
    {'1': 'FIT_HEIGHT', '2': 5},
    {'1': 'NONE', '2': 6},
    {'1': 'SCALE_DOWN', '2': 7},
  ],
};

/// Descriptor for `BoxFitProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List boxFitProtoDescriptor = $convert.base64Decode(
    'CgtCb3hGaXRQcm90bxIXChNCT1hfRklUX1VOU1BFQ0lGSUVEEAASCAoERklMTBABEgsKB0NPTl'
    'RBSU4QAhIJCgVDT1ZFUhADEg0KCUZJVF9XSURUSBAEEg4KCkZJVF9IRUlHSFQQBRIICgROT05F'
    'EAYSDgoKU0NBTEVfRE9XThAH');

@$core.Deprecated('Use borderStyleProtoDescriptor instead')
const BorderStyleProto$json = {
  '1': 'BorderStyleProto',
  '2': [
    {'1': 'BORDER_STYLE_UNSPECIFIED', '2': 0},
    {'1': 'SOLID', '2': 1},
    {'1': 'NONE_BORDER', '2': 2},
  ],
};

/// Descriptor for `BorderStyleProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List borderStyleProtoDescriptor = $convert.base64Decode(
    'ChBCb3JkZXJTdHlsZVByb3RvEhwKGEJPUkRFUl9TVFlMRV9VTlNQRUNJRklFRBAAEgkKBVNPTE'
    'lEEAESDwoLTk9ORV9CT1JERVIQAg==');

@$core.Deprecated('Use boxShapeProtoDescriptor instead')
const BoxShapeProto$json = {
  '1': 'BoxShapeProto',
  '2': [
    {'1': 'BOX_SHAPE_UNSPECIFIED', '2': 0},
    {'1': 'RECTANGLE', '2': 1},
    {'1': 'CIRCLE', '2': 2},
  ],
};

/// Descriptor for `BoxShapeProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List boxShapeProtoDescriptor = $convert.base64Decode(
    'Cg1Cb3hTaGFwZVByb3RvEhkKFUJPWF9TSEFQRV9VTlNQRUNJRklFRBAAEg0KCVJFQ1RBTkdMRR'
    'ABEgoKBkNJUkNMRRAC');

@$core.Deprecated('Use imageRepeatProtoDescriptor instead')
const ImageRepeatProto$json = {
  '1': 'ImageRepeatProto',
  '2': [
    {'1': 'IMAGE_REPEAT_UNSPECIFIED', '2': 0},
    {'1': 'REPEAT', '2': 1},
    {'1': 'REPEAT_X', '2': 2},
    {'1': 'REPEAT_Y', '2': 3},
    {'1': 'NO_REPEAT', '2': 4},
  ],
};

/// Descriptor for `ImageRepeatProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List imageRepeatProtoDescriptor = $convert.base64Decode(
    'ChBJbWFnZVJlcGVhdFByb3RvEhwKGElNQUdFX1JFUEVBVF9VTlNQRUNJRklFRBAAEgoKBlJFUE'
    'VBVBABEgwKCFJFUEVBVF9YEAISDAoIUkVQRUFUX1kQAxINCglOT19SRVBFQVQQBA==');

@$core.Deprecated('Use filterQualityProtoDescriptor instead')
const FilterQualityProto$json = {
  '1': 'FilterQualityProto',
  '2': [
    {'1': 'FILTER_QUALITY_UNSPECIFIED', '2': 0},
    {'1': 'NONE_FQ', '2': 1},
    {'1': 'LOW', '2': 2},
    {'1': 'MEDIUM', '2': 3},
    {'1': 'HIGH', '2': 4},
  ],
};

/// Descriptor for `FilterQualityProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List filterQualityProtoDescriptor = $convert.base64Decode(
    'ChJGaWx0ZXJRdWFsaXR5UHJvdG8SHgoaRklMVEVSX1FVQUxJVFlfVU5TUEVDSUZJRUQQABILCg'
    'dOT05FX0ZREAESBwoDTE9XEAISCgoGTUVESVVNEAMSCAoESElHSBAE');

@$core.Deprecated('Use sduiWidgetDataDescriptor instead')
const SduiWidgetData$json = {
  '1': 'SduiWidgetData',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.flutter_sdui.WidgetType', '10': 'type'},
    {'1': 'string_attributes', '3': 2, '4': 3, '5': 11, '6': '.flutter_sdui.SduiWidgetData.StringAttributesEntry', '10': 'stringAttributes'},
    {'1': 'double_attributes', '3': 3, '4': 3, '5': 11, '6': '.flutter_sdui.SduiWidgetData.DoubleAttributesEntry', '10': 'doubleAttributes'},
    {'1': 'bool_attributes', '3': 4, '4': 3, '5': 11, '6': '.flutter_sdui.SduiWidgetData.BoolAttributesEntry', '10': 'boolAttributes'},
    {'1': 'int_attributes', '3': 5, '4': 3, '5': 11, '6': '.flutter_sdui.SduiWidgetData.IntAttributesEntry', '10': 'intAttributes'},
    {'1': 'text_style', '3': 6, '4': 1, '5': 11, '6': '.flutter_sdui.TextStyleData', '10': 'textStyle'},
    {'1': 'padding', '3': 7, '4': 1, '5': 11, '6': '.flutter_sdui.EdgeInsetsData', '10': 'padding'},
    {'1': 'margin', '3': 8, '4': 1, '5': 11, '6': '.flutter_sdui.EdgeInsetsData', '10': 'margin'},
    {'1': 'color', '3': 9, '4': 1, '5': 11, '6': '.flutter_sdui.ColorData', '10': 'color'},
    {'1': 'icon', '3': 10, '4': 1, '5': 11, '6': '.flutter_sdui.IconDataMessage', '10': 'icon'},
    {'1': 'box_decoration', '3': 11, '4': 1, '5': 11, '6': '.flutter_sdui.BoxDecorationData', '10': 'boxDecoration'},
    {'1': 'children', '3': 12, '4': 3, '5': 11, '6': '.flutter_sdui.SduiWidgetData', '10': 'children'},
    {'1': 'child', '3': 13, '4': 1, '5': 11, '6': '.flutter_sdui.SduiWidgetData', '10': 'child'},
    {'1': 'app_bar', '3': 14, '4': 1, '5': 11, '6': '.flutter_sdui.SduiWidgetData', '10': 'appBar'},
    {'1': 'body', '3': 15, '4': 1, '5': 11, '6': '.flutter_sdui.SduiWidgetData', '10': 'body'},
    {'1': 'floating_action_button', '3': 16, '4': 1, '5': 11, '6': '.flutter_sdui.SduiWidgetData', '10': 'floatingActionButton'},
    {'1': 'background_color', '3': 17, '4': 1, '5': 11, '6': '.flutter_sdui.ColorData', '10': 'backgroundColor'},
  ],
  '3': [SduiWidgetData_StringAttributesEntry$json, SduiWidgetData_DoubleAttributesEntry$json, SduiWidgetData_BoolAttributesEntry$json, SduiWidgetData_IntAttributesEntry$json],
};

@$core.Deprecated('Use sduiWidgetDataDescriptor instead')
const SduiWidgetData_StringAttributesEntry$json = {
  '1': 'StringAttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use sduiWidgetDataDescriptor instead')
const SduiWidgetData_DoubleAttributesEntry$json = {
  '1': 'DoubleAttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 1, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use sduiWidgetDataDescriptor instead')
const SduiWidgetData_BoolAttributesEntry$json = {
  '1': 'BoolAttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 8, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use sduiWidgetDataDescriptor instead')
const SduiWidgetData_IntAttributesEntry$json = {
  '1': 'IntAttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `SduiWidgetData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sduiWidgetDataDescriptor = $convert.base64Decode(
    'Cg5TZHVpV2lkZ2V0RGF0YRIsCgR0eXBlGAEgASgOMhguZmx1dHRlcl9zZHVpLldpZGdldFR5cG'
    'VSBHR5cGUSXwoRc3RyaW5nX2F0dHJpYnV0ZXMYAiADKAsyMi5mbHV0dGVyX3NkdWkuU2R1aVdp'
    'ZGdldERhdGEuU3RyaW5nQXR0cmlidXRlc0VudHJ5UhBzdHJpbmdBdHRyaWJ1dGVzEl8KEWRvdW'
    'JsZV9hdHRyaWJ1dGVzGAMgAygLMjIuZmx1dHRlcl9zZHVpLlNkdWlXaWRnZXREYXRhLkRvdWJs'
    'ZUF0dHJpYnV0ZXNFbnRyeVIQZG91YmxlQXR0cmlidXRlcxJZCg9ib29sX2F0dHJpYnV0ZXMYBC'
    'ADKAsyMC5mbHV0dGVyX3NkdWkuU2R1aVdpZGdldERhdGEuQm9vbEF0dHJpYnV0ZXNFbnRyeVIO'
    'Ym9vbEF0dHJpYnV0ZXMSVgoOaW50X2F0dHJpYnV0ZXMYBSADKAsyLy5mbHV0dGVyX3NkdWkuU2'
    'R1aVdpZGdldERhdGEuSW50QXR0cmlidXRlc0VudHJ5Ug1pbnRBdHRyaWJ1dGVzEjoKCnRleHRf'
    'c3R5bGUYBiABKAsyGy5mbHV0dGVyX3NkdWkuVGV4dFN0eWxlRGF0YVIJdGV4dFN0eWxlEjYKB3'
    'BhZGRpbmcYByABKAsyHC5mbHV0dGVyX3NkdWkuRWRnZUluc2V0c0RhdGFSB3BhZGRpbmcSNAoG'
    'bWFyZ2luGAggASgLMhwuZmx1dHRlcl9zZHVpLkVkZ2VJbnNldHNEYXRhUgZtYXJnaW4SLQoFY2'
    '9sb3IYCSABKAsyFy5mbHV0dGVyX3NkdWkuQ29sb3JEYXRhUgVjb2xvchIxCgRpY29uGAogASgL'
    'Mh0uZmx1dHRlcl9zZHVpLkljb25EYXRhTWVzc2FnZVIEaWNvbhJGCg5ib3hfZGVjb3JhdGlvbh'
    'gLIAEoCzIfLmZsdXR0ZXJfc2R1aS5Cb3hEZWNvcmF0aW9uRGF0YVINYm94RGVjb3JhdGlvbhI4'
    'CghjaGlsZHJlbhgMIAMoCzIcLmZsdXR0ZXJfc2R1aS5TZHVpV2lkZ2V0RGF0YVIIY2hpbGRyZW'
    '4SMgoFY2hpbGQYDSABKAsyHC5mbHV0dGVyX3NkdWkuU2R1aVdpZGdldERhdGFSBWNoaWxkEjUK'
    'B2FwcF9iYXIYDiABKAsyHC5mbHV0dGVyX3NkdWkuU2R1aVdpZGdldERhdGFSBmFwcEJhchIwCg'
    'Rib2R5GA8gASgLMhwuZmx1dHRlcl9zZHVpLlNkdWlXaWRnZXREYXRhUgRib2R5ElIKFmZsb2F0'
    'aW5nX2FjdGlvbl9idXR0b24YECABKAsyHC5mbHV0dGVyX3NkdWkuU2R1aVdpZGdldERhdGFSFG'
    'Zsb2F0aW5nQWN0aW9uQnV0dG9uEkIKEGJhY2tncm91bmRfY29sb3IYESABKAsyFy5mbHV0dGVy'
    'X3NkdWkuQ29sb3JEYXRhUg9iYWNrZ3JvdW5kQ29sb3IaQwoVU3RyaW5nQXR0cmlidXRlc0VudH'
    'J5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAEaQwoVRG91Ymxl'
    'QXR0cmlidXRlc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgBUgV2YWx1ZT'
    'oCOAEaQQoTQm9vbEF0dHJpYnV0ZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgC'
    'IAEoCFIFdmFsdWU6AjgBGkAKEkludEF0dHJpYnV0ZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleR'
    'IUCgV2YWx1ZRgCIAEoBVIFdmFsdWU6AjgB');

@$core.Deprecated('Use colorDataDescriptor instead')
const ColorData$json = {
  '1': 'ColorData',
  '2': [
    {'1': 'alpha', '3': 1, '4': 1, '5': 5, '10': 'alpha'},
    {'1': 'red', '3': 2, '4': 1, '5': 5, '10': 'red'},
    {'1': 'green', '3': 3, '4': 1, '5': 5, '10': 'green'},
    {'1': 'blue', '3': 4, '4': 1, '5': 5, '10': 'blue'},
  ],
};

/// Descriptor for `ColorData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorDataDescriptor = $convert.base64Decode(
    'CglDb2xvckRhdGESFAoFYWxwaGEYASABKAVSBWFscGhhEhAKA3JlZBgCIAEoBVIDcmVkEhQKBW'
    'dyZWVuGAMgASgFUgVncmVlbhISCgRibHVlGAQgASgFUgRibHVl');

@$core.Deprecated('Use edgeInsetsDataDescriptor instead')
const EdgeInsetsData$json = {
  '1': 'EdgeInsetsData',
  '2': [
    {'1': 'left', '3': 1, '4': 1, '5': 1, '9': 0, '10': 'left', '17': true},
    {'1': 'top', '3': 2, '4': 1, '5': 1, '9': 1, '10': 'top', '17': true},
    {'1': 'right', '3': 3, '4': 1, '5': 1, '9': 2, '10': 'right', '17': true},
    {'1': 'bottom', '3': 4, '4': 1, '5': 1, '9': 3, '10': 'bottom', '17': true},
    {'1': 'all', '3': 5, '4': 1, '5': 1, '9': 4, '10': 'all', '17': true},
  ],
  '8': [
    {'1': '_left'},
    {'1': '_top'},
    {'1': '_right'},
    {'1': '_bottom'},
    {'1': '_all'},
  ],
};

/// Descriptor for `EdgeInsetsData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List edgeInsetsDataDescriptor = $convert.base64Decode(
    'Cg5FZGdlSW5zZXRzRGF0YRIXCgRsZWZ0GAEgASgBSABSBGxlZnSIAQESFQoDdG9wGAIgASgBSA'
    'FSA3RvcIgBARIZCgVyaWdodBgDIAEoAUgCUgVyaWdodIgBARIbCgZib3R0b20YBCABKAFIA1IG'
    'Ym90dG9tiAEBEhUKA2FsbBgFIAEoAUgEUgNhbGyIAQFCBwoFX2xlZnRCBgoEX3RvcEIICgZfcm'
    'lnaHRCCQoHX2JvdHRvbUIGCgRfYWxs');

@$core.Deprecated('Use textStyleDataDescriptor instead')
const TextStyleData$json = {
  '1': 'TextStyleData',
  '2': [
    {'1': 'color', '3': 1, '4': 1, '5': 11, '6': '.flutter_sdui.ColorData', '9': 0, '10': 'color', '17': true},
    {'1': 'font_size', '3': 2, '4': 1, '5': 1, '9': 1, '10': 'fontSize', '17': true},
    {'1': 'font_weight', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'fontWeight', '17': true},
  ],
  '8': [
    {'1': '_color'},
    {'1': '_font_size'},
    {'1': '_font_weight'},
  ],
};

/// Descriptor for `TextStyleData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textStyleDataDescriptor = $convert.base64Decode(
    'Cg1UZXh0U3R5bGVEYXRhEjIKBWNvbG9yGAEgASgLMhcuZmx1dHRlcl9zZHVpLkNvbG9yRGF0YU'
    'gAUgVjb2xvcogBARIgCglmb250X3NpemUYAiABKAFIAVIIZm9udFNpemWIAQESJAoLZm9udF93'
    'ZWlnaHQYAyABKAlIAlIKZm9udFdlaWdodIgBAUIICgZfY29sb3JCDAoKX2ZvbnRfc2l6ZUIOCg'
    'xfZm9udF93ZWlnaHQ=');

@$core.Deprecated('Use iconDataMessageDescriptor instead')
const IconDataMessage$json = {
  '1': 'IconDataMessage',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'code_point', '3': 2, '4': 1, '5': 5, '9': 1, '10': 'codePoint', '17': true},
    {'1': 'font_family', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'fontFamily', '17': true},
    {'1': 'color', '3': 4, '4': 1, '5': 11, '6': '.flutter_sdui.ColorData', '9': 3, '10': 'color', '17': true},
    {'1': 'size', '3': 5, '4': 1, '5': 1, '9': 4, '10': 'size', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_code_point'},
    {'1': '_font_family'},
    {'1': '_color'},
    {'1': '_size'},
  ],
};

/// Descriptor for `IconDataMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iconDataMessageDescriptor = $convert.base64Decode(
    'Cg9JY29uRGF0YU1lc3NhZ2USFwoEbmFtZRgBIAEoCUgAUgRuYW1liAEBEiIKCmNvZGVfcG9pbn'
    'QYAiABKAVIAVIJY29kZVBvaW50iAEBEiQKC2ZvbnRfZmFtaWx5GAMgASgJSAJSCmZvbnRGYW1p'
    'bHmIAQESMgoFY29sb3IYBCABKAsyFy5mbHV0dGVyX3NkdWkuQ29sb3JEYXRhSANSBWNvbG9yiA'
    'EBEhcKBHNpemUYBSABKAFIBFIEc2l6ZYgBAUIHCgVfbmFtZUINCgtfY29kZV9wb2ludEIOCgxf'
    'Zm9udF9mYW1pbHlCCAoGX2NvbG9yQgcKBV9zaXpl');

@$core.Deprecated('Use boxDecorationDataDescriptor instead')
const BoxDecorationData$json = {
  '1': 'BoxDecorationData',
  '2': [
    {'1': 'color', '3': 1, '4': 1, '5': 11, '6': '.flutter_sdui.ColorData', '9': 0, '10': 'color', '17': true},
    {'1': 'border_radius', '3': 2, '4': 1, '5': 11, '6': '.flutter_sdui.BorderRadiusData', '9': 1, '10': 'borderRadius', '17': true},
    {'1': 'border', '3': 3, '4': 1, '5': 11, '6': '.flutter_sdui.BorderData', '9': 2, '10': 'border', '17': true},
    {'1': 'box_shadow', '3': 4, '4': 3, '5': 11, '6': '.flutter_sdui.BoxShadowData', '10': 'boxShadow'},
    {'1': 'gradient', '3': 5, '4': 1, '5': 11, '6': '.flutter_sdui.GradientData', '9': 3, '10': 'gradient', '17': true},
    {'1': 'shape', '3': 6, '4': 1, '5': 14, '6': '.flutter_sdui.BoxShapeProto', '9': 4, '10': 'shape', '17': true},
    {'1': 'image', '3': 7, '4': 1, '5': 11, '6': '.flutter_sdui.DecorationImageData', '9': 5, '10': 'image', '17': true},
  ],
  '8': [
    {'1': '_color'},
    {'1': '_border_radius'},
    {'1': '_border'},
    {'1': '_gradient'},
    {'1': '_shape'},
    {'1': '_image'},
  ],
};

/// Descriptor for `BoxDecorationData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boxDecorationDataDescriptor = $convert.base64Decode(
    'ChFCb3hEZWNvcmF0aW9uRGF0YRIyCgVjb2xvchgBIAEoCzIXLmZsdXR0ZXJfc2R1aS5Db2xvck'
    'RhdGFIAFIFY29sb3KIAQESSAoNYm9yZGVyX3JhZGl1cxgCIAEoCzIeLmZsdXR0ZXJfc2R1aS5C'
    'b3JkZXJSYWRpdXNEYXRhSAFSDGJvcmRlclJhZGl1c4gBARI1CgZib3JkZXIYAyABKAsyGC5mbH'
    'V0dGVyX3NkdWkuQm9yZGVyRGF0YUgCUgZib3JkZXKIAQESOgoKYm94X3NoYWRvdxgEIAMoCzIb'
    'LmZsdXR0ZXJfc2R1aS5Cb3hTaGFkb3dEYXRhUglib3hTaGFkb3cSOwoIZ3JhZGllbnQYBSABKA'
    'syGi5mbHV0dGVyX3NkdWkuR3JhZGllbnREYXRhSANSCGdyYWRpZW50iAEBEjYKBXNoYXBlGAYg'
    'ASgOMhsuZmx1dHRlcl9zZHVpLkJveFNoYXBlUHJvdG9IBFIFc2hhcGWIAQESPAoFaW1hZ2UYBy'
    'ABKAsyIS5mbHV0dGVyX3NkdWkuRGVjb3JhdGlvbkltYWdlRGF0YUgFUgVpbWFnZYgBAUIICgZf'
    'Y29sb3JCEAoOX2JvcmRlcl9yYWRpdXNCCQoHX2JvcmRlckILCglfZ3JhZGllbnRCCAoGX3NoYX'
    'BlQggKBl9pbWFnZQ==');

@$core.Deprecated('Use borderRadiusDataDescriptor instead')
const BorderRadiusData$json = {
  '1': 'BorderRadiusData',
  '2': [
    {'1': 'all', '3': 1, '4': 1, '5': 1, '9': 0, '10': 'all', '17': true},
    {'1': 'top_left', '3': 2, '4': 1, '5': 1, '9': 1, '10': 'topLeft', '17': true},
    {'1': 'top_right', '3': 3, '4': 1, '5': 1, '9': 2, '10': 'topRight', '17': true},
    {'1': 'bottom_left', '3': 4, '4': 1, '5': 1, '9': 3, '10': 'bottomLeft', '17': true},
    {'1': 'bottom_right', '3': 5, '4': 1, '5': 1, '9': 4, '10': 'bottomRight', '17': true},
  ],
  '8': [
    {'1': '_all'},
    {'1': '_top_left'},
    {'1': '_top_right'},
    {'1': '_bottom_left'},
    {'1': '_bottom_right'},
  ],
};

/// Descriptor for `BorderRadiusData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List borderRadiusDataDescriptor = $convert.base64Decode(
    'ChBCb3JkZXJSYWRpdXNEYXRhEhUKA2FsbBgBIAEoAUgAUgNhbGyIAQESHgoIdG9wX2xlZnQYAi'
    'ABKAFIAVIHdG9wTGVmdIgBARIgCgl0b3BfcmlnaHQYAyABKAFIAlIIdG9wUmlnaHSIAQESJAoL'
    'Ym90dG9tX2xlZnQYBCABKAFIA1IKYm90dG9tTGVmdIgBARImCgxib3R0b21fcmlnaHQYBSABKA'
    'FIBFILYm90dG9tUmlnaHSIAQFCBgoEX2FsbEILCglfdG9wX2xlZnRCDAoKX3RvcF9yaWdodEIO'
    'CgxfYm90dG9tX2xlZnRCDwoNX2JvdHRvbV9yaWdodA==');

@$core.Deprecated('Use borderSideDataDescriptor instead')
const BorderSideData$json = {
  '1': 'BorderSideData',
  '2': [
    {'1': 'color', '3': 1, '4': 1, '5': 11, '6': '.flutter_sdui.ColorData', '9': 0, '10': 'color', '17': true},
    {'1': 'width', '3': 2, '4': 1, '5': 1, '9': 1, '10': 'width', '17': true},
    {'1': 'style', '3': 3, '4': 1, '5': 14, '6': '.flutter_sdui.BorderStyleProto', '9': 2, '10': 'style', '17': true},
  ],
  '8': [
    {'1': '_color'},
    {'1': '_width'},
    {'1': '_style'},
  ],
};

/// Descriptor for `BorderSideData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List borderSideDataDescriptor = $convert.base64Decode(
    'Cg5Cb3JkZXJTaWRlRGF0YRIyCgVjb2xvchgBIAEoCzIXLmZsdXR0ZXJfc2R1aS5Db2xvckRhdG'
    'FIAFIFY29sb3KIAQESGQoFd2lkdGgYAiABKAFIAVIFd2lkdGiIAQESOQoFc3R5bGUYAyABKA4y'
    'Hi5mbHV0dGVyX3NkdWkuQm9yZGVyU3R5bGVQcm90b0gCUgVzdHlsZYgBAUIICgZfY29sb3JCCA'
    'oGX3dpZHRoQggKBl9zdHlsZQ==');

@$core.Deprecated('Use borderDataDescriptor instead')
const BorderData$json = {
  '1': 'BorderData',
  '2': [
    {'1': 'top', '3': 1, '4': 1, '5': 11, '6': '.flutter_sdui.BorderSideData', '9': 0, '10': 'top', '17': true},
    {'1': 'right', '3': 2, '4': 1, '5': 11, '6': '.flutter_sdui.BorderSideData', '9': 1, '10': 'right', '17': true},
    {'1': 'bottom', '3': 3, '4': 1, '5': 11, '6': '.flutter_sdui.BorderSideData', '9': 2, '10': 'bottom', '17': true},
    {'1': 'left', '3': 4, '4': 1, '5': 11, '6': '.flutter_sdui.BorderSideData', '9': 3, '10': 'left', '17': true},
    {'1': 'all', '3': 5, '4': 1, '5': 11, '6': '.flutter_sdui.BorderSideData', '9': 4, '10': 'all', '17': true},
  ],
  '8': [
    {'1': '_top'},
    {'1': '_right'},
    {'1': '_bottom'},
    {'1': '_left'},
    {'1': '_all'},
  ],
};

/// Descriptor for `BorderData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List borderDataDescriptor = $convert.base64Decode(
    'CgpCb3JkZXJEYXRhEjMKA3RvcBgBIAEoCzIcLmZsdXR0ZXJfc2R1aS5Cb3JkZXJTaWRlRGF0YU'
    'gAUgN0b3CIAQESNwoFcmlnaHQYAiABKAsyHC5mbHV0dGVyX3NkdWkuQm9yZGVyU2lkZURhdGFI'
    'AVIFcmlnaHSIAQESOQoGYm90dG9tGAMgASgLMhwuZmx1dHRlcl9zZHVpLkJvcmRlclNpZGVEYX'
    'RhSAJSBmJvdHRvbYgBARI1CgRsZWZ0GAQgASgLMhwuZmx1dHRlcl9zZHVpLkJvcmRlclNpZGVE'
    'YXRhSANSBGxlZnSIAQESMwoDYWxsGAUgASgLMhwuZmx1dHRlcl9zZHVpLkJvcmRlclNpZGVEYX'
    'RhSARSA2FsbIgBAUIGCgRfdG9wQggKBl9yaWdodEIJCgdfYm90dG9tQgcKBV9sZWZ0QgYKBF9h'
    'bGw=');

@$core.Deprecated('Use boxShadowDataDescriptor instead')
const BoxShadowData$json = {
  '1': 'BoxShadowData',
  '2': [
    {'1': 'color', '3': 1, '4': 1, '5': 11, '6': '.flutter_sdui.ColorData', '9': 0, '10': 'color', '17': true},
    {'1': 'offset_x', '3': 2, '4': 1, '5': 1, '9': 1, '10': 'offsetX', '17': true},
    {'1': 'offset_y', '3': 3, '4': 1, '5': 1, '9': 2, '10': 'offsetY', '17': true},
    {'1': 'blur_radius', '3': 4, '4': 1, '5': 1, '9': 3, '10': 'blurRadius', '17': true},
    {'1': 'spread_radius', '3': 5, '4': 1, '5': 1, '9': 4, '10': 'spreadRadius', '17': true},
  ],
  '8': [
    {'1': '_color'},
    {'1': '_offset_x'},
    {'1': '_offset_y'},
    {'1': '_blur_radius'},
    {'1': '_spread_radius'},
  ],
};

/// Descriptor for `BoxShadowData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boxShadowDataDescriptor = $convert.base64Decode(
    'Cg1Cb3hTaGFkb3dEYXRhEjIKBWNvbG9yGAEgASgLMhcuZmx1dHRlcl9zZHVpLkNvbG9yRGF0YU'
    'gAUgVjb2xvcogBARIeCghvZmZzZXRfeBgCIAEoAUgBUgdvZmZzZXRYiAEBEh4KCG9mZnNldF95'
    'GAMgASgBSAJSB29mZnNldFmIAQESJAoLYmx1cl9yYWRpdXMYBCABKAFIA1IKYmx1clJhZGl1c4'
    'gBARIoCg1zcHJlYWRfcmFkaXVzGAUgASgBSARSDHNwcmVhZFJhZGl1c4gBAUIICgZfY29sb3JC'
    'CwoJX29mZnNldF94QgsKCV9vZmZzZXRfeUIOCgxfYmx1cl9yYWRpdXNCEAoOX3NwcmVhZF9yYW'
    'RpdXM=');

@$core.Deprecated('Use gradientDataDescriptor instead')
const GradientData$json = {
  '1': 'GradientData',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.flutter_sdui.GradientData.GradientType', '10': 'type'},
    {'1': 'colors', '3': 2, '4': 3, '5': 11, '6': '.flutter_sdui.ColorData', '10': 'colors'},
    {'1': 'stops', '3': 3, '4': 3, '5': 1, '10': 'stops'},
    {'1': 'begin', '3': 4, '4': 1, '5': 11, '6': '.flutter_sdui.AlignmentData', '9': 0, '10': 'begin', '17': true},
    {'1': 'end', '3': 5, '4': 1, '5': 11, '6': '.flutter_sdui.AlignmentData', '9': 1, '10': 'end', '17': true},
    {'1': 'center', '3': 6, '4': 1, '5': 11, '6': '.flutter_sdui.AlignmentData', '9': 2, '10': 'center', '17': true},
    {'1': 'radius', '3': 7, '4': 1, '5': 1, '9': 3, '10': 'radius', '17': true},
    {'1': 'start_angle', '3': 8, '4': 1, '5': 1, '9': 4, '10': 'startAngle', '17': true},
    {'1': 'end_angle', '3': 9, '4': 1, '5': 1, '9': 5, '10': 'endAngle', '17': true},
  ],
  '4': [GradientData_GradientType$json],
  '8': [
    {'1': '_begin'},
    {'1': '_end'},
    {'1': '_center'},
    {'1': '_radius'},
    {'1': '_start_angle'},
    {'1': '_end_angle'},
  ],
};

@$core.Deprecated('Use gradientDataDescriptor instead')
const GradientData_GradientType$json = {
  '1': 'GradientType',
  '2': [
    {'1': 'GRADIENT_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'LINEAR', '2': 1},
    {'1': 'RADIAL', '2': 2},
    {'1': 'SWEEP', '2': 3},
  ],
};

/// Descriptor for `GradientData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gradientDataDescriptor = $convert.base64Decode(
    'CgxHcmFkaWVudERhdGESOwoEdHlwZRgBIAEoDjInLmZsdXR0ZXJfc2R1aS5HcmFkaWVudERhdG'
    'EuR3JhZGllbnRUeXBlUgR0eXBlEi8KBmNvbG9ycxgCIAMoCzIXLmZsdXR0ZXJfc2R1aS5Db2xv'
    'ckRhdGFSBmNvbG9ycxIUCgVzdG9wcxgDIAMoAVIFc3RvcHMSNgoFYmVnaW4YBCABKAsyGy5mbH'
    'V0dGVyX3NkdWkuQWxpZ25tZW50RGF0YUgAUgViZWdpbogBARIyCgNlbmQYBSABKAsyGy5mbHV0'
    'dGVyX3NkdWkuQWxpZ25tZW50RGF0YUgBUgNlbmSIAQESOAoGY2VudGVyGAYgASgLMhsuZmx1dH'
    'Rlcl9zZHVpLkFsaWdubWVudERhdGFIAlIGY2VudGVyiAEBEhsKBnJhZGl1cxgHIAEoAUgDUgZy'
    'YWRpdXOIAQESJAoLc3RhcnRfYW5nbGUYCCABKAFIBFIKc3RhcnRBbmdsZYgBARIgCgllbmRfYW'
    '5nbGUYCSABKAFIBVIIZW5kQW5nbGWIAQEiUAoMR3JhZGllbnRUeXBlEh0KGUdSQURJRU5UX1RZ'
    'UEVfVU5TUEVDSUZJRUQQABIKCgZMSU5FQVIQARIKCgZSQURJQUwQAhIJCgVTV0VFUBADQggKBl'
    '9iZWdpbkIGCgRfZW5kQgkKB19jZW50ZXJCCQoHX3JhZGl1c0IOCgxfc3RhcnRfYW5nbGVCDAoK'
    'X2VuZF9hbmdsZQ==');

@$core.Deprecated('Use alignmentDataDescriptor instead')
const AlignmentData$json = {
  '1': 'AlignmentData',
  '2': [
    {'1': 'predefined', '3': 1, '4': 1, '5': 14, '6': '.flutter_sdui.AlignmentData.PredefinedAlignment', '9': 0, '10': 'predefined'},
    {'1': 'xy', '3': 2, '4': 1, '5': 11, '6': '.flutter_sdui.XYAlignment', '9': 0, '10': 'xy'},
  ],
  '4': [AlignmentData_PredefinedAlignment$json],
  '8': [
    {'1': 'alignment_type'},
  ],
};

@$core.Deprecated('Use alignmentDataDescriptor instead')
const AlignmentData_PredefinedAlignment$json = {
  '1': 'PredefinedAlignment',
  '2': [
    {'1': 'PREDEFINED_ALIGNMENT_UNSPECIFIED', '2': 0},
    {'1': 'BOTTOM_CENTER', '2': 1},
    {'1': 'BOTTOM_LEFT', '2': 2},
    {'1': 'BOTTOM_RIGHT', '2': 3},
    {'1': 'CENTER', '2': 4},
    {'1': 'CENTER_LEFT', '2': 5},
    {'1': 'CENTER_RIGHT', '2': 6},
    {'1': 'TOP_CENTER', '2': 7},
    {'1': 'TOP_LEFT', '2': 8},
    {'1': 'TOP_RIGHT', '2': 9},
  ],
};

/// Descriptor for `AlignmentData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alignmentDataDescriptor = $convert.base64Decode(
    'Cg1BbGlnbm1lbnREYXRhElEKCnByZWRlZmluZWQYASABKA4yLy5mbHV0dGVyX3NkdWkuQWxpZ2'
    '5tZW50RGF0YS5QcmVkZWZpbmVkQWxpZ25tZW50SABSCnByZWRlZmluZWQSKwoCeHkYAiABKAsy'
    'GS5mbHV0dGVyX3NkdWkuWFlBbGlnbm1lbnRIAFICeHkizQEKE1ByZWRlZmluZWRBbGlnbm1lbn'
    'QSJAogUFJFREVGSU5FRF9BTElHTk1FTlRfVU5TUEVDSUZJRUQQABIRCg1CT1RUT01fQ0VOVEVS'
    'EAESDwoLQk9UVE9NX0xFRlQQAhIQCgxCT1RUT01fUklHSFQQAxIKCgZDRU5URVIQBBIPCgtDRU'
    '5URVJfTEVGVBAFEhAKDENFTlRFUl9SSUdIVBAGEg4KClRPUF9DRU5URVIQBxIMCghUT1BfTEVG'
    'VBAIEg0KCVRPUF9SSUdIVBAJQhAKDmFsaWdubWVudF90eXBl');

@$core.Deprecated('Use xYAlignmentDescriptor instead')
const XYAlignment$json = {
  '1': 'XYAlignment',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 1, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 1, '10': 'y'},
  ],
};

/// Descriptor for `XYAlignment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List xYAlignmentDescriptor = $convert.base64Decode(
    'CgtYWUFsaWdubWVudBIMCgF4GAEgASgBUgF4EgwKAXkYAiABKAFSAXk=');

@$core.Deprecated('Use decorationImageDataDescriptor instead')
const DecorationImageData$json = {
  '1': 'DecorationImageData',
  '2': [
    {'1': 'src', '3': 1, '4': 1, '5': 9, '10': 'src'},
    {'1': 'fit', '3': 2, '4': 1, '5': 14, '6': '.flutter_sdui.BoxFitProto', '9': 0, '10': 'fit', '17': true},
    {'1': 'alignment', '3': 3, '4': 1, '5': 11, '6': '.flutter_sdui.AlignmentData', '9': 1, '10': 'alignment', '17': true},
    {'1': 'repeat', '3': 4, '4': 1, '5': 14, '6': '.flutter_sdui.ImageRepeatProto', '9': 2, '10': 'repeat', '17': true},
    {'1': 'match_text_direction', '3': 5, '4': 1, '5': 8, '9': 3, '10': 'matchTextDirection', '17': true},
    {'1': 'scale', '3': 6, '4': 1, '5': 1, '9': 4, '10': 'scale', '17': true},
    {'1': 'opacity', '3': 7, '4': 1, '5': 1, '9': 5, '10': 'opacity', '17': true},
    {'1': 'filter_quality', '3': 8, '4': 1, '5': 14, '6': '.flutter_sdui.FilterQualityProto', '9': 6, '10': 'filterQuality', '17': true},
    {'1': 'invert_colors', '3': 9, '4': 1, '5': 8, '9': 7, '10': 'invertColors', '17': true},
    {'1': 'is_anti_alias', '3': 10, '4': 1, '5': 8, '9': 8, '10': 'isAntiAlias', '17': true},
  ],
  '8': [
    {'1': '_fit'},
    {'1': '_alignment'},
    {'1': '_repeat'},
    {'1': '_match_text_direction'},
    {'1': '_scale'},
    {'1': '_opacity'},
    {'1': '_filter_quality'},
    {'1': '_invert_colors'},
    {'1': '_is_anti_alias'},
  ],
};

/// Descriptor for `DecorationImageData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decorationImageDataDescriptor = $convert.base64Decode(
    'ChNEZWNvcmF0aW9uSW1hZ2VEYXRhEhAKA3NyYxgBIAEoCVIDc3JjEjAKA2ZpdBgCIAEoDjIZLm'
    'ZsdXR0ZXJfc2R1aS5Cb3hGaXRQcm90b0gAUgNmaXSIAQESPgoJYWxpZ25tZW50GAMgASgLMhsu'
    'Zmx1dHRlcl9zZHVpLkFsaWdubWVudERhdGFIAVIJYWxpZ25tZW50iAEBEjsKBnJlcGVhdBgEIA'
    'EoDjIeLmZsdXR0ZXJfc2R1aS5JbWFnZVJlcGVhdFByb3RvSAJSBnJlcGVhdIgBARI1ChRtYXRj'
    'aF90ZXh0X2RpcmVjdGlvbhgFIAEoCEgDUhJtYXRjaFRleHREaXJlY3Rpb26IAQESGQoFc2NhbG'
    'UYBiABKAFIBFIFc2NhbGWIAQESHQoHb3BhY2l0eRgHIAEoAUgFUgdvcGFjaXR5iAEBEkwKDmZp'
    'bHRlcl9xdWFsaXR5GAggASgOMiAuZmx1dHRlcl9zZHVpLkZpbHRlclF1YWxpdHlQcm90b0gGUg'
    '1maWx0ZXJRdWFsaXR5iAEBEigKDWludmVydF9jb2xvcnMYCSABKAhIB1IMaW52ZXJ0Q29sb3Jz'
    'iAEBEicKDWlzX2FudGlfYWxpYXMYCiABKAhICFILaXNBbnRpQWxpYXOIAQFCBgoEX2ZpdEIMCg'
    'pfYWxpZ25tZW50QgkKB19yZXBlYXRCFwoVX21hdGNoX3RleHRfZGlyZWN0aW9uQggKBl9zY2Fs'
    'ZUIKCghfb3BhY2l0eUIRCg9fZmlsdGVyX3F1YWxpdHlCEAoOX2ludmVydF9jb2xvcnNCEAoOX2'
    'lzX2FudGlfYWxpYXM=');

@$core.Deprecated('Use sduiRequestDescriptor instead')
const SduiRequest$json = {
  '1': 'SduiRequest',
  '2': [
    {'1': 'screen_id', '3': 1, '4': 1, '5': 9, '10': 'screenId'},
  ],
};

/// Descriptor for `SduiRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sduiRequestDescriptor = $convert.base64Decode(
    'CgtTZHVpUmVxdWVzdBIbCglzY3JlZW5faWQYASABKAlSCHNjcmVlbklk');

