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
    {'1': 'NONE_BOX_FIT', '2': 6},
    {'1': 'SCALE_DOWN', '2': 7},
  ],
};

/// Descriptor for `BoxFitProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List boxFitProtoDescriptor = $convert.base64Decode(
    'CgtCb3hGaXRQcm90bxIXChNCT1hfRklUX1VOU1BFQ0lGSUVEEAASCAoERklMTBABEgsKB0NPTl'
    'RBSU4QAhIJCgVDT1ZFUhADEg0KCUZJVF9XSURUSBAEEg4KCkZJVF9IRUlHSFQQBRIQCgxOT05F'
    'X0JPWF9GSVQQBhIOCgpTQ0FMRV9ET1dOEAc=');

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

@$core.Deprecated('Use mainAxisAlignmentProtoDescriptor instead')
const MainAxisAlignmentProto$json = {
  '1': 'MainAxisAlignmentProto',
  '2': [
    {'1': 'MAIN_AXIS_ALIGNMENT_UNSPECIFIED', '2': 0},
    {'1': 'MAIN_AXIS_START', '2': 1},
    {'1': 'MAIN_AXIS_END', '2': 2},
    {'1': 'MAIN_AXIS_CENTER', '2': 3},
    {'1': 'SPACE_BETWEEN', '2': 4},
    {'1': 'SPACE_AROUND', '2': 5},
    {'1': 'SPACE_EVENLY', '2': 6},
  ],
};

/// Descriptor for `MainAxisAlignmentProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mainAxisAlignmentProtoDescriptor = $convert.base64Decode(
    'ChZNYWluQXhpc0FsaWdubWVudFByb3RvEiMKH01BSU5fQVhJU19BTElHTk1FTlRfVU5TUEVDSU'
    'ZJRUQQABITCg9NQUlOX0FYSVNfU1RBUlQQARIRCg1NQUlOX0FYSVNfRU5EEAISFAoQTUFJTl9B'
    'WElTX0NFTlRFUhADEhEKDVNQQUNFX0JFVFdFRU4QBBIQCgxTUEFDRV9BUk9VTkQQBRIQCgxTUE'
    'FDRV9FVkVOTFkQBg==');

@$core.Deprecated('Use crossAxisAlignmentProtoDescriptor instead')
const CrossAxisAlignmentProto$json = {
  '1': 'CrossAxisAlignmentProto',
  '2': [
    {'1': 'CROSS_AXIS_ALIGNMENT_UNSPECIFIED', '2': 0},
    {'1': 'CROSS_AXIS_START', '2': 1},
    {'1': 'CROSS_AXIS_END', '2': 2},
    {'1': 'CROSS_AXIS_CENTER', '2': 3},
    {'1': 'STRETCH', '2': 4},
    {'1': 'BASELINE', '2': 5},
  ],
};

/// Descriptor for `CrossAxisAlignmentProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List crossAxisAlignmentProtoDescriptor = $convert.base64Decode(
    'ChdDcm9zc0F4aXNBbGlnbm1lbnRQcm90bxIkCiBDUk9TU19BWElTX0FMSUdOTUVOVF9VTlNQRU'
    'NJRklFRBAAEhQKEENST1NTX0FYSVNfU1RBUlQQARISCg5DUk9TU19BWElTX0VORBACEhUKEUNS'
    'T1NTX0FYSVNfQ0VOVEVSEAMSCwoHU1RSRVRDSBAEEgwKCEJBU0VMSU5FEAU=');

@$core.Deprecated('Use mainAxisSizeProtoDescriptor instead')
const MainAxisSizeProto$json = {
  '1': 'MainAxisSizeProto',
  '2': [
    {'1': 'MAIN_AXIS_SIZE_UNSPECIFIED', '2': 0},
    {'1': 'MIN', '2': 1},
    {'1': 'MAX', '2': 2},
  ],
};

/// Descriptor for `MainAxisSizeProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mainAxisSizeProtoDescriptor = $convert.base64Decode(
    'ChFNYWluQXhpc1NpemVQcm90bxIeChpNQUlOX0FYSVNfU0laRV9VTlNQRUNJRklFRBAAEgcKA0'
    '1JThABEgcKA01BWBAC');

@$core.Deprecated('Use textDirectionProtoDescriptor instead')
const TextDirectionProto$json = {
  '1': 'TextDirectionProto',
  '2': [
    {'1': 'TEXT_DIRECTION_UNSPECIFIED', '2': 0},
    {'1': 'LTR', '2': 1},
    {'1': 'RTL', '2': 2},
  ],
};

/// Descriptor for `TextDirectionProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List textDirectionProtoDescriptor = $convert.base64Decode(
    'ChJUZXh0RGlyZWN0aW9uUHJvdG8SHgoaVEVYVF9ESVJFQ1RJT05fVU5TUEVDSUZJRUQQABIHCg'
    'NMVFIQARIHCgNSVEwQAg==');

@$core.Deprecated('Use verticalDirectionProtoDescriptor instead')
const VerticalDirectionProto$json = {
  '1': 'VerticalDirectionProto',
  '2': [
    {'1': 'VERTICAL_DIRECTION_UNSPECIFIED', '2': 0},
    {'1': 'UP', '2': 1},
    {'1': 'DOWN', '2': 2},
  ],
};

/// Descriptor for `VerticalDirectionProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List verticalDirectionProtoDescriptor =
    $convert.base64Decode(
        'ChZWZXJ0aWNhbERpcmVjdGlvblByb3RvEiIKHlZFUlRJQ0FMX0RJUkVDVElPTl9VTlNQRUNJRk'
        'lFRBAAEgYKAlVQEAESCAoERE9XThAC');

@$core.Deprecated('Use textBaselineProtoDescriptor instead')
const TextBaselineProto$json = {
  '1': 'TextBaselineProto',
  '2': [
    {'1': 'TEXT_BASELINE_UNSPECIFIED', '2': 0},
    {'1': 'ALPHABETIC', '2': 1},
    {'1': 'IDEOGRAPHIC', '2': 2},
  ],
};

/// Descriptor for `TextBaselineProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List textBaselineProtoDescriptor = $convert.base64Decode(
    'ChFUZXh0QmFzZWxpbmVQcm90bxIdChlURVhUX0JBU0VMSU5FX1VOU1BFQ0lGSUVEEAASDgoKQU'
    'xQSEFCRVRJQxABEg8KC0lERU9HUkFQSElDEAI=');

@$core.Deprecated('Use clipProtoDescriptor instead')
const ClipProto$json = {
  '1': 'ClipProto',
  '2': [
    {'1': 'CLIP_UNSPECIFIED', '2': 0},
    {'1': 'CLIP_NONE', '2': 1},
    {'1': 'HARD_EDGE', '2': 2},
    {'1': 'ANTI_ALIAS', '2': 3},
    {'1': 'ANTI_ALIAS_WITH_SAVE_LAYER', '2': 4},
  ],
};

