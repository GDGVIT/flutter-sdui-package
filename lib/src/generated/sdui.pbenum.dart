//
//  Generated code. Do not modify.
//  source: sdui.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Enum for Widget Types
class WidgetType extends $pb.ProtobufEnum {
  static const WidgetType WIDGET_TYPE_UNSPECIFIED = WidgetType._(0, _omitEnumNames ? '' : 'WIDGET_TYPE_UNSPECIFIED');
  static const WidgetType COLUMN = WidgetType._(1, _omitEnumNames ? '' : 'COLUMN');
  static const WidgetType ROW = WidgetType._(2, _omitEnumNames ? '' : 'ROW');
  static const WidgetType TEXT = WidgetType._(3, _omitEnumNames ? '' : 'TEXT');
  static const WidgetType IMAGE = WidgetType._(4, _omitEnumNames ? '' : 'IMAGE');
  static const WidgetType SIZED_BOX = WidgetType._(5, _omitEnumNames ? '' : 'SIZED_BOX');
  static const WidgetType CONTAINER = WidgetType._(6, _omitEnumNames ? '' : 'CONTAINER');
  static const WidgetType SCAFFOLD = WidgetType._(7, _omitEnumNames ? '' : 'SCAFFOLD');
  static const WidgetType SPACER = WidgetType._(8, _omitEnumNames ? '' : 'SPACER');
  static const WidgetType ICON = WidgetType._(9, _omitEnumNames ? '' : 'ICON');

  static const $core.List<WidgetType> values = <WidgetType> [
    WIDGET_TYPE_UNSPECIFIED,
    COLUMN,
    ROW,
    TEXT,
    IMAGE,
    SIZED_BOX,
    CONTAINER,
    SCAFFOLD,
    SPACER,
    ICON,
  ];

  static final $core.List<WidgetType?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 9);
  static WidgetType? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const WidgetType._(super.v, super.n);
}

/// Message for BoxFit
class BoxFitProto extends $pb.ProtobufEnum {
  static const BoxFitProto BOX_FIT_UNSPECIFIED = BoxFitProto._(0, _omitEnumNames ? '' : 'BOX_FIT_UNSPECIFIED');
  static const BoxFitProto FILL = BoxFitProto._(1, _omitEnumNames ? '' : 'FILL');
  static const BoxFitProto CONTAIN = BoxFitProto._(2, _omitEnumNames ? '' : 'CONTAIN');
  static const BoxFitProto COVER = BoxFitProto._(3, _omitEnumNames ? '' : 'COVER');
  static const BoxFitProto FIT_WIDTH = BoxFitProto._(4, _omitEnumNames ? '' : 'FIT_WIDTH');
  static const BoxFitProto FIT_HEIGHT = BoxFitProto._(5, _omitEnumNames ? '' : 'FIT_HEIGHT');
  static const BoxFitProto NONE = BoxFitProto._(6, _omitEnumNames ? '' : 'NONE');
  static const BoxFitProto SCALE_DOWN = BoxFitProto._(7, _omitEnumNames ? '' : 'SCALE_DOWN');

  static const $core.List<BoxFitProto> values = <BoxFitProto> [
    BOX_FIT_UNSPECIFIED,
    FILL,
    CONTAIN,
    COVER,
    FIT_WIDTH,
    FIT_HEIGHT,
    NONE,
    SCALE_DOWN,
  ];

  static final $core.List<BoxFitProto?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 7);
  static BoxFitProto? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BoxFitProto._(super.v, super.n);
}

/// Enum for BorderStyle
class BorderStyleProto extends $pb.ProtobufEnum {
  static const BorderStyleProto BORDER_STYLE_UNSPECIFIED = BorderStyleProto._(0, _omitEnumNames ? '' : 'BORDER_STYLE_UNSPECIFIED');
  static const BorderStyleProto SOLID = BorderStyleProto._(1, _omitEnumNames ? '' : 'SOLID');
  static const BorderStyleProto NONE_BORDER = BorderStyleProto._(2, _omitEnumNames ? '' : 'NONE_BORDER');

  static const $core.List<BorderStyleProto> values = <BorderStyleProto> [
    BORDER_STYLE_UNSPECIFIED,
    SOLID,
    NONE_BORDER,
  ];

  static final $core.List<BorderStyleProto?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 2);
  static BorderStyleProto? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BorderStyleProto._(super.v, super.n);
}

/// Enum for BoxShape
class BoxShapeProto extends $pb.ProtobufEnum {
  static const BoxShapeProto BOX_SHAPE_UNSPECIFIED = BoxShapeProto._(0, _omitEnumNames ? '' : 'BOX_SHAPE_UNSPECIFIED');
  static const BoxShapeProto RECTANGLE = BoxShapeProto._(1, _omitEnumNames ? '' : 'RECTANGLE');
  static const BoxShapeProto CIRCLE = BoxShapeProto._(2, _omitEnumNames ? '' : 'CIRCLE');

  static const $core.List<BoxShapeProto> values = <BoxShapeProto> [
    BOX_SHAPE_UNSPECIFIED,
    RECTANGLE,
    CIRCLE,
  ];

  static final $core.List<BoxShapeProto?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 2);
  static BoxShapeProto? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BoxShapeProto._(super.v, super.n);
}

/// Enum for ImageRepeat
class ImageRepeatProto extends $pb.ProtobufEnum {
  static const ImageRepeatProto IMAGE_REPEAT_UNSPECIFIED = ImageRepeatProto._(0, _omitEnumNames ? '' : 'IMAGE_REPEAT_UNSPECIFIED');
  static const ImageRepeatProto REPEAT = ImageRepeatProto._(1, _omitEnumNames ? '' : 'REPEAT');
  static const ImageRepeatProto REPEAT_X = ImageRepeatProto._(2, _omitEnumNames ? '' : 'REPEAT_X');
  static const ImageRepeatProto REPEAT_Y = ImageRepeatProto._(3, _omitEnumNames ? '' : 'REPEAT_Y');
  static const ImageRepeatProto NO_REPEAT = ImageRepeatProto._(4, _omitEnumNames ? '' : 'NO_REPEAT');

