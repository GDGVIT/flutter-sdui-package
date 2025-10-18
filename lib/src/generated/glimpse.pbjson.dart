//
//  Generated code. Do not modify.
//  source: glimpse.proto
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
    {'1': 'APP_BAR', '2': 10},
  ],
};

/// Descriptor for `WidgetType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List widgetTypeDescriptor = $convert.base64Decode(
    'CgpXaWRnZXRUeXBlEhsKF1dJREdFVF9UWVBFX1VOU1BFQ0lGSUVEEAASCgoGQ09MVU1OEAESBw'
    'oDUk9XEAISCAoEVEVYVBADEgkKBUlNQUdFEAQSDQoJU0laRURfQk9YEAUSDQoJQ09OVEFJTkVS'
    'EAYSDAoIU0NBRkZPTEQQBxIKCgZTUEFDRVIQCBIICgRJQ09OEAkSCwoHQVBQX0JBUhAK');

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
final $typed_data.Uint8List verticalDirectionProtoDescriptor = $convert.base64Decode(
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

@$core.Deprecated('Use glimpseWidgetDataDescriptor instead')
const GlimpseWidgetData$json = {
  '1': 'GlimpseWidgetData',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.flutter_glimpse.WidgetType', '10': 'type'},
    {'1': 'string_attributes', '3': 2, '4': 3, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData.StringAttributesEntry', '10': 'stringAttributes'},
    {'1': 'double_attributes', '3': 3, '4': 3, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData.DoubleAttributesEntry', '10': 'doubleAttributes'},
    {'1': 'bool_attributes', '3': 4, '4': 3, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData.BoolAttributesEntry', '10': 'boolAttributes'},
    {'1': 'int_attributes', '3': 5, '4': 3, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData.IntAttributesEntry', '10': 'intAttributes'},
    {'1': 'text_style', '3': 6, '4': 1, '5': 11, '6': '.flutter_glimpse.TextStyleData', '10': 'textStyle'},
    {'1': 'padding', '3': 7, '4': 1, '5': 11, '6': '.flutter_glimpse.EdgeInsetsData', '10': 'padding'},
    {'1': 'margin', '3': 8, '4': 1, '5': 11, '6': '.flutter_glimpse.EdgeInsetsData', '10': 'margin'},
    {'1': 'color', '3': 9, '4': 1, '5': 11, '6': '.flutter_glimpse.ColorData', '10': 'color'},
    {'1': 'icon', '3': 10, '4': 1, '5': 11, '6': '.flutter_glimpse.IconDataMessage', '10': 'icon'},
    {'1': 'box_decoration', '3': 11, '4': 1, '5': 11, '6': '.flutter_glimpse.BoxDecorationData', '10': 'boxDecoration'},
    {'1': 'children', '3': 12, '4': 3, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData', '10': 'children'},
    {'1': 'child', '3': 13, '4': 1, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData', '10': 'child'},
    {'1': 'app_bar', '3': 14, '4': 1, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData', '10': 'appBar'},
    {'1': 'body', '3': 15, '4': 1, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData', '10': 'body'},
    {'1': 'floating_action_button', '3': 16, '4': 1, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData', '10': 'floatingActionButton'},
    {'1': 'background_color', '3': 17, '4': 1, '5': 11, '6': '.flutter_glimpse.ColorData', '10': 'backgroundColor'},
    {'1': 'bottom_navigation_bar', '3': 18, '4': 1, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData', '10': 'bottomNavigationBar'},
    {'1': 'drawer', '3': 19, '4': 1, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData', '10': 'drawer'},
    {'1': 'end_drawer', '3': 20, '4': 1, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData', '10': 'endDrawer'},
    {'1': 'bottom_sheet', '3': 21, '4': 1, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData', '10': 'bottomSheet'},
    {'1': 'resize_to_avoid_bottom_inset', '3': 22, '4': 1, '5': 8, '10': 'resizeToAvoidBottomInset'},
    {'1': 'primary', '3': 23, '4': 1, '5': 8, '10': 'primary'},
    {'1': 'floating_action_button_location', '3': 24, '4': 1, '5': 14, '6': '.flutter_glimpse.FloatingActionButtonLocationProto', '10': 'floatingActionButtonLocation'},
    {'1': 'extend_body', '3': 25, '4': 1, '5': 8, '10': 'extendBody'},
    {'1': 'extend_body_behind_app_bar', '3': 26, '4': 1, '5': 8, '10': 'extendBodyBehindAppBar'},
    {'1': 'drawer_scrim_color', '3': 27, '4': 1, '5': 11, '6': '.flutter_glimpse.ColorData', '10': 'drawerScrimColor'},
    {'1': 'drawer_edge_drag_width', '3': 28, '4': 1, '5': 1, '10': 'drawerEdgeDragWidth'},
    {'1': 'drawer_enable_open_drag_gesture', '3': 29, '4': 1, '5': 8, '10': 'drawerEnableOpenDragGesture'},
    {'1': 'end_drawer_enable_open_drag_gesture', '3': 30, '4': 1, '5': 8, '10': 'endDrawerEnableOpenDragGesture'},
    {'1': 'main_axis_alignment', '3': 31, '4': 1, '5': 14, '6': '.flutter_glimpse.MainAxisAlignmentProto', '10': 'mainAxisAlignment'},
    {'1': 'cross_axis_alignment', '3': 32, '4': 1, '5': 14, '6': '.flutter_glimpse.CrossAxisAlignmentProto', '10': 'crossAxisAlignment'},
    {'1': 'main_axis_size', '3': 33, '4': 1, '5': 14, '6': '.flutter_glimpse.MainAxisSizeProto', '10': 'mainAxisSize'},
    {'1': 'text_direction', '3': 34, '4': 1, '5': 14, '6': '.flutter_glimpse.TextDirectionProto', '10': 'textDirection'},
    {'1': 'vertical_direction', '3': 35, '4': 1, '5': 14, '6': '.flutter_glimpse.VerticalDirectionProto', '10': 'verticalDirection'},
    {'1': 'text_baseline', '3': 36, '4': 1, '5': 14, '6': '.flutter_glimpse.TextBaselineProto', '10': 'textBaseline'},
    {'1': 'alignment', '3': 37, '4': 1, '5': 11, '6': '.flutter_glimpse.AlignmentData', '10': 'alignment'},
    {'1': 'constraints', '3': 38, '4': 1, '5': 11, '6': '.flutter_glimpse.BoxConstraintsData', '10': 'constraints'},
    {'1': 'transform', '3': 39, '4': 1, '5': 11, '6': '.flutter_glimpse.TransformData', '10': 'transform'},
    {'1': 'transform_alignment', '3': 40, '4': 1, '5': 11, '6': '.flutter_glimpse.AlignmentData', '10': 'transformAlignment'},
    {'1': 'clip_behavior', '3': 41, '4': 1, '5': 14, '6': '.flutter_glimpse.ClipProto', '10': 'clipBehavior'},
    {'1': 'text_align', '3': 42, '4': 1, '5': 14, '6': '.flutter_glimpse.TextAlignProto', '10': 'textAlign'},
    {'1': 'overflow', '3': 43, '4': 1, '5': 14, '6': '.flutter_glimpse.TextOverflowProto', '10': 'overflow'},
    {'1': 'max_lines', '3': 44, '4': 1, '5': 5, '10': 'maxLines'},
    {'1': 'soft_wrap', '3': 45, '4': 1, '5': 8, '10': 'softWrap'},
    {'1': 'letter_spacing', '3': 46, '4': 1, '5': 1, '10': 'letterSpacing'},
    {'1': 'word_spacing', '3': 47, '4': 1, '5': 1, '10': 'wordSpacing'},
    {'1': 'height', '3': 48, '4': 1, '5': 1, '10': 'height'},
    {'1': 'font_family', '3': 49, '4': 1, '5': 9, '10': 'fontFamily'},
    {'1': 'repeat', '3': 50, '4': 1, '5': 14, '6': '.flutter_glimpse.ImageRepeatProto', '10': 'repeat'},
    {'1': 'color_blend_mode', '3': 51, '4': 1, '5': 14, '6': '.flutter_glimpse.BlendModeProto', '10': 'colorBlendMode'},
    {'1': 'center_slice', '3': 52, '4': 1, '5': 11, '6': '.flutter_glimpse.RectData', '10': 'centerSlice'},
    {'1': 'match_text_direction', '3': 53, '4': 1, '5': 8, '10': 'matchTextDirection'},
    {'1': 'gapless_playback', '3': 54, '4': 1, '5': 8, '10': 'gaplessPlayback'},
    {'1': 'filter_quality', '3': 55, '4': 1, '5': 14, '6': '.flutter_glimpse.FilterQualityProto', '10': 'filterQuality'},
    {'1': 'cache_width', '3': 56, '4': 1, '5': 5, '10': 'cacheWidth'},
    {'1': 'cache_height', '3': 57, '4': 1, '5': 5, '10': 'cacheHeight'},
    {'1': 'scale', '3': 58, '4': 1, '5': 1, '10': 'scale'},
    {'1': 'semantic_label', '3': 59, '4': 1, '5': 9, '10': 'semanticLabel'},
    {'1': 'error_widget', '3': 60, '4': 1, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData', '10': 'errorWidget'},
    {'1': 'loading_widget', '3': 61, '4': 1, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData', '10': 'loadingWidget'},
    {'1': 'opacity', '3': 62, '4': 1, '5': 1, '10': 'opacity'},
    {'1': 'apply_text_scaling', '3': 63, '4': 1, '5': 8, '10': 'applyTextScaling'},
    {'1': 'shadows', '3': 64, '4': 3, '5': 11, '6': '.flutter_glimpse.ShadowData', '10': 'shadows'},
    {'1': 'title_widget', '3': 65, '4': 1, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData', '10': 'titleWidget'},
    {'1': 'foreground_color', '3': 66, '4': 1, '5': 11, '6': '.flutter_glimpse.ColorData', '10': 'foregroundColor'},
    {'1': 'actions', '3': 67, '4': 3, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData', '10': 'actions'},
    {'1': 'leading', '3': 68, '4': 1, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData', '10': 'leading'},
    {'1': 'bottom', '3': 69, '4': 1, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData', '10': 'bottom'},
    {'1': 'toolbar_height', '3': 70, '4': 1, '5': 1, '10': 'toolbarHeight'},
    {'1': 'leading_width', '3': 71, '4': 1, '5': 1, '10': 'leadingWidth'},
    {'1': 'automatically_imply_leading', '3': 72, '4': 1, '5': 8, '10': 'automaticallyImplyLeading'},
    {'1': 'flexible_space', '3': 73, '4': 1, '5': 11, '6': '.flutter_glimpse.GlimpseWidgetData', '10': 'flexibleSpace'},
    {'1': 'title_spacing', '3': 74, '4': 1, '5': 1, '10': 'titleSpacing'},
    {'1': 'toolbar_opacity', '3': 75, '4': 1, '5': 1, '10': 'toolbarOpacity'},
    {'1': 'bottom_opacity', '3': 76, '4': 1, '5': 1, '10': 'bottomOpacity'},
  ],
  '3': [GlimpseWidgetData_StringAttributesEntry$json, GlimpseWidgetData_DoubleAttributesEntry$json, GlimpseWidgetData_BoolAttributesEntry$json, GlimpseWidgetData_IntAttributesEntry$json],
};

@$core.Deprecated('Use glimpseWidgetDataDescriptor instead')
const GlimpseWidgetData_StringAttributesEntry$json = {
  '1': 'StringAttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use glimpseWidgetDataDescriptor instead')
const GlimpseWidgetData_DoubleAttributesEntry$json = {
  '1': 'DoubleAttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 1, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use glimpseWidgetDataDescriptor instead')
const GlimpseWidgetData_BoolAttributesEntry$json = {
  '1': 'BoolAttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 8, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use glimpseWidgetDataDescriptor instead')
const GlimpseWidgetData_IntAttributesEntry$json = {
  '1': 'IntAttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GlimpseWidgetData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List glimpseWidgetDataDescriptor = $convert.base64Decode(
    'ChFHbGltcHNlV2lkZ2V0RGF0YRIvCgR0eXBlGAEgASgOMhsuZmx1dHRlcl9nbGltcHNlLldpZG'
    'dldFR5cGVSBHR5cGUSZQoRc3RyaW5nX2F0dHJpYnV0ZXMYAiADKAsyOC5mbHV0dGVyX2dsaW1w'
    'c2UuR2xpbXBzZVdpZGdldERhdGEuU3RyaW5nQXR0cmlidXRlc0VudHJ5UhBzdHJpbmdBdHRyaW'
    'J1dGVzEmUKEWRvdWJsZV9hdHRyaWJ1dGVzGAMgAygLMjguZmx1dHRlcl9nbGltcHNlLkdsaW1w'
    'c2VXaWRnZXREYXRhLkRvdWJsZUF0dHJpYnV0ZXNFbnRyeVIQZG91YmxlQXR0cmlidXRlcxJfCg'
    '9ib29sX2F0dHJpYnV0ZXMYBCADKAsyNi5mbHV0dGVyX2dsaW1wc2UuR2xpbXBzZVdpZGdldERh'
    'dGEuQm9vbEF0dHJpYnV0ZXNFbnRyeVIOYm9vbEF0dHJpYnV0ZXMSXAoOaW50X2F0dHJpYnV0ZX'
    'MYBSADKAsyNS5mbHV0dGVyX2dsaW1wc2UuR2xpbXBzZVdpZGdldERhdGEuSW50QXR0cmlidXRl'
    'c0VudHJ5Ug1pbnRBdHRyaWJ1dGVzEj0KCnRleHRfc3R5bGUYBiABKAsyHi5mbHV0dGVyX2dsaW'
    '1wc2UuVGV4dFN0eWxlRGF0YVIJdGV4dFN0eWxlEjkKB3BhZGRpbmcYByABKAsyHy5mbHV0dGVy'
    'X2dsaW1wc2UuRWRnZUluc2V0c0RhdGFSB3BhZGRpbmcSNwoGbWFyZ2luGAggASgLMh8uZmx1dH'
    'Rlcl9nbGltcHNlLkVkZ2VJbnNldHNEYXRhUgZtYXJnaW4SMAoFY29sb3IYCSABKAsyGi5mbHV0'
    'dGVyX2dsaW1wc2UuQ29sb3JEYXRhUgVjb2xvchI0CgRpY29uGAogASgLMiAuZmx1dHRlcl9nbG'
    'ltcHNlLkljb25EYXRhTWVzc2FnZVIEaWNvbhJJCg5ib3hfZGVjb3JhdGlvbhgLIAEoCzIiLmZs'
    'dXR0ZXJfZ2xpbXBzZS5Cb3hEZWNvcmF0aW9uRGF0YVINYm94RGVjb3JhdGlvbhI+CghjaGlsZH'
    'JlbhgMIAMoCzIiLmZsdXR0ZXJfZ2xpbXBzZS5HbGltcHNlV2lkZ2V0RGF0YVIIY2hpbGRyZW4S'
    'OAoFY2hpbGQYDSABKAsyIi5mbHV0dGVyX2dsaW1wc2UuR2xpbXBzZVdpZGdldERhdGFSBWNoaW'
    'xkEjsKB2FwcF9iYXIYDiABKAsyIi5mbHV0dGVyX2dsaW1wc2UuR2xpbXBzZVdpZGdldERhdGFS'
    'BmFwcEJhchI2CgRib2R5GA8gASgLMiIuZmx1dHRlcl9nbGltcHNlLkdsaW1wc2VXaWRnZXREYX'
    'RhUgRib2R5ElgKFmZsb2F0aW5nX2FjdGlvbl9idXR0b24YECABKAsyIi5mbHV0dGVyX2dsaW1w'
    'c2UuR2xpbXBzZVdpZGdldERhdGFSFGZsb2F0aW5nQWN0aW9uQnV0dG9uEkUKEGJhY2tncm91bm'
    'RfY29sb3IYESABKAsyGi5mbHV0dGVyX2dsaW1wc2UuQ29sb3JEYXRhUg9iYWNrZ3JvdW5kQ29s'
    'b3ISVgoVYm90dG9tX25hdmlnYXRpb25fYmFyGBIgASgLMiIuZmx1dHRlcl9nbGltcHNlLkdsaW'
    '1wc2VXaWRnZXREYXRhUhNib3R0b21OYXZpZ2F0aW9uQmFyEjoKBmRyYXdlchgTIAEoCzIiLmZs'
    'dXR0ZXJfZ2xpbXBzZS5HbGltcHNlV2lkZ2V0RGF0YVIGZHJhd2VyEkEKCmVuZF9kcmF3ZXIYFC'
    'ABKAsyIi5mbHV0dGVyX2dsaW1wc2UuR2xpbXBzZVdpZGdldERhdGFSCWVuZERyYXdlchJFCgxi'
    'b3R0b21fc2hlZXQYFSABKAsyIi5mbHV0dGVyX2dsaW1wc2UuR2xpbXBzZVdpZGdldERhdGFSC2'
    'JvdHRvbVNoZWV0Ej4KHHJlc2l6ZV90b19hdm9pZF9ib3R0b21faW5zZXQYFiABKAhSGHJlc2l6'
    'ZVRvQXZvaWRCb3R0b21JbnNldBIYCgdwcmltYXJ5GBcgASgIUgdwcmltYXJ5EnkKH2Zsb2F0aW'
    '5nX2FjdGlvbl9idXR0b25fbG9jYXRpb24YGCABKA4yMi5mbHV0dGVyX2dsaW1wc2UuRmxvYXRp'
    'bmdBY3Rpb25CdXR0b25Mb2NhdGlvblByb3RvUhxmbG9hdGluZ0FjdGlvbkJ1dHRvbkxvY2F0aW'
    '9uEh8KC2V4dGVuZF9ib2R5GBkgASgIUgpleHRlbmRCb2R5EjoKGmV4dGVuZF9ib2R5X2JlaGlu'
    'ZF9hcHBfYmFyGBogASgIUhZleHRlbmRCb2R5QmVoaW5kQXBwQmFyEkgKEmRyYXdlcl9zY3JpbV'
    '9jb2xvchgbIAEoCzIaLmZsdXR0ZXJfZ2xpbXBzZS5Db2xvckRhdGFSEGRyYXdlclNjcmltQ29s'
    'b3ISMwoWZHJhd2VyX2VkZ2VfZHJhZ193aWR0aBgcIAEoAVITZHJhd2VyRWRnZURyYWdXaWR0aB'
    'JECh9kcmF3ZXJfZW5hYmxlX29wZW5fZHJhZ19nZXN0dXJlGB0gASgIUhtkcmF3ZXJFbmFibGVP'
    'cGVuRHJhZ0dlc3R1cmUSSwojZW5kX2RyYXdlcl9lbmFibGVfb3Blbl9kcmFnX2dlc3R1cmUYHi'
    'ABKAhSHmVuZERyYXdlckVuYWJsZU9wZW5EcmFnR2VzdHVyZRJXChNtYWluX2F4aXNfYWxpZ25t'
    'ZW50GB8gASgOMicuZmx1dHRlcl9nbGltcHNlLk1haW5BeGlzQWxpZ25tZW50UHJvdG9SEW1haW'
    '5BeGlzQWxpZ25tZW50EloKFGNyb3NzX2F4aXNfYWxpZ25tZW50GCAgASgOMiguZmx1dHRlcl9n'
    'bGltcHNlLkNyb3NzQXhpc0FsaWdubWVudFByb3RvUhJjcm9zc0F4aXNBbGlnbm1lbnQSSAoObW'
    'Fpbl9heGlzX3NpemUYISABKA4yIi5mbHV0dGVyX2dsaW1wc2UuTWFpbkF4aXNTaXplUHJvdG9S'
    'DG1haW5BeGlzU2l6ZRJKCg50ZXh0X2RpcmVjdGlvbhgiIAEoDjIjLmZsdXR0ZXJfZ2xpbXBzZS'
    '5UZXh0RGlyZWN0aW9uUHJvdG9SDXRleHREaXJlY3Rpb24SVgoSdmVydGljYWxfZGlyZWN0aW9u'
    'GCMgASgOMicuZmx1dHRlcl9nbGltcHNlLlZlcnRpY2FsRGlyZWN0aW9uUHJvdG9SEXZlcnRpY2'
    'FsRGlyZWN0aW9uEkcKDXRleHRfYmFzZWxpbmUYJCABKA4yIi5mbHV0dGVyX2dsaW1wc2UuVGV4'
    'dEJhc2VsaW5lUHJvdG9SDHRleHRCYXNlbGluZRI8CglhbGlnbm1lbnQYJSABKAsyHi5mbHV0dG'
    'VyX2dsaW1wc2UuQWxpZ25tZW50RGF0YVIJYWxpZ25tZW50EkUKC2NvbnN0cmFpbnRzGCYgASgL'
    'MiMuZmx1dHRlcl9nbGltcHNlLkJveENvbnN0cmFpbnRzRGF0YVILY29uc3RyYWludHMSPAoJdH'
    'JhbnNmb3JtGCcgASgLMh4uZmx1dHRlcl9nbGltcHNlLlRyYW5zZm9ybURhdGFSCXRyYW5zZm9y'
    'bRJPChN0cmFuc2Zvcm1fYWxpZ25tZW50GCggASgLMh4uZmx1dHRlcl9nbGltcHNlLkFsaWdubW'
    'VudERhdGFSEnRyYW5zZm9ybUFsaWdubWVudBI/Cg1jbGlwX2JlaGF2aW9yGCkgASgOMhouZmx1'
    'dHRlcl9nbGltcHNlLkNsaXBQcm90b1IMY2xpcEJlaGF2aW9yEj4KCnRleHRfYWxpZ24YKiABKA'
    '4yHy5mbHV0dGVyX2dsaW1wc2UuVGV4dEFsaWduUHJvdG9SCXRleHRBbGlnbhI+CghvdmVyZmxv'
    'dxgrIAEoDjIiLmZsdXR0ZXJfZ2xpbXBzZS5UZXh0T3ZlcmZsb3dQcm90b1IIb3ZlcmZsb3cSGw'
    'oJbWF4X2xpbmVzGCwgASgFUghtYXhMaW5lcxIbCglzb2Z0X3dyYXAYLSABKAhSCHNvZnRXcmFw'
    'EiUKDmxldHRlcl9zcGFjaW5nGC4gASgBUg1sZXR0ZXJTcGFjaW5nEiEKDHdvcmRfc3BhY2luZx'
    'gvIAEoAVILd29yZFNwYWNpbmcSFgoGaGVpZ2h0GDAgASgBUgZoZWlnaHQSHwoLZm9udF9mYW1p'
    'bHkYMSABKAlSCmZvbnRGYW1pbHkSOQoGcmVwZWF0GDIgASgOMiEuZmx1dHRlcl9nbGltcHNlLk'
    'ltYWdlUmVwZWF0UHJvdG9SBnJlcGVhdBJJChBjb2xvcl9ibGVuZF9tb2RlGDMgASgOMh8uZmx1'
    'dHRlcl9nbGltcHNlLkJsZW5kTW9kZVByb3RvUg5jb2xvckJsZW5kTW9kZRI8CgxjZW50ZXJfc2'
    'xpY2UYNCABKAsyGS5mbHV0dGVyX2dsaW1wc2UuUmVjdERhdGFSC2NlbnRlclNsaWNlEjAKFG1h'
    'dGNoX3RleHRfZGlyZWN0aW9uGDUgASgIUhJtYXRjaFRleHREaXJlY3Rpb24SKQoQZ2FwbGVzc1'
    '9wbGF5YmFjaxg2IAEoCFIPZ2FwbGVzc1BsYXliYWNrEkoKDmZpbHRlcl9xdWFsaXR5GDcgASgO'
    'MiMuZmx1dHRlcl9nbGltcHNlLkZpbHRlclF1YWxpdHlQcm90b1INZmlsdGVyUXVhbGl0eRIfCg'
    'tjYWNoZV93aWR0aBg4IAEoBVIKY2FjaGVXaWR0aBIhCgxjYWNoZV9oZWlnaHQYOSABKAVSC2Nh'
    'Y2hlSGVpZ2h0EhQKBXNjYWxlGDogASgBUgVzY2FsZRIlCg5zZW1hbnRpY19sYWJlbBg7IAEoCV'
    'INc2VtYW50aWNMYWJlbBJFCgxlcnJvcl93aWRnZXQYPCABKAsyIi5mbHV0dGVyX2dsaW1wc2Uu'
    'R2xpbXBzZVdpZGdldERhdGFSC2Vycm9yV2lkZ2V0EkkKDmxvYWRpbmdfd2lkZ2V0GD0gASgLMi'
    'IuZmx1dHRlcl9nbGltcHNlLkdsaW1wc2VXaWRnZXREYXRhUg1sb2FkaW5nV2lkZ2V0EhgKB29w'
    'YWNpdHkYPiABKAFSB29wYWNpdHkSLAoSYXBwbHlfdGV4dF9zY2FsaW5nGD8gASgIUhBhcHBseV'
    'RleHRTY2FsaW5nEjUKB3NoYWRvd3MYQCADKAsyGy5mbHV0dGVyX2dsaW1wc2UuU2hhZG93RGF0'
    'YVIHc2hhZG93cxJFCgx0aXRsZV93aWRnZXQYQSABKAsyIi5mbHV0dGVyX2dsaW1wc2UuR2xpbX'
    'BzZVdpZGdldERhdGFSC3RpdGxlV2lkZ2V0EkUKEGZvcmVncm91bmRfY29sb3IYQiABKAsyGi5m'
    'bHV0dGVyX2dsaW1wc2UuQ29sb3JEYXRhUg9mb3JlZ3JvdW5kQ29sb3ISPAoHYWN0aW9ucxhDIA'
    'MoCzIiLmZsdXR0ZXJfZ2xpbXBzZS5HbGltcHNlV2lkZ2V0RGF0YVIHYWN0aW9ucxI8CgdsZWFk'
    'aW5nGEQgASgLMiIuZmx1dHRlcl9nbGltcHNlLkdsaW1wc2VXaWRnZXREYXRhUgdsZWFkaW5nEj'
    'oKBmJvdHRvbRhFIAEoCzIiLmZsdXR0ZXJfZ2xpbXBzZS5HbGltcHNlV2lkZ2V0RGF0YVIGYm90'
    'dG9tEiUKDnRvb2xiYXJfaGVpZ2h0GEYgASgBUg10b29sYmFySGVpZ2h0EiMKDWxlYWRpbmdfd2'
    'lkdGgYRyABKAFSDGxlYWRpbmdXaWR0aBI+ChthdXRvbWF0aWNhbGx5X2ltcGx5X2xlYWRpbmcY'
    'SCABKAhSGWF1dG9tYXRpY2FsbHlJbXBseUxlYWRpbmcSSQoOZmxleGlibGVfc3BhY2UYSSABKA'
    'syIi5mbHV0dGVyX2dsaW1wc2UuR2xpbXBzZVdpZGdldERhdGFSDWZsZXhpYmxlU3BhY2USIwoN'
    'dGl0bGVfc3BhY2luZxhKIAEoAVIMdGl0bGVTcGFjaW5nEicKD3Rvb2xiYXJfb3BhY2l0eRhLIA'
    'EoAVIOdG9vbGJhck9wYWNpdHkSJQoOYm90dG9tX29wYWNpdHkYTCABKAFSDWJvdHRvbU9wYWNp'
    'dHkaQwoVU3RyaW5nQXR0cmlidXRlc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGA'
    'IgASgJUgV2YWx1ZToCOAEaQwoVRG91YmxlQXR0cmlidXRlc0VudHJ5EhAKA2tleRgBIAEoCVID'
    'a2V5EhQKBXZhbHVlGAIgASgBUgV2YWx1ZToCOAEaQQoTQm9vbEF0dHJpYnV0ZXNFbnRyeRIQCg'
    'NrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCFIFdmFsdWU6AjgBGkAKEkludEF0dHJpYnV0'
    'ZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoBVIFdmFsdWU6AjgB');

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
    {'1': 'color', '3': 1, '4': 1, '5': 11, '6': '.flutter_glimpse.ColorData', '9': 0, '10': 'color', '17': true},
    {'1': 'font_size', '3': 2, '4': 1, '5': 1, '9': 1, '10': 'fontSize', '17': true},
    {'1': 'font_weight', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'fontWeight', '17': true},
    {'1': 'decoration', '3': 4, '4': 1, '5': 14, '6': '.flutter_glimpse.TextDecorationProto', '9': 3, '10': 'decoration', '17': true},
    {'1': 'letter_spacing', '3': 5, '4': 1, '5': 1, '9': 4, '10': 'letterSpacing', '17': true},
    {'1': 'word_spacing', '3': 6, '4': 1, '5': 1, '9': 5, '10': 'wordSpacing', '17': true},
    {'1': 'height', '3': 7, '4': 1, '5': 1, '9': 6, '10': 'height', '17': true},
    {'1': 'font_family', '3': 8, '4': 1, '5': 9, '9': 7, '10': 'fontFamily', '17': true},
    {'1': 'font_style', '3': 9, '4': 1, '5': 14, '6': '.flutter_glimpse.FontStyleProto', '9': 8, '10': 'fontStyle', '17': true},
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
    'Cg1UZXh0U3R5bGVEYXRhEjUKBWNvbG9yGAEgASgLMhouZmx1dHRlcl9nbGltcHNlLkNvbG9yRG'
    'F0YUgAUgVjb2xvcogBARIgCglmb250X3NpemUYAiABKAFIAVIIZm9udFNpemWIAQESJAoLZm9u'
    'dF93ZWlnaHQYAyABKAlIAlIKZm9udFdlaWdodIgBARJJCgpkZWNvcmF0aW9uGAQgASgOMiQuZm'
    'x1dHRlcl9nbGltcHNlLlRleHREZWNvcmF0aW9uUHJvdG9IA1IKZGVjb3JhdGlvbogBARIqCg5s'
    'ZXR0ZXJfc3BhY2luZxgFIAEoAUgEUg1sZXR0ZXJTcGFjaW5niAEBEiYKDHdvcmRfc3BhY2luZx'
    'gGIAEoAUgFUgt3b3JkU3BhY2luZ4gBARIbCgZoZWlnaHQYByABKAFIBlIGaGVpZ2h0iAEBEiQK'
    'C2ZvbnRfZmFtaWx5GAggASgJSAdSCmZvbnRGYW1pbHmIAQESQwoKZm9udF9zdHlsZRgJIAEoDj'
    'IfLmZsdXR0ZXJfZ2xpbXBzZS5Gb250U3R5bGVQcm90b0gIUglmb250U3R5bGWIAQFCCAoGX2Nv'
    'bG9yQgwKCl9mb250X3NpemVCDgoMX2ZvbnRfd2VpZ2h0Qg0KC19kZWNvcmF0aW9uQhEKD19sZX'
    'R0ZXJfc3BhY2luZ0IPCg1fd29yZF9zcGFjaW5nQgkKB19oZWlnaHRCDgoMX2ZvbnRfZmFtaWx5'
    'Qg0KC19mb250X3N0eWxl');

@$core.Deprecated('Use iconDataMessageDescriptor instead')
const IconDataMessage$json = {
  '1': 'IconDataMessage',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'code_point', '3': 2, '4': 1, '5': 5, '9': 1, '10': 'codePoint', '17': true},
    {'1': 'font_family', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'fontFamily', '17': true},
    {'1': 'color', '3': 4, '4': 1, '5': 11, '6': '.flutter_glimpse.ColorData', '9': 3, '10': 'color', '17': true},
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
    'bHmIAQESNQoFY29sb3IYBCABKAsyGi5mbHV0dGVyX2dsaW1wc2UuQ29sb3JEYXRhSANSBWNvbG'
    '9yiAEBEhcKBHNpemUYBSABKAFIBFIEc2l6ZYgBAUIHCgVfbmFtZUINCgtfY29kZV9wb2ludEIO'
    'CgxfZm9udF9mYW1pbHlCCAoGX2NvbG9yQgcKBV9zaXpl');

@$core.Deprecated('Use boxDecorationDataDescriptor instead')
const BoxDecorationData$json = {
  '1': 'BoxDecorationData',
  '2': [
    {'1': 'color', '3': 1, '4': 1, '5': 11, '6': '.flutter_glimpse.ColorData', '9': 0, '10': 'color', '17': true},
    {'1': 'border_radius', '3': 2, '4': 1, '5': 11, '6': '.flutter_glimpse.BorderRadiusData', '9': 1, '10': 'borderRadius', '17': true},
    {'1': 'border', '3': 3, '4': 1, '5': 11, '6': '.flutter_glimpse.BorderData', '9': 2, '10': 'border', '17': true},
    {'1': 'box_shadow', '3': 4, '4': 3, '5': 11, '6': '.flutter_glimpse.BoxShadowData', '10': 'boxShadow'},
    {'1': 'gradient', '3': 5, '4': 1, '5': 11, '6': '.flutter_glimpse.GradientData', '9': 3, '10': 'gradient', '17': true},
    {'1': 'shape', '3': 6, '4': 1, '5': 14, '6': '.flutter_glimpse.BoxShapeProto', '9': 4, '10': 'shape', '17': true},
    {'1': 'image', '3': 7, '4': 1, '5': 11, '6': '.flutter_glimpse.DecorationImageData', '9': 5, '10': 'image', '17': true},
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
    'ChFCb3hEZWNvcmF0aW9uRGF0YRI1CgVjb2xvchgBIAEoCzIaLmZsdXR0ZXJfZ2xpbXBzZS5Db2'
    'xvckRhdGFIAFIFY29sb3KIAQESSwoNYm9yZGVyX3JhZGl1cxgCIAEoCzIhLmZsdXR0ZXJfZ2xp'
    'bXBzZS5Cb3JkZXJSYWRpdXNEYXRhSAFSDGJvcmRlclJhZGl1c4gBARI4CgZib3JkZXIYAyABKA'
    'syGy5mbHV0dGVyX2dsaW1wc2UuQm9yZGVyRGF0YUgCUgZib3JkZXKIAQESPQoKYm94X3NoYWRv'
    'dxgEIAMoCzIeLmZsdXR0ZXJfZ2xpbXBzZS5Cb3hTaGFkb3dEYXRhUglib3hTaGFkb3cSPgoIZ3'
    'JhZGllbnQYBSABKAsyHS5mbHV0dGVyX2dsaW1wc2UuR3JhZGllbnREYXRhSANSCGdyYWRpZW50'
    'iAEBEjkKBXNoYXBlGAYgASgOMh4uZmx1dHRlcl9nbGltcHNlLkJveFNoYXBlUHJvdG9IBFIFc2'
    'hhcGWIAQESPwoFaW1hZ2UYByABKAsyJC5mbHV0dGVyX2dsaW1wc2UuRGVjb3JhdGlvbkltYWdl'
    'RGF0YUgFUgVpbWFnZYgBAUIICgZfY29sb3JCEAoOX2JvcmRlcl9yYWRpdXNCCQoHX2JvcmRlck'
    'ILCglfZ3JhZGllbnRCCAoGX3NoYXBlQggKBl9pbWFnZQ==');

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
    {'1': 'color', '3': 1, '4': 1, '5': 11, '6': '.flutter_glimpse.ColorData', '9': 0, '10': 'color', '17': true},
    {'1': 'width', '3': 2, '4': 1, '5': 1, '9': 1, '10': 'width', '17': true},
    {'1': 'style', '3': 3, '4': 1, '5': 14, '6': '.flutter_glimpse.BorderStyleProto', '9': 2, '10': 'style', '17': true},
  ],
  '8': [
    {'1': '_color'},
    {'1': '_width'},
    {'1': '_style'},
  ],
};

/// Descriptor for `BorderSideData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List borderSideDataDescriptor = $convert.base64Decode(
    'Cg5Cb3JkZXJTaWRlRGF0YRI1CgVjb2xvchgBIAEoCzIaLmZsdXR0ZXJfZ2xpbXBzZS5Db2xvck'
    'RhdGFIAFIFY29sb3KIAQESGQoFd2lkdGgYAiABKAFIAVIFd2lkdGiIAQESPAoFc3R5bGUYAyAB'
    'KA4yIS5mbHV0dGVyX2dsaW1wc2UuQm9yZGVyU3R5bGVQcm90b0gCUgVzdHlsZYgBAUIICgZfY2'
    '9sb3JCCAoGX3dpZHRoQggKBl9zdHlsZQ==');

@$core.Deprecated('Use borderDataDescriptor instead')
const BorderData$json = {
  '1': 'BorderData',
  '2': [
    {'1': 'top', '3': 1, '4': 1, '5': 11, '6': '.flutter_glimpse.BorderSideData', '9': 0, '10': 'top', '17': true},
    {'1': 'right', '3': 2, '4': 1, '5': 11, '6': '.flutter_glimpse.BorderSideData', '9': 1, '10': 'right', '17': true},
    {'1': 'bottom', '3': 3, '4': 1, '5': 11, '6': '.flutter_glimpse.BorderSideData', '9': 2, '10': 'bottom', '17': true},
    {'1': 'left', '3': 4, '4': 1, '5': 11, '6': '.flutter_glimpse.BorderSideData', '9': 3, '10': 'left', '17': true},
    {'1': 'all', '3': 5, '4': 1, '5': 11, '6': '.flutter_glimpse.BorderSideData', '9': 4, '10': 'all', '17': true},
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
    'CgpCb3JkZXJEYXRhEjYKA3RvcBgBIAEoCzIfLmZsdXR0ZXJfZ2xpbXBzZS5Cb3JkZXJTaWRlRG'
    'F0YUgAUgN0b3CIAQESOgoFcmlnaHQYAiABKAsyHy5mbHV0dGVyX2dsaW1wc2UuQm9yZGVyU2lk'
    'ZURhdGFIAVIFcmlnaHSIAQESPAoGYm90dG9tGAMgASgLMh8uZmx1dHRlcl9nbGltcHNlLkJvcm'
    'RlclNpZGVEYXRhSAJSBmJvdHRvbYgBARI4CgRsZWZ0GAQgASgLMh8uZmx1dHRlcl9nbGltcHNl'
    'LkJvcmRlclNpZGVEYXRhSANSBGxlZnSIAQESNgoDYWxsGAUgASgLMh8uZmx1dHRlcl9nbGltcH'
    'NlLkJvcmRlclNpZGVEYXRhSARSA2FsbIgBAUIGCgRfdG9wQggKBl9yaWdodEIJCgdfYm90dG9t'
    'QgcKBV9sZWZ0QgYKBF9hbGw=');

@$core.Deprecated('Use boxShadowDataDescriptor instead')
const BoxShadowData$json = {
  '1': 'BoxShadowData',
  '2': [
    {'1': 'color', '3': 1, '4': 1, '5': 11, '6': '.flutter_glimpse.ColorData', '9': 0, '10': 'color', '17': true},
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
    'Cg1Cb3hTaGFkb3dEYXRhEjUKBWNvbG9yGAEgASgLMhouZmx1dHRlcl9nbGltcHNlLkNvbG9yRG'
    'F0YUgAUgVjb2xvcogBARIeCghvZmZzZXRfeBgCIAEoAUgBUgdvZmZzZXRYiAEBEh4KCG9mZnNl'
    'dF95GAMgASgBSAJSB29mZnNldFmIAQESJAoLYmx1cl9yYWRpdXMYBCABKAFIA1IKYmx1clJhZG'
    'l1c4gBARIoCg1zcHJlYWRfcmFkaXVzGAUgASgBSARSDHNwcmVhZFJhZGl1c4gBAUIICgZfY29s'
    'b3JCCwoJX29mZnNldF94QgsKCV9vZmZzZXRfeUIOCgxfYmx1cl9yYWRpdXNCEAoOX3NwcmVhZF'
    '9yYWRpdXM=');

@$core.Deprecated('Use gradientDataDescriptor instead')
const GradientData$json = {
  '1': 'GradientData',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.flutter_glimpse.GradientData.GradientType', '10': 'type'},
    {'1': 'colors', '3': 2, '4': 3, '5': 11, '6': '.flutter_glimpse.ColorData', '10': 'colors'},
    {'1': 'stops', '3': 3, '4': 3, '5': 1, '10': 'stops'},
    {'1': 'begin', '3': 4, '4': 1, '5': 11, '6': '.flutter_glimpse.AlignmentData', '9': 0, '10': 'begin', '17': true},
    {'1': 'end', '3': 5, '4': 1, '5': 11, '6': '.flutter_glimpse.AlignmentData', '9': 1, '10': 'end', '17': true},
    {'1': 'center', '3': 6, '4': 1, '5': 11, '6': '.flutter_glimpse.AlignmentData', '9': 2, '10': 'center', '17': true},
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
    'CgxHcmFkaWVudERhdGESPgoEdHlwZRgBIAEoDjIqLmZsdXR0ZXJfZ2xpbXBzZS5HcmFkaWVudE'
    'RhdGEuR3JhZGllbnRUeXBlUgR0eXBlEjIKBmNvbG9ycxgCIAMoCzIaLmZsdXR0ZXJfZ2xpbXBz'
    'ZS5Db2xvckRhdGFSBmNvbG9ycxIUCgVzdG9wcxgDIAMoAVIFc3RvcHMSOQoFYmVnaW4YBCABKA'
    'syHi5mbHV0dGVyX2dsaW1wc2UuQWxpZ25tZW50RGF0YUgAUgViZWdpbogBARI1CgNlbmQYBSAB'
    'KAsyHi5mbHV0dGVyX2dsaW1wc2UuQWxpZ25tZW50RGF0YUgBUgNlbmSIAQESOwoGY2VudGVyGA'
    'YgASgLMh4uZmx1dHRlcl9nbGltcHNlLkFsaWdubWVudERhdGFIAlIGY2VudGVyiAEBEhsKBnJh'
    'ZGl1cxgHIAEoAUgDUgZyYWRpdXOIAQESJAoLc3RhcnRfYW5nbGUYCCABKAFIBFIKc3RhcnRBbm'
    'dsZYgBARIgCgllbmRfYW5nbGUYCSABKAFIBVIIZW5kQW5nbGWIAQEiUAoMR3JhZGllbnRUeXBl'
    'Eh0KGUdSQURJRU5UX1RZUEVfVU5TUEVDSUZJRUQQABIKCgZMSU5FQVIQARIKCgZSQURJQUwQAh'
    'IJCgVTV0VFUBADQggKBl9iZWdpbkIGCgRfZW5kQgkKB19jZW50ZXJCCQoHX3JhZGl1c0IOCgxf'
    'c3RhcnRfYW5nbGVCDAoKX2VuZF9hbmdsZQ==');

@$core.Deprecated('Use alignmentDataDescriptor instead')
const AlignmentData$json = {
  '1': 'AlignmentData',
  '2': [
    {'1': 'predefined', '3': 1, '4': 1, '5': 14, '6': '.flutter_glimpse.AlignmentData.PredefinedAlignment', '9': 0, '10': 'predefined'},
    {'1': 'xy', '3': 2, '4': 1, '5': 11, '6': '.flutter_glimpse.XYAlignment', '9': 0, '10': 'xy'},
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
    'Cg1BbGlnbm1lbnREYXRhElQKCnByZWRlZmluZWQYASABKA4yMi5mbHV0dGVyX2dsaW1wc2UuQW'
    'xpZ25tZW50RGF0YS5QcmVkZWZpbmVkQWxpZ25tZW50SABSCnByZWRlZmluZWQSLgoCeHkYAiAB'
    'KAsyHC5mbHV0dGVyX2dsaW1wc2UuWFlBbGlnbm1lbnRIAFICeHki0wEKE1ByZWRlZmluZWRBbG'
    'lnbm1lbnQSJAogUFJFREVGSU5FRF9BTElHTk1FTlRfVU5TUEVDSUZJRUQQABIRCg1CT1RUT01f'
    'Q0VOVEVSEAESDwoLQk9UVE9NX0xFRlQQAhIQCgxCT1RUT01fUklHSFQQAxIQCgxDRU5URVJfQU'
    'xJR04QBBIPCgtDRU5URVJfTEVGVBAFEhAKDENFTlRFUl9SSUdIVBAGEg4KClRPUF9DRU5URVIQ'
    'BxIMCghUT1BfTEVGVBAIEg0KCVRPUF9SSUdIVBAJQhAKDmFsaWdubWVudF90eXBl');

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
    {'1': 'fit', '3': 2, '4': 1, '5': 14, '6': '.flutter_glimpse.BoxFitProto', '9': 0, '10': 'fit', '17': true},
    {'1': 'alignment', '3': 3, '4': 1, '5': 11, '6': '.flutter_glimpse.AlignmentData', '9': 1, '10': 'alignment', '17': true},
    {'1': 'repeat', '3': 4, '4': 1, '5': 14, '6': '.flutter_glimpse.ImageRepeatProto', '9': 2, '10': 'repeat', '17': true},
    {'1': 'match_text_direction', '3': 5, '4': 1, '5': 8, '9': 3, '10': 'matchTextDirection', '17': true},
    {'1': 'scale', '3': 6, '4': 1, '5': 1, '9': 4, '10': 'scale', '17': true},
    {'1': 'opacity', '3': 7, '4': 1, '5': 1, '9': 5, '10': 'opacity', '17': true},
    {'1': 'filter_quality', '3': 8, '4': 1, '5': 14, '6': '.flutter_glimpse.FilterQualityProto', '9': 6, '10': 'filterQuality', '17': true},
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
    'ChNEZWNvcmF0aW9uSW1hZ2VEYXRhEhAKA3NyYxgBIAEoCVIDc3JjEjMKA2ZpdBgCIAEoDjIcLm'
    'ZsdXR0ZXJfZ2xpbXBzZS5Cb3hGaXRQcm90b0gAUgNmaXSIAQESQQoJYWxpZ25tZW50GAMgASgL'
    'Mh4uZmx1dHRlcl9nbGltcHNlLkFsaWdubWVudERhdGFIAVIJYWxpZ25tZW50iAEBEj4KBnJlcG'
    'VhdBgEIAEoDjIhLmZsdXR0ZXJfZ2xpbXBzZS5JbWFnZVJlcGVhdFByb3RvSAJSBnJlcGVhdIgB'
    'ARI1ChRtYXRjaF90ZXh0X2RpcmVjdGlvbhgFIAEoCEgDUhJtYXRjaFRleHREaXJlY3Rpb26IAQ'
    'ESGQoFc2NhbGUYBiABKAFIBFIFc2NhbGWIAQESHQoHb3BhY2l0eRgHIAEoAUgFUgdvcGFjaXR5'
    'iAEBEk8KDmZpbHRlcl9xdWFsaXR5GAggASgOMiMuZmx1dHRlcl9nbGltcHNlLkZpbHRlclF1YW'
    'xpdHlQcm90b0gGUg1maWx0ZXJRdWFsaXR5iAEBEigKDWludmVydF9jb2xvcnMYCSABKAhIB1IM'
    'aW52ZXJ0Q29sb3JziAEBEicKDWlzX2FudGlfYWxpYXMYCiABKAhICFILaXNBbnRpQWxpYXOIAQ'
    'FCBgoEX2ZpdEIMCgpfYWxpZ25tZW50QgkKB19yZXBlYXRCFwoVX21hdGNoX3RleHRfZGlyZWN0'
    'aW9uQggKBl9zY2FsZUIKCghfb3BhY2l0eUIRCg9fZmlsdGVyX3F1YWxpdHlCEAoOX2ludmVydF'
    '9jb2xvcnNCEAoOX2lzX2FudGlfYWxpYXM=');

@$core.Deprecated('Use boxConstraintsDataDescriptor instead')
const BoxConstraintsData$json = {
  '1': 'BoxConstraintsData',
  '2': [
    {'1': 'min_width', '3': 1, '4': 1, '5': 1, '9': 0, '10': 'minWidth', '17': true},
    {'1': 'max_width', '3': 2, '4': 1, '5': 1, '9': 1, '10': 'maxWidth', '17': true},
    {'1': 'min_height', '3': 3, '4': 1, '5': 1, '9': 2, '10': 'minHeight', '17': true},
    {'1': 'max_height', '3': 4, '4': 1, '5': 1, '9': 3, '10': 'maxHeight', '17': true},
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
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.flutter_glimpse.TransformData.TransformType', '10': 'type'},
    {'1': 'matrix_values', '3': 2, '4': 3, '5': 1, '10': 'matrixValues'},
    {'1': 'translate_x', '3': 3, '4': 1, '5': 1, '9': 0, '10': 'translateX', '17': true},
    {'1': 'translate_y', '3': 4, '4': 1, '5': 1, '9': 1, '10': 'translateY', '17': true},
    {'1': 'translate_z', '3': 5, '4': 1, '5': 1, '9': 2, '10': 'translateZ', '17': true},
    {'1': 'rotation_angle', '3': 6, '4': 1, '5': 1, '9': 3, '10': 'rotationAngle', '17': true},
    {'1': 'rotation_x', '3': 7, '4': 1, '5': 1, '9': 4, '10': 'rotationX', '17': true},
    {'1': 'rotation_y', '3': 8, '4': 1, '5': 1, '9': 5, '10': 'rotationY', '17': true},
    {'1': 'rotation_z', '3': 9, '4': 1, '5': 1, '9': 6, '10': 'rotationZ', '17': true},
    {'1': 'scale_x', '3': 10, '4': 1, '5': 1, '9': 7, '10': 'scaleX', '17': true},
    {'1': 'scale_y', '3': 11, '4': 1, '5': 1, '9': 8, '10': 'scaleY', '17': true},
    {'1': 'scale_z', '3': 12, '4': 1, '5': 1, '9': 9, '10': 'scaleZ', '17': true},
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
    'Cg1UcmFuc2Zvcm1EYXRhEkAKBHR5cGUYASABKA4yLC5mbHV0dGVyX2dsaW1wc2UuVHJhbnNmb3'
    'JtRGF0YS5UcmFuc2Zvcm1UeXBlUgR0eXBlEiMKDW1hdHJpeF92YWx1ZXMYAiADKAFSDG1hdHJp'
    'eFZhbHVlcxIkCgt0cmFuc2xhdGVfeBgDIAEoAUgAUgp0cmFuc2xhdGVYiAEBEiQKC3RyYW5zbG'
    'F0ZV95GAQgASgBSAFSCnRyYW5zbGF0ZVmIAQESJAoLdHJhbnNsYXRlX3oYBSABKAFIAlIKdHJh'
    'bnNsYXRlWogBARIqCg5yb3RhdGlvbl9hbmdsZRgGIAEoAUgDUg1yb3RhdGlvbkFuZ2xliAEBEi'
    'IKCnJvdGF0aW9uX3gYByABKAFIBFIJcm90YXRpb25YiAEBEiIKCnJvdGF0aW9uX3kYCCABKAFI'
    'BVIJcm90YXRpb25ZiAEBEiIKCnJvdGF0aW9uX3oYCSABKAFIBlIJcm90YXRpb25aiAEBEhwKB3'
    'NjYWxlX3gYCiABKAFIB1IGc2NhbGVYiAEBEhwKB3NjYWxlX3kYCyABKAFICFIGc2NhbGVZiAEB'
    'EhwKB3NjYWxlX3oYDCABKAFICVIGc2NhbGVaiAEBImUKDVRyYW5zZm9ybVR5cGUSHgoaVFJBTl'
    'NGT1JNX1RZUEVfVU5TUEVDSUZJRUQQABIOCgpNQVRSSVhfNFg0EAESDQoJVFJBTlNMQVRFEAIS'
    'CgoGUk9UQVRFEAMSCQoFU0NBTEUQBEIOCgxfdHJhbnNsYXRlX3hCDgoMX3RyYW5zbGF0ZV95Qg'
    '4KDF90cmFuc2xhdGVfekIRCg9fcm90YXRpb25fYW5nbGVCDQoLX3JvdGF0aW9uX3hCDQoLX3Jv'
    'dGF0aW9uX3lCDQoLX3JvdGF0aW9uX3pCCgoIX3NjYWxlX3hCCgoIX3NjYWxlX3lCCgoIX3NjYW'
    'xlX3o=');

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
    {'1': 'color', '3': 1, '4': 1, '5': 11, '6': '.flutter_glimpse.ColorData', '10': 'color'},
    {'1': 'offset_x', '3': 2, '4': 1, '5': 1, '10': 'offsetX'},
    {'1': 'offset_y', '3': 3, '4': 1, '5': 1, '10': 'offsetY'},
    {'1': 'blur_radius', '3': 4, '4': 1, '5': 1, '10': 'blurRadius'},
  ],
};

/// Descriptor for `ShadowData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shadowDataDescriptor = $convert.base64Decode(
    'CgpTaGFkb3dEYXRhEjAKBWNvbG9yGAEgASgLMhouZmx1dHRlcl9nbGltcHNlLkNvbG9yRGF0YV'
    'IFY29sb3ISGQoIb2Zmc2V0X3gYAiABKAFSB29mZnNldFgSGQoIb2Zmc2V0X3kYAyABKAFSB29m'
    'ZnNldFkSHwoLYmx1cl9yYWRpdXMYBCABKAFSCmJsdXJSYWRpdXM=');

@$core.Deprecated('Use glimpseRequestDescriptor instead')
const GlimpseRequest$json = {
  '1': 'GlimpseRequest',
  '2': [
    {'1': 'screen_id', '3': 1, '4': 1, '5': 9, '10': 'screenId'},
  ],
};

/// Descriptor for `GlimpseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List glimpseRequestDescriptor = $convert.base64Decode(
    'Cg5HbGltcHNlUmVxdWVzdBIbCglzY3JlZW5faWQYASABKAlSCHNjcmVlbklk');