/// Descriptor for `ClipProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List clipProtoDescriptor = $convert.base64Decode(
    'CglDbGlwUHJvdG8SFAoQQ0xJUF9VTlNQRUNJRklFRBAAEg0KCUNMSVBfTk9ORRABEg0KCUhBUk'
    'RfRURHRRACEg4KCkFOVElfQUxJQVMQAxIeChpBTlRJX0FMSUFTX1dJVEhfU0FWRV9MQVlFUhAE');

@$core.Deprecated('Use textAlignProtoDescriptor instead')
const TextAlignProto$json = {
  '1': 'TextAlignProto',
  '2': [
    {'1': 'TEXT_ALIGN_UNSPECIFIED', '2': 0},
    {'1': 'LEFT', '2': 1},
    {'1': 'RIGHT', '2': 2},
    {'1': 'TEXT_ALIGN_CENTER', '2': 3},
    {'1': 'JUSTIFY', '2': 4},
    {'1': 'TEXT_ALIGN_START', '2': 5},
    {'1': 'TEXT_ALIGN_END', '2': 6},
  ],
};

/// Descriptor for `TextAlignProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List textAlignProtoDescriptor = $convert.base64Decode(
    'Cg5UZXh0QWxpZ25Qcm90bxIaChZURVhUX0FMSUdOX1VOU1BFQ0lGSUVEEAASCAoETEVGVBABEg'
    'kKBVJJR0hUEAISFQoRVEVYVF9BTElHTl9DRU5URVIQAxILCgdKVVNUSUZZEAQSFAoQVEVYVF9B'
    'TElHTl9TVEFSVBAFEhIKDlRFWFRfQUxJR05fRU5EEAY=');

@$core.Deprecated('Use textOverflowProtoDescriptor instead')
const TextOverflowProto$json = {
  '1': 'TextOverflowProto',
  '2': [
    {'1': 'TEXT_OVERFLOW_UNSPECIFIED', '2': 0},
    {'1': 'CLIP', '2': 1},
    {'1': 'ELLIPSIS', '2': 2},
    {'1': 'FADE', '2': 3},
    {'1': 'VISIBLE', '2': 4},
  ],
};

/// Descriptor for `TextOverflowProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List textOverflowProtoDescriptor = $convert.base64Decode(
    'ChFUZXh0T3ZlcmZsb3dQcm90bxIdChlURVhUX09WRVJGTE9XX1VOU1BFQ0lGSUVEEAASCAoEQ0'
    'xJUBABEgwKCEVMTElQU0lTEAISCAoERkFERRADEgsKB1ZJU0lCTEUQBA==');

@$core.Deprecated('Use textDecorationProtoDescriptor instead')
const TextDecorationProto$json = {
  '1': 'TextDecorationProto',
  '2': [
    {'1': 'TEXT_DECORATION_UNSPECIFIED', '2': 0},
    {'1': 'TEXT_DECORATION_NONE', '2': 1},
    {'1': 'UNDERLINE', '2': 2},
    {'1': 'OVERLINE', '2': 3},
    {'1': 'LINE_THROUGH', '2': 4},
  ],
};

/// Descriptor for `TextDecorationProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List textDecorationProtoDescriptor = $convert.base64Decode(
    'ChNUZXh0RGVjb3JhdGlvblByb3RvEh8KG1RFWFRfREVDT1JBVElPTl9VTlNQRUNJRklFRBAAEh'
    'gKFFRFWFRfREVDT1JBVElPTl9OT05FEAESDQoJVU5ERVJMSU5FEAISDAoIT1ZFUkxJTkUQAxIQ'
    'CgxMSU5FX1RIUk9VR0gQBA==');

@$core.Deprecated('Use fontStyleProtoDescriptor instead')
const FontStyleProto$json = {
  '1': 'FontStyleProto',
  '2': [
    {'1': 'FONT_STYLE_UNSPECIFIED', '2': 0},
    {'1': 'NORMAL', '2': 1},
    {'1': 'ITALIC', '2': 2},
  ],
};

/// Descriptor for `FontStyleProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fontStyleProtoDescriptor = $convert.base64Decode(
    'Cg5Gb250U3R5bGVQcm90bxIaChZGT05UX1NUWUxFX1VOU1BFQ0lGSUVEEAASCgoGTk9STUFMEA'
    'ESCgoGSVRBTElDEAI=');

@$core.Deprecated('Use blendModeProtoDescriptor instead')
const BlendModeProto$json = {
  '1': 'BlendModeProto',
  '2': [
    {'1': 'BLEND_MODE_UNSPECIFIED', '2': 0},
    {'1': 'CLEAR', '2': 1},
    {'1': 'SRC', '2': 2},
    {'1': 'DST', '2': 3},
    {'1': 'SRC_OVER', '2': 4},
    {'1': 'DST_OVER', '2': 5},
    {'1': 'SRC_IN', '2': 6},
    {'1': 'DST_IN', '2': 7},
    {'1': 'SRC_OUT', '2': 8},
    {'1': 'DST_OUT', '2': 9},
    {'1': 'SRC_ATOP', '2': 10},
    {'1': 'DST_ATOP', '2': 11},
    {'1': 'XOR', '2': 12},
    {'1': 'PLUS', '2': 13},
    {'1': 'MODULATE', '2': 14},
    {'1': 'SCREEN', '2': 15},
    {'1': 'OVERLAY', '2': 16},
    {'1': 'DARKEN', '2': 17},
    {'1': 'LIGHTEN', '2': 18},
    {'1': 'COLOR_DODGE', '2': 19},
    {'1': 'COLOR_BURN', '2': 20},
    {'1': 'HARD_LIGHT', '2': 21},
    {'1': 'SOFT_LIGHT', '2': 22},
    {'1': 'DIFFERENCE', '2': 23},
    {'1': 'EXCLUSION', '2': 24},
    {'1': 'MULTIPLY', '2': 25},
    {'1': 'HUE', '2': 26},
    {'1': 'SATURATION', '2': 27},
    {'1': 'COLOR', '2': 28},
    {'1': 'LUMINOSITY', '2': 29},
  ],
};

/// Descriptor for `BlendModeProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List blendModeProtoDescriptor = $convert.base64Decode(
    'Cg5CbGVuZE1vZGVQcm90bxIaChZCTEVORF9NT0RFX1VOU1BFQ0lGSUVEEAASCQoFQ0xFQVIQAR'
    'IHCgNTUkMQAhIHCgNEU1QQAxIMCghTUkNfT1ZFUhAEEgwKCERTVF9PVkVSEAUSCgoGU1JDX0lO'
    'EAYSCgoGRFNUX0lOEAcSCwoHU1JDX09VVBAIEgsKB0RTVF9PVVQQCRIMCghTUkNfQVRPUBAKEg'
    'wKCERTVF9BVE9QEAsSBwoDWE9SEAwSCAoEUExVUxANEgwKCE1PRFVMQVRFEA4SCgoGU0NSRUVO'
    'EA8SCwoHT1ZFUkxBWRAQEgoKBkRBUktFThAREgsKB0xJR0hURU4QEhIPCgtDT0xPUl9ET0RHRR'
    'ATEg4KCkNPTE9SX0JVUk4QFBIOCgpIQVJEX0xJR0hUEBUSDgoKU09GVF9MSUdIVBAWEg4KCkRJ'
    'RkZFUkVOQ0UQFxINCglFWENMVVNJT04QGBIMCghNVUxUSVBMWRAZEgcKA0hVRRAaEg4KClNBVF'
    'VSQVRJT04QGxIJCgVDT0xPUhAcEg4KCkxVTUlOT1NJVFkQHQ==');