  static const $core.List<ImageRepeatProto> values = <ImageRepeatProto> [
    IMAGE_REPEAT_UNSPECIFIED,
    REPEAT,
    REPEAT_X,
    REPEAT_Y,
    NO_REPEAT,
  ];

  static final $core.List<ImageRepeatProto?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 4);
  static ImageRepeatProto? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ImageRepeatProto._(super.v, super.n);
}

/// Enum for FilterQuality
class FilterQualityProto extends $pb.ProtobufEnum {
  static const FilterQualityProto FILTER_QUALITY_UNSPECIFIED = FilterQualityProto._(0, _omitEnumNames ? '' : 'FILTER_QUALITY_UNSPECIFIED');
  static const FilterQualityProto NONE_FQ = FilterQualityProto._(1, _omitEnumNames ? '' : 'NONE_FQ');
  static const FilterQualityProto LOW = FilterQualityProto._(2, _omitEnumNames ? '' : 'LOW');
  static const FilterQualityProto MEDIUM = FilterQualityProto._(3, _omitEnumNames ? '' : 'MEDIUM');
  static const FilterQualityProto HIGH = FilterQualityProto._(4, _omitEnumNames ? '' : 'HIGH');

  static const $core.List<FilterQualityProto> values = <FilterQualityProto> [
    FILTER_QUALITY_UNSPECIFIED,
    NONE_FQ,
    LOW,
    MEDIUM,
    HIGH,
  ];

  static final $core.List<FilterQualityProto?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 4);
  static FilterQualityProto? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FilterQualityProto._(super.v, super.n);
}

class GradientData_GradientType extends $pb.ProtobufEnum {
  static const GradientData_GradientType GRADIENT_TYPE_UNSPECIFIED = GradientData_GradientType._(0, _omitEnumNames ? '' : 'GRADIENT_TYPE_UNSPECIFIED');
  static const GradientData_GradientType LINEAR = GradientData_GradientType._(1, _omitEnumNames ? '' : 'LINEAR');
  static const GradientData_GradientType RADIAL = GradientData_GradientType._(2, _omitEnumNames ? '' : 'RADIAL');
  static const GradientData_GradientType SWEEP = GradientData_GradientType._(3, _omitEnumNames ? '' : 'SWEEP');

  static const $core.List<GradientData_GradientType> values = <GradientData_GradientType> [
    GRADIENT_TYPE_UNSPECIFIED,
    LINEAR,
    RADIAL,
    SWEEP,
  ];

  static final $core.List<GradientData_GradientType?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 3);
  static GradientData_GradientType? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const GradientData_GradientType._(super.v, super.n);
}

/// Predefined alignments
class AlignmentData_PredefinedAlignment extends $pb.ProtobufEnum {
  static const AlignmentData_PredefinedAlignment PREDEFINED_ALIGNMENT_UNSPECIFIED = AlignmentData_PredefinedAlignment._(0, _omitEnumNames ? '' : 'PREDEFINED_ALIGNMENT_UNSPECIFIED');
  static const AlignmentData_PredefinedAlignment BOTTOM_CENTER = AlignmentData_PredefinedAlignment._(1, _omitEnumNames ? '' : 'BOTTOM_CENTER');
  static const AlignmentData_PredefinedAlignment BOTTOM_LEFT = AlignmentData_PredefinedAlignment._(2, _omitEnumNames ? '' : 'BOTTOM_LEFT');
  static const AlignmentData_PredefinedAlignment BOTTOM_RIGHT = AlignmentData_PredefinedAlignment._(3, _omitEnumNames ? '' : 'BOTTOM_RIGHT');
  static const AlignmentData_PredefinedAlignment CENTER = AlignmentData_PredefinedAlignment._(4, _omitEnumNames ? '' : 'CENTER');
  static const AlignmentData_PredefinedAlignment CENTER_LEFT = AlignmentData_PredefinedAlignment._(5, _omitEnumNames ? '' : 'CENTER_LEFT');
  static const AlignmentData_PredefinedAlignment CENTER_RIGHT = AlignmentData_PredefinedAlignment._(6, _omitEnumNames ? '' : 'CENTER_RIGHT');
  static const AlignmentData_PredefinedAlignment TOP_CENTER = AlignmentData_PredefinedAlignment._(7, _omitEnumNames ? '' : 'TOP_CENTER');
  static const AlignmentData_PredefinedAlignment TOP_LEFT = AlignmentData_PredefinedAlignment._(8, _omitEnumNames ? '' : 'TOP_LEFT');
  static const AlignmentData_PredefinedAlignment TOP_RIGHT = AlignmentData_PredefinedAlignment._(9, _omitEnumNames ? '' : 'TOP_RIGHT');

  static const $core.List<AlignmentData_PredefinedAlignment> values = <AlignmentData_PredefinedAlignment> [
    PREDEFINED_ALIGNMENT_UNSPECIFIED,
    BOTTOM_CENTER,
    BOTTOM_LEFT,
    BOTTOM_RIGHT,
    CENTER,
    CENTER_LEFT,
    CENTER_RIGHT,
    TOP_CENTER,
    TOP_LEFT,
    TOP_RIGHT,
  ];

  static final $core.List<AlignmentData_PredefinedAlignment?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 9);
  static AlignmentData_PredefinedAlignment? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AlignmentData_PredefinedAlignment._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