@$core.Deprecated('Use floatingActionButtonLocationProtoDescriptor instead')
const FloatingActionButtonLocationProto$json = {
  '1': 'FloatingActionButtonLocationProto',
  '2': [
    {'1': 'FAB_LOCATION_UNSPECIFIED', '2': 0},
    {'1': 'FAB_START_TOP', '2': 1},
    {'1': 'FAB_START', '2': 2},
    {'1': 'FAB_START_FLOAT', '2': 3},
    {'1': 'FAB_CENTER_TOP', '2': 4},
    {'1': 'FAB_CENTER', '2': 5},
    {'1': 'FAB_CENTER_FLOAT', '2': 6},
    {'1': 'FAB_END_TOP', '2': 7},
    {'1': 'FAB_END', '2': 8},
    {'1': 'FAB_END_FLOAT', '2': 9},
    {'1': 'FAB_MINI_CENTER_TOP', '2': 10},
    {'1': 'FAB_MINI_CENTER_FLOAT', '2': 11},
    {'1': 'FAB_MINI_START_TOP', '2': 12},
    {'1': 'FAB_MINI_START_FLOAT', '2': 13},
    {'1': 'FAB_MINI_END_TOP', '2': 14},
    {'1': 'FAB_MINI_END_FLOAT', '2': 15},
  ],
};

/// Descriptor for `FloatingActionButtonLocationProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List floatingActionButtonLocationProtoDescriptor = $convert.base64Decode(
    'CiFGbG9hdGluZ0FjdGlvbkJ1dHRvbkxvY2F0aW9uUHJvdG8SHAoYRkFCX0xPQ0FUSU9OX1VOU1'
    'BFQ0lGSUVEEAASEQoNRkFCX1NUQVJUX1RPUBABEg0KCUZBQl9TVEFSVBACEhMKD0ZBQl9TVEFS'
    'VF9GTE9BVBADEhIKDkZBQl9DRU5URVJfVE9QEAQSDgoKRkFCX0NFTlRFUhAFEhQKEEZBQl9DRU'
    '5URVJfRkxPQVQQBhIPCgtGQUJfRU5EX1RPUBAHEgsKB0ZBQl9FTkQQCBIRCg1GQUJfRU5EX0ZM'
    'T0FUEAkSFwoTRkFCX01JTklfQ0VOVEVSX1RPUBAKEhkKFUZBQl9NSU5JX0NFTlRFUl9GTE9BVB'
    'ALEhYKEkZBQl9NSU5JX1NUQVJUX1RPUBAMEhgKFEZBQl9NSU5JX1NUQVJUX0ZMT0FUEA0SFAoQ'
    'RkFCX01JTklfRU5EX1RPUBAOEhYKEkZBQl9NSU5JX0VORF9GTE9BVBAP');

@$core.Deprecated('Use sduiWidgetDataDescriptor instead')
const SduiWidgetData$json = {
  '1': 'SduiWidgetData',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.WidgetType',
      '10': 'type'
    },
    {
      '1': 'string_attributes',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.flutter_sdui.SduiWidgetData.StringAttributesEntry',
      '10': 'stringAttributes'
    },
    {
      '1': 'double_attributes',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.flutter_sdui.SduiWidgetData.DoubleAttributesEntry',
      '10': 'doubleAttributes'
    },
    {
      '1': 'bool_attributes',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.flutter_sdui.SduiWidgetData.BoolAttributesEntry',
      '10': 'boolAttributes'
    },
    {
      '1': 'int_attributes',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.flutter_sdui.SduiWidgetData.IntAttributesEntry',
      '10': 'intAttributes'
    },
    {
      '1': 'text_style',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.TextStyleData',
      '10': 'textStyle'
    },
    {
      '1': 'padding',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.EdgeInsetsData',
      '10': 'padding'
    },
    {
      '1': 'margin',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.EdgeInsetsData',
      '10': 'margin'
    },
    {
      '1': 'color',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.ColorData',
      '10': 'color'
    },
    {
      '1': 'icon',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.IconDataMessage',
      '10': 'icon'
    },
    {
      '1': 'box_decoration',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.BoxDecorationData',
      '10': 'boxDecoration'
    },
    {
      '1': 'children',
      '3': 12,
      '4': 3,
      '5': 11,
      '6': '.flutter_sdui.SduiWidgetData',
      '10': 'children'
    },
    {
      '1': 'child',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.SduiWidgetData',
      '10': 'child'
    },
    {
      '1': 'app_bar',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.SduiWidgetData',
      '10': 'appBar'
    },
    {
      '1': 'body',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.SduiWidgetData',
      '10': 'body'
    },
    {
      '1': 'floating_action_button',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.SduiWidgetData',
      '10': 'floatingActionButton'
    },
    {
      '1': 'background_color',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.ColorData',
      '10': 'backgroundColor'
    },
    {
      '1': 'bottom_navigation_bar',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.SduiWidgetData',
      '10': 'bottomNavigationBar'
    },
    {
      '1': 'drawer',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.SduiWidgetData',
      '10': 'drawer'
    },
    {
      '1': 'end_drawer',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.SduiWidgetData',
      '10': 'endDrawer'
    },
    {
      '1': 'bottom_sheet',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.SduiWidgetData',
      '10': 'bottomSheet'
    },
    {
      '1': 'resize_to_avoid_bottom_inset',
      '3': 22,
      '4': 1,
      '5': 8,
      '10': 'resizeToAvoidBottomInset'
    },
    {'1': 'primary', '3': 23, '4': 1, '5': 8, '10': 'primary'},
    {
      '1': 'floating_action_button_location',
      '3': 24,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.FloatingActionButtonLocationProto',
      '10': 'floatingActionButtonLocation'
    },
    {'1': 'extend_body', '3': 25, '4': 1, '5': 8, '10': 'extendBody'},
    {
      '1': 'extend_body_behind_app_bar',
      '3': 26,
      '4': 1,
      '5': 8,
      '10': 'extendBodyBehindAppBar'
    },
    {
      '1': 'drawer_scrim_color',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.ColorData',
      '10': 'drawerScrimColor'
    },
    {
      '1': 'drawer_edge_drag_width',
      '3': 28,
      '4': 1,
      '5': 1,
      '10': 'drawerEdgeDragWidth'
    },
    {
      '1': 'drawer_enable_open_drag_gesture',
      '3': 29,
      '4': 1,
      '5': 8,
      '10': 'drawerEnableOpenDragGesture'
    },
    {
      '1': 'end_drawer_enable_open_drag_gesture',
      '3': 30,
      '4': 1,
      '5': 8,
      '10': 'endDrawerEnableOpenDragGesture'
    },
    {
      '1': 'main_axis_alignment',
      '3': 31,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.MainAxisAlignmentProto',
      '10': 'mainAxisAlignment'
    },
    {
      '1': 'cross_axis_alignment',
      '3': 32,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.CrossAxisAlignmentProto',
      '10': 'crossAxisAlignment'
    },
    {
      '1': 'main_axis_size',
      '3': 33,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.MainAxisSizeProto',
      '10': 'mainAxisSize'
    },
    {
      '1': 'text_direction',
      '3': 34,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.TextDirectionProto',
      '10': 'textDirection'
    },
    {
      '1': 'vertical_direction',
      '3': 35,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.VerticalDirectionProto',
      '10': 'verticalDirection'
    },
    {
      '1': 'text_baseline',
      '3': 36,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.TextBaselineProto',
      '10': 'textBaseline'
    },
    {
      '1': 'alignment',
      '3': 37,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.AlignmentData',
      '10': 'alignment'
    },
    {
      '1': 'constraints',
      '3': 38,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.BoxConstraintsData',
      '10': 'constraints'
    },
    {
      '1': 'transform',
      '3': 39,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.TransformData',
      '10': 'transform'
    },
    {
      '1': 'transform_alignment',
      '3': 40,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.AlignmentData',
      '10': 'transformAlignment'
    },
    {
      '1': 'clip_behavior',
      '3': 41,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.ClipProto',
      '10': 'clipBehavior'
    },
    {
      '1': 'text_align',
      '3': 42,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.TextAlignProto',
      '10': 'textAlign'
    },
    {
      '1': 'overflow',
      '3': 43,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.TextOverflowProto',
      '10': 'overflow'
    },
    {'1': 'max_lines', '3': 44, '4': 1, '5': 5, '10': 'maxLines'},
    {'1': 'soft_wrap', '3': 45, '4': 1, '5': 8, '10': 'softWrap'},
    {'1': 'letter_spacing', '3': 46, '4': 1, '5': 1, '10': 'letterSpacing'},
    {'1': 'word_spacing', '3': 47, '4': 1, '5': 1, '10': 'wordSpacing'},
    {'1': 'height', '3': 48, '4': 1, '5': 1, '10': 'height'},
    {'1': 'font_family', '3': 49, '4': 1, '5': 9, '10': 'fontFamily'},
    {
      '1': 'repeat',
      '3': 50,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.ImageRepeatProto',
      '10': 'repeat'
    },
    {
      '1': 'color_blend_mode',
      '3': 51,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.BlendModeProto',
      '10': 'colorBlendMode'
    },
    {
      '1': 'center_slice',
      '3': 52,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.RectData',
      '10': 'centerSlice'
    },
    {
      '1': 'match_text_direction',
      '3': 53,
      '4': 1,
      '5': 8,
      '10': 'matchTextDirection'
    },
    {'1': 'gapless_playback', '3': 54, '4': 1, '5': 8, '10': 'gaplessPlayback'},
    {
      '1': 'filter_quality',
      '3': 55,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.FilterQualityProto',
      '10': 'filterQuality'
    },
    {'1': 'cache_width', '3': 56, '4': 1, '5': 5, '10': 'cacheWidth'},
    {'1': 'cache_height', '3': 57, '4': 1, '5': 5, '10': 'cacheHeight'},
    {'1': 'scale', '3': 58, '4': 1, '5': 1, '10': 'scale'},
    {'1': 'semantic_label', '3': 59, '4': 1, '5': 9, '10': 'semanticLabel'},
    {
      '1': 'error_widget',
      '3': 60,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.SduiWidgetData',
      '10': 'errorWidget'
    },
    {
      '1': 'loading_widget',
      '3': 61,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.SduiWidgetData',
      '10': 'loadingWidget'
    },
    {'1': 'opacity', '3': 62, '4': 1, '5': 1, '10': 'opacity'},
    {
      '1': 'apply_text_scaling',
      '3': 63,
      '4': 1,
      '5': 8,
      '10': 'applyTextScaling'
    },
    {
      '1': 'shadows',
      '3': 64,
      '4': 3,
      '5': 11,
      '6': '.flutter_sdui.ShadowData',
      '10': 'shadows'
    },
  ],
  '3': [
    SduiWidgetData_StringAttributesEntry$json,
    SduiWidgetData_DoubleAttributesEntry$json,
    SduiWidgetData_BoolAttributesEntry$json,
    SduiWidgetData_IntAttributesEntry$json
  ],
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
    'X3NkdWkuQ29sb3JEYXRhUg9iYWNrZ3JvdW5kQ29sb3ISUAoVYm90dG9tX25hdmlnYXRpb25fYm'
    'FyGBIgASgLMhwuZmx1dHRlcl9zZHVpLlNkdWlXaWRnZXREYXRhUhNib3R0b21OYXZpZ2F0aW9u'
    'QmFyEjQKBmRyYXdlchgTIAEoCzIcLmZsdXR0ZXJfc2R1aS5TZHVpV2lkZ2V0RGF0YVIGZHJhd2'
    'VyEjsKCmVuZF9kcmF3ZXIYFCABKAsyHC5mbHV0dGVyX3NkdWkuU2R1aVdpZGdldERhdGFSCWVu'
    'ZERyYXdlchI/Cgxib3R0b21fc2hlZXQYFSABKAsyHC5mbHV0dGVyX3NkdWkuU2R1aVdpZGdldE'
    'RhdGFSC2JvdHRvbVNoZWV0Ej4KHHJlc2l6ZV90b19hdm9pZF9ib3R0b21faW5zZXQYFiABKAhS'
    'GHJlc2l6ZVRvQXZvaWRCb3R0b21JbnNldBIYCgdwcmltYXJ5GBcgASgIUgdwcmltYXJ5EnYKH2'
    'Zsb2F0aW5nX2FjdGlvbl9idXR0b25fbG9jYXRpb24YGCABKA4yLy5mbHV0dGVyX3NkdWkuRmxv'
    'YXRpbmdBY3Rpb25CdXR0b25Mb2NhdGlvblByb3RvUhxmbG9hdGluZ0FjdGlvbkJ1dHRvbkxvY2'
    'F0aW9uEh8KC2V4dGVuZF9ib2R5GBkgASgIUgpleHRlbmRCb2R5EjoKGmV4dGVuZF9ib2R5X2Jl'
    'aGluZF9hcHBfYmFyGBogASgIUhZleHRlbmRCb2R5QmVoaW5kQXBwQmFyEkUKEmRyYXdlcl9zY3'
    'JpbV9jb2xvchgbIAEoCzIXLmZsdXR0ZXJfc2R1aS5Db2xvckRhdGFSEGRyYXdlclNjcmltQ29s'
    'b3ISMwoWZHJhd2VyX2VkZ2VfZHJhZ193aWR0aBgcIAEoAVITZHJhd2VyRWRnZURyYWdXaWR0aB'
    'JECh9kcmF3ZXJfZW5hYmxlX29wZW5fZHJhZ19nZXN0dXJlGB0gASgIUhtkcmF3ZXJFbmFibGVP'
    'cGVuRHJhZ0dlc3R1cmUSSwojZW5kX2RyYXdlcl9lbmFibGVfb3Blbl9kcmFnX2dlc3R1cmUYHi'
    'ABKAhSHmVuZERyYXdlckVuYWJsZU9wZW5EcmFnR2VzdHVyZRJUChNtYWluX2F4aXNfYWxpZ25t'
    'ZW50GB8gASgOMiQuZmx1dHRlcl9zZHVpLk1haW5BeGlzQWxpZ25tZW50UHJvdG9SEW1haW5BeG'
    'lzQWxpZ25tZW50ElcKFGNyb3NzX2F4aXNfYWxpZ25tZW50GCAgASgOMiUuZmx1dHRlcl9zZHVp'
    'LkNyb3NzQXhpc0FsaWdubWVudFByb3RvUhJjcm9zc0F4aXNBbGlnbm1lbnQSRQoObWFpbl9heG'
    'lzX3NpemUYISABKA4yHy5mbHV0dGVyX3NkdWkuTWFpbkF4aXNTaXplUHJvdG9SDG1haW5BeGlz'
    'U2l6ZRJHCg50ZXh0X2RpcmVjdGlvbhgiIAEoDjIgLmZsdXR0ZXJfc2R1aS5UZXh0RGlyZWN0aW'
    '9uUHJvdG9SDXRleHREaXJlY3Rpb24SUwoSdmVydGljYWxfZGlyZWN0aW9uGCMgASgOMiQuZmx1'
    'dHRlcl9zZHVpLlZlcnRpY2FsRGlyZWN0aW9uUHJvdG9SEXZlcnRpY2FsRGlyZWN0aW9uEkQKDX'
    'RleHRfYmFzZWxpbmUYJCABKA4yHy5mbHV0dGVyX3NkdWkuVGV4dEJhc2VsaW5lUHJvdG9SDHRl'
    'eHRCYXNlbGluZRI5CglhbGlnbm1lbnQYJSABKAsyGy5mbHV0dGVyX3NkdWkuQWxpZ25tZW50RG'
    'F0YVIJYWxpZ25tZW50EkIKC2NvbnN0cmFpbnRzGCYgASgLMiAuZmx1dHRlcl9zZHVpLkJveENv'
    'bnN0cmFpbnRzRGF0YVILY29uc3RyYWludHMSOQoJdHJhbnNmb3JtGCcgASgLMhsuZmx1dHRlcl'
    '9zZHVpLlRyYW5zZm9ybURhdGFSCXRyYW5zZm9ybRJMChN0cmFuc2Zvcm1fYWxpZ25tZW50GCgg'
    'ASgLMhsuZmx1dHRlcl9zZHVpLkFsaWdubWVudERhdGFSEnRyYW5zZm9ybUFsaWdubWVudBI8Cg'
    '1jbGlwX2JlaGF2aW9yGCkgASgOMhcuZmx1dHRlcl9zZHVpLkNsaXBQcm90b1IMY2xpcEJlaGF2'
    'aW9yEjsKCnRleHRfYWxpZ24YKiABKA4yHC5mbHV0dGVyX3NkdWkuVGV4dEFsaWduUHJvdG9SCX'
    'RleHRBbGlnbhI7CghvdmVyZmxvdxgrIAEoDjIfLmZsdXR0ZXJfc2R1aS5UZXh0T3ZlcmZsb3dQ'
    'cm90b1IIb3ZlcmZsb3cSGwoJbWF4X2xpbmVzGCwgASgFUghtYXhMaW5lcxIbCglzb2Z0X3dyYX'
    'AYLSABKAhSCHNvZnRXcmFwEiUKDmxldHRlcl9zcGFjaW5nGC4gASgBUg1sZXR0ZXJTcGFjaW5n'
    'EiEKDHdvcmRfc3BhY2luZxgvIAEoAVILd29yZFNwYWNpbmcSFgoGaGVpZ2h0GDAgASgBUgZoZW'
    'lnaHQSHwoLZm9udF9mYW1pbHkYMSABKAlSCmZvbnRGYW1pbHkSNgoGcmVwZWF0GDIgASgOMh4u'
    'Zmx1dHRlcl9zZHVpLkltYWdlUmVwZWF0UHJvdG9SBnJlcGVhdBJGChBjb2xvcl9ibGVuZF9tb2'
    'RlGDMgASgOMhwuZmx1dHRlcl9zZHVpLkJsZW5kTW9kZVByb3RvUg5jb2xvckJsZW5kTW9kZRI5'
    'CgxjZW50ZXJfc2xpY2UYNCABKAsyFi5mbHV0dGVyX3NkdWkuUmVjdERhdGFSC2NlbnRlclNsaW'
    'NlEjAKFG1hdGNoX3RleHRfZGlyZWN0aW9uGDUgASgIUhJtYXRjaFRleHREaXJlY3Rpb24SKQoQ'
    'Z2FwbGVzc19wbGF5YmFjaxg2IAEoCFIPZ2FwbGVzc1BsYXliYWNrEkcKDmZpbHRlcl9xdWFsaX'
    'R5GDcgASgOMiAuZmx1dHRlcl9zZHVpLkZpbHRlclF1YWxpdHlQcm90b1INZmlsdGVyUXVhbGl0'
    'eRIfCgtjYWNoZV93aWR0aBg4IAEoBVIKY2FjaGVXaWR0aBIhCgxjYWNoZV9oZWlnaHQYOSABKA'
    'VSC2NhY2hlSGVpZ2h0EhQKBXNjYWxlGDogASgBUgVzY2FsZRIlCg5zZW1hbnRpY19sYWJlbBg7'
    'IAEoCVINc2VtYW50aWNMYWJlbBI/CgxlcnJvcl93aWRnZXQYPCABKAsyHC5mbHV0dGVyX3NkdW'
    'kuU2R1aVdpZGdldERhdGFSC2Vycm9yV2lkZ2V0EkMKDmxvYWRpbmdfd2lkZ2V0GD0gASgLMhwu'
    'Zmx1dHRlcl9zZHVpLlNkdWlXaWRnZXREYXRhUg1sb2FkaW5nV2lkZ2V0EhgKB29wYWNpdHkYPi'
    'ABKAFSB29wYWNpdHkSLAoSYXBwbHlfdGV4dF9zY2FsaW5nGD8gASgIUhBhcHBseVRleHRTY2Fs'
    'aW5nEjIKB3NoYWRvd3MYQCADKAsyGC5mbHV0dGVyX3NkdWkuU2hhZG93RGF0YVIHc2hhZG93cx'
    'pDChVTdHJpbmdBdHRyaWJ1dGVzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiAB'
    'KAlSBXZhbHVlOgI4ARpDChVEb3VibGVBdHRyaWJ1dGVzRW50cnkSEAoDa2V5GAEgASgJUgNrZX'
    'kSFAoFdmFsdWUYAiABKAFSBXZhbHVlOgI4ARpBChNCb29sQXR0cmlidXRlc0VudHJ5EhAKA2tl'
    'eRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgIUgV2YWx1ZToCOAEaQAoSSW50QXR0cmlidXRlc0'
    'VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgFUgV2YWx1ZToCOAE=');

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
    {
      '1': 'color',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.ColorData',
      '9': 0,
      '10': 'color',
      '17': true
    },
    {
      '1': 'font_size',
      '3': 2,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'fontSize',
      '17': true
    },
    {
      '1': 'font_weight',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'fontWeight',
      '17': true
    },
    {
      '1': 'decoration',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.TextDecorationProto',
      '9': 3,
      '10': 'decoration',
      '17': true
    },
    {
      '1': 'letter_spacing',
      '3': 5,
      '4': 1,
      '5': 1,
      '9': 4,
      '10': 'letterSpacing',
      '17': true
    },
    {
      '1': 'word_spacing',
      '3': 6,
      '4': 1,
      '5': 1,
      '9': 5,
      '10': 'wordSpacing',
      '17': true
    },
    {'1': 'height', '3': 7, '4': 1, '5': 1, '9': 6, '10': 'height', '17': true},
    {
      '1': 'font_family',
      '3': 8,
      '4': 1,
      '5': 9,
      '9': 7,
      '10': 'fontFamily',
      '17': true
    },
    {
      '1': 'font_style',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.FontStyleProto',
      '9': 8,
      '10': 'fontStyle',
      '17': true
    },
  ],
  '8': [
    {'1': '_color'},
    {'1': '_font_size'},
    {'1': '_font_weight'},
    {'1': '_decoration'},
    {'1': '_letter_spacing'},
    {'1': '_word_spacing'},
    {'1': '_height'},
    {'1': '_font_family'},
    {'1': '_font_style'},
  ],
};

/// Descriptor for `TextStyleData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textStyleDataDescriptor = $convert.base64Decode(
    'Cg1UZXh0U3R5bGVEYXRhEjIKBWNvbG9yGAEgASgLMhcuZmx1dHRlcl9zZHVpLkNvbG9yRGF0YU'
    'gAUgVjb2xvcogBARIgCglmb250X3NpemUYAiABKAFIAVIIZm9udFNpemWIAQESJAoLZm9udF93'
    'ZWlnaHQYAyABKAlIAlIKZm9udFdlaWdodIgBARJGCgpkZWNvcmF0aW9uGAQgASgOMiEuZmx1dH'
    'Rlcl9zZHVpLlRleHREZWNvcmF0aW9uUHJvdG9IA1IKZGVjb3JhdGlvbogBARIqCg5sZXR0ZXJf'
    'c3BhY2luZxgFIAEoAUgEUg1sZXR0ZXJTcGFjaW5niAEBEiYKDHdvcmRfc3BhY2luZxgGIAEoAU'
    'gFUgt3b3JkU3BhY2luZ4gBARIbCgZoZWlnaHQYByABKAFIBlIGaGVpZ2h0iAEBEiQKC2ZvbnRf'
    'ZmFtaWx5GAggASgJSAdSCmZvbnRGYW1pbHmIAQESQAoKZm9udF9zdHlsZRgJIAEoDjIcLmZsdX'
    'R0ZXJfc2R1aS5Gb250U3R5bGVQcm90b0gIUglmb250U3R5bGWIAQFCCAoGX2NvbG9yQgwKCl9m'
    'b250X3NpemVCDgoMX2ZvbnRfd2VpZ2h0Qg0KC19kZWNvcmF0aW9uQhEKD19sZXR0ZXJfc3BhY2'
    'luZ0IPCg1fd29yZF9zcGFjaW5nQgkKB19oZWlnaHRCDgoMX2ZvbnRfZmFtaWx5Qg0KC19mb250'
    'X3N0eWxl');

@$core.Deprecated('Use iconDataMessageDescriptor instead')
const IconDataMessage$json = {
  '1': 'IconDataMessage',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {
      '1': 'code_point',
      '3': 2,
      '4': 1,
      '5': 5,
      '9': 1,
      '10': 'codePoint',
      '17': true
    },
    {
      '1': 'font_family',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'fontFamily',
      '17': true
    },
    {
      '1': 'color',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.ColorData',
      '9': 3,
      '10': 'color',
      '17': true
    },
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
    {
      '1': 'color',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.ColorData',
      '9': 0,
      '10': 'color',
      '17': true
    },
    {
      '1': 'border_radius',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.BorderRadiusData',
      '9': 1,
      '10': 'borderRadius',
      '17': true
    },
    {
      '1': 'border',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.BorderData',
      '9': 2,
      '10': 'border',
      '17': true
    },
    {
      '1': 'box_shadow',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.flutter_sdui.BoxShadowData',
      '10': 'boxShadow'
    },
    {
      '1': 'gradient',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.GradientData',
      '9': 3,
      '10': 'gradient',
      '17': true
    },
    {
      '1': 'shape',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.BoxShapeProto',
      '9': 4,
      '10': 'shape',
      '17': true
    },
    {
      '1': 'image',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.DecorationImageData',
      '9': 5,
      '10': 'image',
      '17': true
    },
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
    {
      '1': 'top_left',
      '3': 2,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'topLeft',
      '17': true
    },
    {
      '1': 'top_right',
      '3': 3,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'topRight',
      '17': true
    },
    {
      '1': 'bottom_left',
      '3': 4,
      '4': 1,
      '5': 1,
      '9': 3,
      '10': 'bottomLeft',
      '17': true
    },
    {
      '1': 'bottom_right',
      '3': 5,
      '4': 1,
      '5': 1,
      '9': 4,
      '10': 'bottomRight',
      '17': true
    },
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
    {
      '1': 'color',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.ColorData',
      '9': 0,
      '10': 'color',
      '17': true
    },
    {'1': 'width', '3': 2, '4': 1, '5': 1, '9': 1, '10': 'width', '17': true},
    {
      '1': 'style',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.BorderStyleProto',
      '9': 2,
      '10': 'style',
      '17': true
    },
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
    {
      '1': 'top',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.BorderSideData',
      '9': 0,
      '10': 'top',
      '17': true
    },
    {
      '1': 'right',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.BorderSideData',
      '9': 1,
      '10': 'right',
      '17': true
    },
    {
      '1': 'bottom',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.BorderSideData',
      '9': 2,
      '10': 'bottom',
      '17': true
    },
    {
      '1': 'left',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.BorderSideData',
      '9': 3,
      '10': 'left',
      '17': true
    },
    {
      '1': 'all',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.BorderSideData',
      '9': 4,
      '10': 'all',
      '17': true
    },
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
    {
      '1': 'color',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.ColorData',
      '9': 0,
      '10': 'color',
      '17': true
    },
    {
      '1': 'offset_x',
      '3': 2,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'offsetX',
      '17': true
    },
    {
      '1': 'offset_y',
      '3': 3,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'offsetY',
      '17': true
    },
    {
      '1': 'blur_radius',
      '3': 4,
      '4': 1,
      '5': 1,
      '9': 3,
      '10': 'blurRadius',
      '17': true
    },
    {
      '1': 'spread_radius',
      '3': 5,
      '4': 1,
      '5': 1,
      '9': 4,
      '10': 'spreadRadius',
      '17': true
    },
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
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.GradientData.GradientType',
      '10': 'type'
    },
    {
      '1': 'colors',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.flutter_sdui.ColorData',
      '10': 'colors'
    },
    {'1': 'stops', '3': 3, '4': 3, '5': 1, '10': 'stops'},
    {
      '1': 'begin',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.AlignmentData',
      '9': 0,
      '10': 'begin',
      '17': true
    },
    {
      '1': 'end',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.AlignmentData',
      '9': 1,
      '10': 'end',
      '17': true
    },
    {
      '1': 'center',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.AlignmentData',
      '9': 2,
      '10': 'center',
      '17': true
    },
    {'1': 'radius', '3': 7, '4': 1, '5': 1, '9': 3, '10': 'radius', '17': true},
    {
      '1': 'start_angle',
      '3': 8,
      '4': 1,
      '5': 1,
      '9': 4,
      '10': 'startAngle',
      '17': true
    },
    {
      '1': 'end_angle',
      '3': 9,
      '4': 1,
      '5': 1,
      '9': 5,
      '10': 'endAngle',
      '17': true
    },
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
    {
      '1': 'predefined',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.AlignmentData.PredefinedAlignment',
      '9': 0,
      '10': 'predefined'
    },
    {
      '1': 'xy',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.XYAlignment',
      '9': 0,
      '10': 'xy'
    },
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
    {'1': 'CENTER_ALIGN', '2': 4},
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
    'GS5mbHV0dGVyX3NkdWkuWFlBbGlnbm1lbnRIAFICeHki0wEKE1ByZWRlZmluZWRBbGlnbm1lbn'
    'QSJAogUFJFREVGSU5FRF9BTElHTk1FTlRfVU5TUEVDSUZJRUQQABIRCg1CT1RUT01fQ0VOVEVS'
    'EAESDwoLQk9UVE9NX0xFRlQQAhIQCgxCT1RUT01fUklHSFQQAxIQCgxDRU5URVJfQUxJR04QBB'
    'IPCgtDRU5URVJfTEVGVBAFEhAKDENFTlRFUl9SSUdIVBAGEg4KClRPUF9DRU5URVIQBxIMCghU'
    'T1BfTEVGVBAIEg0KCVRPUF9SSUdIVBAJQhAKDmFsaWdubWVudF90eXBl');

@$core.Deprecated('Use xYAlignmentDescriptor instead')
const XYAlignment$json = {
  '1': 'XYAlignment',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 1, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 1, '10': 'y'},
  ],
};

/// Descriptor for `XYAlignment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List xYAlignmentDescriptor = $convert
    .base64Decode('CgtYWUFsaWdubWVudBIMCgF4GAEgASgBUgF4EgwKAXkYAiABKAFSAXk=');

@$core.Deprecated('Use decorationImageDataDescriptor instead')
const DecorationImageData$json = {
  '1': 'DecorationImageData',
  '2': [
    {'1': 'src', '3': 1, '4': 1, '5': 9, '10': 'src'},
    {
      '1': 'fit',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.BoxFitProto',
      '9': 0,
      '10': 'fit',
      '17': true
    },
    {
      '1': 'alignment',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.AlignmentData',
      '9': 1,
      '10': 'alignment',
      '17': true
    },
    {
      '1': 'repeat',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.ImageRepeatProto',
      '9': 2,
      '10': 'repeat',
      '17': true
    },
    {
      '1': 'match_text_direction',
      '3': 5,
      '4': 1,
      '5': 8,
      '9': 3,
      '10': 'matchTextDirection',
      '17': true
    },
    {'1': 'scale', '3': 6, '4': 1, '5': 1, '9': 4, '10': 'scale', '17': true},
    {
      '1': 'opacity',
      '3': 7,
      '4': 1,
      '5': 1,
      '9': 5,
      '10': 'opacity',
      '17': true
    },
    {
      '1': 'filter_quality',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.FilterQualityProto',
      '9': 6,
      '10': 'filterQuality',
      '17': true
    },
    {
      '1': 'invert_colors',
      '3': 9,
      '4': 1,
      '5': 8,
      '9': 7,
      '10': 'invertColors',
      '17': true
    },
    {
      '1': 'is_anti_alias',
      '3': 10,
      '4': 1,
      '5': 8,
      '9': 8,
      '10': 'isAntiAlias',
      '17': true
    },
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

@$core.Deprecated('Use boxConstraintsDataDescriptor instead')
const BoxConstraintsData$json = {
  '1': 'BoxConstraintsData',
  '2': [
    {
      '1': 'min_width',
      '3': 1,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'minWidth',
      '17': true
    },
    {
      '1': 'max_width',
      '3': 2,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'maxWidth',
      '17': true
    },
    {
      '1': 'min_height',
      '3': 3,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'minHeight',
      '17': true
    },
    {
      '1': 'max_height',
      '3': 4,
      '4': 1,
      '5': 1,
      '9': 3,
      '10': 'maxHeight',
      '17': true
    },
  ],
  '8': [
    {'1': '_min_width'},
    {'1': '_max_width'},
    {'1': '_min_height'},
    {'1': '_max_height'},
  ],
};

/// Descriptor for `BoxConstraintsData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boxConstraintsDataDescriptor = $convert.base64Decode(
    'ChJCb3hDb25zdHJhaW50c0RhdGESIAoJbWluX3dpZHRoGAEgASgBSABSCG1pbldpZHRoiAEBEi'
    'AKCW1heF93aWR0aBgCIAEoAUgBUghtYXhXaWR0aIgBARIiCgptaW5faGVpZ2h0GAMgASgBSAJS'
    'CW1pbkhlaWdodIgBARIiCgptYXhfaGVpZ2h0GAQgASgBSANSCW1heEhlaWdodIgBAUIMCgpfbW'
    'luX3dpZHRoQgwKCl9tYXhfd2lkdGhCDQoLX21pbl9oZWlnaHRCDQoLX21heF9oZWlnaHQ=');

@$core.Deprecated('Use transformDataDescriptor instead')
const TransformData$json = {
  '1': 'TransformData',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.flutter_sdui.TransformData.TransformType',
      '10': 'type'
    },
    {'1': 'matrix_values', '3': 2, '4': 3, '5': 1, '10': 'matrixValues'},
    {
      '1': 'translate_x',
      '3': 3,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'translateX',
      '17': true
    },
    {
      '1': 'translate_y',
      '3': 4,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'translateY',
      '17': true
    },
    {
      '1': 'translate_z',
      '3': 5,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'translateZ',
      '17': true
    },
    {
      '1': 'rotation_angle',
      '3': 6,
      '4': 1,
      '5': 1,
      '9': 3,
      '10': 'rotationAngle',
      '17': true
    },
    {
      '1': 'rotation_x',
      '3': 7,
      '4': 1,
      '5': 1,
      '9': 4,
      '10': 'rotationX',
      '17': true
    },
    {
      '1': 'rotation_y',
      '3': 8,
      '4': 1,
      '5': 1,
      '9': 5,
      '10': 'rotationY',
      '17': true
    },
    {
      '1': 'rotation_z',
      '3': 9,
      '4': 1,
      '5': 1,
      '9': 6,
      '10': 'rotationZ',
      '17': true
    },
    {
      '1': 'scale_x',
      '3': 10,
      '4': 1,
      '5': 1,
      '9': 7,
      '10': 'scaleX',
      '17': true
    },
    {
      '1': 'scale_y',
      '3': 11,
      '4': 1,
      '5': 1,
      '9': 8,
      '10': 'scaleY',
      '17': true
    },
    {
      '1': 'scale_z',
      '3': 12,
      '4': 1,
      '5': 1,
      '9': 9,
      '10': 'scaleZ',
      '17': true
    },
  ],
  '4': [TransformData_TransformType$json],
  '8': [
    {'1': '_translate_x'},
    {'1': '_translate_y'},
    {'1': '_translate_z'},
    {'1': '_rotation_angle'},
    {'1': '_rotation_x'},
    {'1': '_rotation_y'},
    {'1': '_rotation_z'},
    {'1': '_scale_x'},
    {'1': '_scale_y'},
    {'1': '_scale_z'},
  ],
};

@$core.Deprecated('Use transformDataDescriptor instead')
const TransformData_TransformType$json = {
  '1': 'TransformType',
  '2': [
    {'1': 'TRANSFORM_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'MATRIX_4X4', '2': 1},
    {'1': 'TRANSLATE', '2': 2},
    {'1': 'ROTATE', '2': 3},
    {'1': 'SCALE', '2': 4},
  ],
};

/// Descriptor for `TransformData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transformDataDescriptor = $convert.base64Decode(
    'Cg1UcmFuc2Zvcm1EYXRhEj0KBHR5cGUYASABKA4yKS5mbHV0dGVyX3NkdWkuVHJhbnNmb3JtRG'
    'F0YS5UcmFuc2Zvcm1UeXBlUgR0eXBlEiMKDW1hdHJpeF92YWx1ZXMYAiADKAFSDG1hdHJpeFZh'
    'bHVlcxIkCgt0cmFuc2xhdGVfeBgDIAEoAUgAUgp0cmFuc2xhdGVYiAEBEiQKC3RyYW5zbGF0ZV'
    '95GAQgASgBSAFSCnRyYW5zbGF0ZVmIAQESJAoLdHJhbnNsYXRlX3oYBSABKAFIAlIKdHJhbnNs'
    'YXRlWogBARIqCg5yb3RhdGlvbl9hbmdsZRgGIAEoAUgDUg1yb3RhdGlvbkFuZ2xliAEBEiIKCn'
    'JvdGF0aW9uX3gYByABKAFIBFIJcm90YXRpb25YiAEBEiIKCnJvdGF0aW9uX3kYCCABKAFIBVIJ'
    'cm90YXRpb25ZiAEBEiIKCnJvdGF0aW9uX3oYCSABKAFIBlIJcm90YXRpb25aiAEBEhwKB3NjYW'
    'xlX3gYCiABKAFIB1IGc2NhbGVYiAEBEhwKB3NjYWxlX3kYCyABKAFICFIGc2NhbGVZiAEBEhwK'
    'B3NjYWxlX3oYDCABKAFICVIGc2NhbGVaiAEBImUKDVRyYW5zZm9ybVR5cGUSHgoaVFJBTlNGT1'
    'JNX1RZUEVfVU5TUEVDSUZJRUQQABIOCgpNQVRSSVhfNFg0EAESDQoJVFJBTlNMQVRFEAISCgoG'
    'Uk9UQVRFEAMSCQoFU0NBTEUQBEIOCgxfdHJhbnNsYXRlX3hCDgoMX3RyYW5zbGF0ZV95Qg4KDF'
    '90cmFuc2xhdGVfekIRCg9fcm90YXRpb25fYW5nbGVCDQoLX3JvdGF0aW9uX3hCDQoLX3JvdGF0'
    'aW9uX3lCDQoLX3JvdGF0aW9uX3pCCgoIX3NjYWxlX3hCCgoIX3NjYWxlX3lCCgoIX3NjYWxlX3'
    'o=');

@$core.Deprecated('Use rectDataDescriptor instead')
const RectData$json = {
  '1': 'RectData',
  '2': [
    {'1': 'left', '3': 1, '4': 1, '5': 1, '10': 'left'},
    {'1': 'top', '3': 2, '4': 1, '5': 1, '10': 'top'},
    {'1': 'right', '3': 3, '4': 1, '5': 1, '10': 'right'},
    {'1': 'bottom', '3': 4, '4': 1, '5': 1, '10': 'bottom'},
  ],
};

/// Descriptor for `RectData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rectDataDescriptor = $convert.base64Decode(
    'CghSZWN0RGF0YRISCgRsZWZ0GAEgASgBUgRsZWZ0EhAKA3RvcBgCIAEoAVIDdG9wEhQKBXJpZ2'
    'h0GAMgASgBUgVyaWdodBIWCgZib3R0b20YBCABKAFSBmJvdHRvbQ==');

@$core.Deprecated('Use shadowDataDescriptor instead')
const ShadowData$json = {
  '1': 'ShadowData',
  '2': [
    {
      '1': 'color',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.flutter_sdui.ColorData',
      '10': 'color'
    },
    {'1': 'offset_x', '3': 2, '4': 1, '5': 1, '10': 'offsetX'},
    {'1': 'offset_y', '3': 3, '4': 1, '5': 1, '10': 'offsetY'},
    {'1': 'blur_radius', '3': 4, '4': 1, '5': 1, '10': 'blurRadius'},
  ],
};

/// Descriptor for `ShadowData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shadowDataDescriptor = $convert.base64Decode(
    'CgpTaGFkb3dEYXRhEi0KBWNvbG9yGAEgASgLMhcuZmx1dHRlcl9zZHVpLkNvbG9yRGF0YVIFY2'
    '9sb3ISGQoIb2Zmc2V0X3gYAiABKAFSB29mZnNldFgSGQoIb2Zmc2V0X3kYAyABKAFSB29mZnNl'
    'dFkSHwoLYmx1cl9yYWRpdXMYBCABKAFSCmJsdXJSYWRpdXM=');

@$core.Deprecated('Use sduiRequestDescriptor instead')
const SduiRequest$json = {
  '1': 'SduiRequest',
  '2': [
    {'1': 'screen_id', '3': 1, '4': 1, '5': 9, '10': 'screenId'},
  ],
};

/// Descriptor for `SduiRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sduiRequestDescriptor = $convert
    .base64Decode('CgtTZHVpUmVxdWVzdBIbCglzY3JlZW5faWQYASABKAlSCHNjcmVlbklk');
