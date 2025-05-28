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
  static const WidgetType WIDGET_TYPE_UNSPECIFIED =
      WidgetType._(0, _omitEnumNames ? '' : 'WIDGET_TYPE_UNSPECIFIED');
  static const WidgetType COLUMN =
      WidgetType._(1, _omitEnumNames ? '' : 'COLUMN');
  static const WidgetType ROW = WidgetType._(2, _omitEnumNames ? '' : 'ROW');
  static const WidgetType TEXT = WidgetType._(3, _omitEnumNames ? '' : 'TEXT');
  static const WidgetType IMAGE =
      WidgetType._(4, _omitEnumNames ? '' : 'IMAGE');
  static const WidgetType SIZED_BOX =
      WidgetType._(5, _omitEnumNames ? '' : 'SIZED_BOX');
  static const WidgetType CONTAINER =
      WidgetType._(6, _omitEnumNames ? '' : 'CONTAINER');
  static const WidgetType SCAFFOLD =
      WidgetType._(7, _omitEnumNames ? '' : 'SCAFFOLD');
  static const WidgetType SPACER =
      WidgetType._(8, _omitEnumNames ? '' : 'SPACER');
  static const WidgetType ICON = WidgetType._(9, _omitEnumNames ? '' : 'ICON');

  static const $core.List<WidgetType> values = <WidgetType>[
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

  static final $core.List<WidgetType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 9);
  static WidgetType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const WidgetType._(super.v, super.n);
}

/// Message for BoxFit
class BoxFitProto extends $pb.ProtobufEnum {
  static const BoxFitProto BOX_FIT_UNSPECIFIED =
      BoxFitProto._(0, _omitEnumNames ? '' : 'BOX_FIT_UNSPECIFIED');
  static const BoxFitProto FILL =
      BoxFitProto._(1, _omitEnumNames ? '' : 'FILL');
  static const BoxFitProto CONTAIN =
      BoxFitProto._(2, _omitEnumNames ? '' : 'CONTAIN');
  static const BoxFitProto COVER =
      BoxFitProto._(3, _omitEnumNames ? '' : 'COVER');
  static const BoxFitProto FIT_WIDTH =
      BoxFitProto._(4, _omitEnumNames ? '' : 'FIT_WIDTH');
  static const BoxFitProto FIT_HEIGHT =
      BoxFitProto._(5, _omitEnumNames ? '' : 'FIT_HEIGHT');
  static const BoxFitProto NONE_BOX_FIT =
      BoxFitProto._(6, _omitEnumNames ? '' : 'NONE_BOX_FIT');
  static const BoxFitProto SCALE_DOWN =
      BoxFitProto._(7, _omitEnumNames ? '' : 'SCALE_DOWN');

  static const $core.List<BoxFitProto> values = <BoxFitProto>[
    BOX_FIT_UNSPECIFIED,
    FILL,
    CONTAIN,
    COVER,
    FIT_WIDTH,
    FIT_HEIGHT,
    NONE_BOX_FIT,
    SCALE_DOWN,
  ];

  static final $core.List<BoxFitProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static BoxFitProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BoxFitProto._(super.v, super.n);
}

/// Enum for BorderStyle
class BorderStyleProto extends $pb.ProtobufEnum {
  static const BorderStyleProto BORDER_STYLE_UNSPECIFIED =
      BorderStyleProto._(0, _omitEnumNames ? '' : 'BORDER_STYLE_UNSPECIFIED');
  static const BorderStyleProto SOLID =
      BorderStyleProto._(1, _omitEnumNames ? '' : 'SOLID');
  static const BorderStyleProto NONE_BORDER =
      BorderStyleProto._(2, _omitEnumNames ? '' : 'NONE_BORDER');

  static const $core.List<BorderStyleProto> values = <BorderStyleProto>[
    BORDER_STYLE_UNSPECIFIED,
    SOLID,
    NONE_BORDER,
  ];

  static final $core.List<BorderStyleProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static BorderStyleProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BorderStyleProto._(super.v, super.n);
}

/// Enum for BoxShape
class BoxShapeProto extends $pb.ProtobufEnum {
  static const BoxShapeProto BOX_SHAPE_UNSPECIFIED =
      BoxShapeProto._(0, _omitEnumNames ? '' : 'BOX_SHAPE_UNSPECIFIED');
  static const BoxShapeProto RECTANGLE =
      BoxShapeProto._(1, _omitEnumNames ? '' : 'RECTANGLE');
  static const BoxShapeProto CIRCLE =
      BoxShapeProto._(2, _omitEnumNames ? '' : 'CIRCLE');

  static const $core.List<BoxShapeProto> values = <BoxShapeProto>[
    BOX_SHAPE_UNSPECIFIED,
    RECTANGLE,
    CIRCLE,
  ];

  static final $core.List<BoxShapeProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static BoxShapeProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BoxShapeProto._(super.v, super.n);
}

/// Enum for ImageRepeat
class ImageRepeatProto extends $pb.ProtobufEnum {
  static const ImageRepeatProto IMAGE_REPEAT_UNSPECIFIED =
      ImageRepeatProto._(0, _omitEnumNames ? '' : 'IMAGE_REPEAT_UNSPECIFIED');
  static const ImageRepeatProto REPEAT =
      ImageRepeatProto._(1, _omitEnumNames ? '' : 'REPEAT');
  static const ImageRepeatProto REPEAT_X =
      ImageRepeatProto._(2, _omitEnumNames ? '' : 'REPEAT_X');
  static const ImageRepeatProto REPEAT_Y =
      ImageRepeatProto._(3, _omitEnumNames ? '' : 'REPEAT_Y');
  static const ImageRepeatProto NO_REPEAT =
      ImageRepeatProto._(4, _omitEnumNames ? '' : 'NO_REPEAT');

  static const $core.List<ImageRepeatProto> values = <ImageRepeatProto>[
    IMAGE_REPEAT_UNSPECIFIED,
    REPEAT,
    REPEAT_X,
    REPEAT_Y,
    NO_REPEAT,
  ];

  static final $core.List<ImageRepeatProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static ImageRepeatProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ImageRepeatProto._(super.v, super.n);
}

/// Enum for FilterQuality
class FilterQualityProto extends $pb.ProtobufEnum {
  static const FilterQualityProto FILTER_QUALITY_UNSPECIFIED =
      FilterQualityProto._(
          0, _omitEnumNames ? '' : 'FILTER_QUALITY_UNSPECIFIED');
  static const FilterQualityProto NONE_FQ =
      FilterQualityProto._(1, _omitEnumNames ? '' : 'NONE_FQ');
  static const FilterQualityProto LOW =
      FilterQualityProto._(2, _omitEnumNames ? '' : 'LOW');
  static const FilterQualityProto MEDIUM =
      FilterQualityProto._(3, _omitEnumNames ? '' : 'MEDIUM');
  static const FilterQualityProto HIGH =
      FilterQualityProto._(4, _omitEnumNames ? '' : 'HIGH');

  static const $core.List<FilterQualityProto> values = <FilterQualityProto>[
    FILTER_QUALITY_UNSPECIFIED,
    NONE_FQ,
    LOW,
    MEDIUM,
    HIGH,
  ];

  static final $core.List<FilterQualityProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static FilterQualityProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FilterQualityProto._(super.v, super.n);
}

/// New enums for Row and Column properties
class MainAxisAlignmentProto extends $pb.ProtobufEnum {
  static const MainAxisAlignmentProto MAIN_AXIS_ALIGNMENT_UNSPECIFIED =
      MainAxisAlignmentProto._(
          0, _omitEnumNames ? '' : 'MAIN_AXIS_ALIGNMENT_UNSPECIFIED');
  static const MainAxisAlignmentProto MAIN_AXIS_START =
      MainAxisAlignmentProto._(1, _omitEnumNames ? '' : 'MAIN_AXIS_START');
  static const MainAxisAlignmentProto MAIN_AXIS_END =
      MainAxisAlignmentProto._(2, _omitEnumNames ? '' : 'MAIN_AXIS_END');
  static const MainAxisAlignmentProto MAIN_AXIS_CENTER =
      MainAxisAlignmentProto._(3, _omitEnumNames ? '' : 'MAIN_AXIS_CENTER');
  static const MainAxisAlignmentProto SPACE_BETWEEN =
      MainAxisAlignmentProto._(4, _omitEnumNames ? '' : 'SPACE_BETWEEN');
  static const MainAxisAlignmentProto SPACE_AROUND =
      MainAxisAlignmentProto._(5, _omitEnumNames ? '' : 'SPACE_AROUND');
  static const MainAxisAlignmentProto SPACE_EVENLY =
      MainAxisAlignmentProto._(6, _omitEnumNames ? '' : 'SPACE_EVENLY');

  static const $core.List<MainAxisAlignmentProto> values =
      <MainAxisAlignmentProto>[
    MAIN_AXIS_ALIGNMENT_UNSPECIFIED,
    MAIN_AXIS_START,
    MAIN_AXIS_END,
    MAIN_AXIS_CENTER,
    SPACE_BETWEEN,
    SPACE_AROUND,
    SPACE_EVENLY,
  ];

  static final $core.List<MainAxisAlignmentProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static MainAxisAlignmentProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MainAxisAlignmentProto._(super.v, super.n);
}

class CrossAxisAlignmentProto extends $pb.ProtobufEnum {
  static const CrossAxisAlignmentProto CROSS_AXIS_ALIGNMENT_UNSPECIFIED =
      CrossAxisAlignmentProto._(
          0, _omitEnumNames ? '' : 'CROSS_AXIS_ALIGNMENT_UNSPECIFIED');
  static const CrossAxisAlignmentProto CROSS_AXIS_START =
      CrossAxisAlignmentProto._(1, _omitEnumNames ? '' : 'CROSS_AXIS_START');
  static const CrossAxisAlignmentProto CROSS_AXIS_END =
      CrossAxisAlignmentProto._(2, _omitEnumNames ? '' : 'CROSS_AXIS_END');
  static const CrossAxisAlignmentProto CROSS_AXIS_CENTER =
      CrossAxisAlignmentProto._(3, _omitEnumNames ? '' : 'CROSS_AXIS_CENTER');
  static const CrossAxisAlignmentProto STRETCH =
      CrossAxisAlignmentProto._(4, _omitEnumNames ? '' : 'STRETCH');
  static const CrossAxisAlignmentProto BASELINE =
      CrossAxisAlignmentProto._(5, _omitEnumNames ? '' : 'BASELINE');

  static const $core.List<CrossAxisAlignmentProto> values =
      <CrossAxisAlignmentProto>[
    CROSS_AXIS_ALIGNMENT_UNSPECIFIED,
    CROSS_AXIS_START,
    CROSS_AXIS_END,
    CROSS_AXIS_CENTER,
    STRETCH,
    BASELINE,
  ];

  static final $core.List<CrossAxisAlignmentProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static CrossAxisAlignmentProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CrossAxisAlignmentProto._(super.v, super.n);
}

class MainAxisSizeProto extends $pb.ProtobufEnum {
  static const MainAxisSizeProto MAIN_AXIS_SIZE_UNSPECIFIED =
      MainAxisSizeProto._(
          0, _omitEnumNames ? '' : 'MAIN_AXIS_SIZE_UNSPECIFIED');
  static const MainAxisSizeProto MIN =
      MainAxisSizeProto._(1, _omitEnumNames ? '' : 'MIN');
  static const MainAxisSizeProto MAX =
      MainAxisSizeProto._(2, _omitEnumNames ? '' : 'MAX');

  static const $core.List<MainAxisSizeProto> values = <MainAxisSizeProto>[
    MAIN_AXIS_SIZE_UNSPECIFIED,
    MIN,
    MAX,
  ];

  static final $core.List<MainAxisSizeProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static MainAxisSizeProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MainAxisSizeProto._(super.v, super.n);
}

class TextDirectionProto extends $pb.ProtobufEnum {
  static const TextDirectionProto TEXT_DIRECTION_UNSPECIFIED =
      TextDirectionProto._(
          0, _omitEnumNames ? '' : 'TEXT_DIRECTION_UNSPECIFIED');
  static const TextDirectionProto LTR =
      TextDirectionProto._(1, _omitEnumNames ? '' : 'LTR');
  static const TextDirectionProto RTL =
      TextDirectionProto._(2, _omitEnumNames ? '' : 'RTL');

  static const $core.List<TextDirectionProto> values = <TextDirectionProto>[
    TEXT_DIRECTION_UNSPECIFIED,
    LTR,
    RTL,
  ];

  static final $core.List<TextDirectionProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static TextDirectionProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TextDirectionProto._(super.v, super.n);
}

class VerticalDirectionProto extends $pb.ProtobufEnum {
  static const VerticalDirectionProto VERTICAL_DIRECTION_UNSPECIFIED =
      VerticalDirectionProto._(
          0, _omitEnumNames ? '' : 'VERTICAL_DIRECTION_UNSPECIFIED');
  static const VerticalDirectionProto UP =
      VerticalDirectionProto._(1, _omitEnumNames ? '' : 'UP');
  static const VerticalDirectionProto DOWN =
      VerticalDirectionProto._(2, _omitEnumNames ? '' : 'DOWN');

  static const $core.List<VerticalDirectionProto> values =
      <VerticalDirectionProto>[
    VERTICAL_DIRECTION_UNSPECIFIED,
    UP,
    DOWN,
  ];

  static final $core.List<VerticalDirectionProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static VerticalDirectionProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const VerticalDirectionProto._(super.v, super.n);
}

class TextBaselineProto extends $pb.ProtobufEnum {
  static const TextBaselineProto TEXT_BASELINE_UNSPECIFIED =
      TextBaselineProto._(0, _omitEnumNames ? '' : 'TEXT_BASELINE_UNSPECIFIED');
  static const TextBaselineProto ALPHABETIC =
      TextBaselineProto._(1, _omitEnumNames ? '' : 'ALPHABETIC');
  static const TextBaselineProto IDEOGRAPHIC =
      TextBaselineProto._(2, _omitEnumNames ? '' : 'IDEOGRAPHIC');

  static const $core.List<TextBaselineProto> values = <TextBaselineProto>[
    TEXT_BASELINE_UNSPECIFIED,
    ALPHABETIC,
    IDEOGRAPHIC,
  ];

  static final $core.List<TextBaselineProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static TextBaselineProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TextBaselineProto._(super.v, super.n);
}

/// New enum for Clip behavior
class ClipProto extends $pb.ProtobufEnum {
  static const ClipProto CLIP_UNSPECIFIED =
      ClipProto._(0, _omitEnumNames ? '' : 'CLIP_UNSPECIFIED');
  static const ClipProto CLIP_NONE =
      ClipProto._(1, _omitEnumNames ? '' : 'CLIP_NONE');
  static const ClipProto HARD_EDGE =
      ClipProto._(2, _omitEnumNames ? '' : 'HARD_EDGE');
  static const ClipProto ANTI_ALIAS =
      ClipProto._(3, _omitEnumNames ? '' : 'ANTI_ALIAS');
  static const ClipProto ANTI_ALIAS_WITH_SAVE_LAYER =
      ClipProto._(4, _omitEnumNames ? '' : 'ANTI_ALIAS_WITH_SAVE_LAYER');

  static const $core.List<ClipProto> values = <ClipProto>[
    CLIP_UNSPECIFIED,
    CLIP_NONE,
    HARD_EDGE,
    ANTI_ALIAS,
    ANTI_ALIAS_WITH_SAVE_LAYER,
  ];

  static final $core.List<ClipProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static ClipProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ClipProto._(super.v, super.n);
}

/// New enums for Text properties
class TextAlignProto extends $pb.ProtobufEnum {
  static const TextAlignProto TEXT_ALIGN_UNSPECIFIED =
      TextAlignProto._(0, _omitEnumNames ? '' : 'TEXT_ALIGN_UNSPECIFIED');
  static const TextAlignProto LEFT =
      TextAlignProto._(1, _omitEnumNames ? '' : 'LEFT');
  static const TextAlignProto RIGHT =
      TextAlignProto._(2, _omitEnumNames ? '' : 'RIGHT');
  static const TextAlignProto TEXT_ALIGN_CENTER =
      TextAlignProto._(3, _omitEnumNames ? '' : 'TEXT_ALIGN_CENTER');
  static const TextAlignProto JUSTIFY =
      TextAlignProto._(4, _omitEnumNames ? '' : 'JUSTIFY');
  static const TextAlignProto TEXT_ALIGN_START =
      TextAlignProto._(5, _omitEnumNames ? '' : 'TEXT_ALIGN_START');
  static const TextAlignProto TEXT_ALIGN_END =
      TextAlignProto._(6, _omitEnumNames ? '' : 'TEXT_ALIGN_END');

  static const $core.List<TextAlignProto> values = <TextAlignProto>[
    TEXT_ALIGN_UNSPECIFIED,
    LEFT,
    RIGHT,
    TEXT_ALIGN_CENTER,
    JUSTIFY,
    TEXT_ALIGN_START,
    TEXT_ALIGN_END,
  ];

  static final $core.List<TextAlignProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static TextAlignProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TextAlignProto._(super.v, super.n);
}

class TextOverflowProto extends $pb.ProtobufEnum {
  static const TextOverflowProto TEXT_OVERFLOW_UNSPECIFIED =
      TextOverflowProto._(0, _omitEnumNames ? '' : 'TEXT_OVERFLOW_UNSPECIFIED');
  static const TextOverflowProto CLIP =
      TextOverflowProto._(1, _omitEnumNames ? '' : 'CLIP');
  static const TextOverflowProto ELLIPSIS =
      TextOverflowProto._(2, _omitEnumNames ? '' : 'ELLIPSIS');
  static const TextOverflowProto FADE =
      TextOverflowProto._(3, _omitEnumNames ? '' : 'FADE');
  static const TextOverflowProto VISIBLE =
      TextOverflowProto._(4, _omitEnumNames ? '' : 'VISIBLE');

  static const $core.List<TextOverflowProto> values = <TextOverflowProto>[
    TEXT_OVERFLOW_UNSPECIFIED,
    CLIP,
    ELLIPSIS,
    FADE,
    VISIBLE,
  ];

  static final $core.List<TextOverflowProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static TextOverflowProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TextOverflowProto._(super.v, super.n);
}

class TextDecorationProto extends $pb.ProtobufEnum {
  static const TextDecorationProto TEXT_DECORATION_UNSPECIFIED =
      TextDecorationProto._(
          0, _omitEnumNames ? '' : 'TEXT_DECORATION_UNSPECIFIED');
  static const TextDecorationProto TEXT_DECORATION_NONE =
      TextDecorationProto._(1, _omitEnumNames ? '' : 'TEXT_DECORATION_NONE');
  static const TextDecorationProto UNDERLINE =
      TextDecorationProto._(2, _omitEnumNames ? '' : 'UNDERLINE');
  static const TextDecorationProto OVERLINE =
      TextDecorationProto._(3, _omitEnumNames ? '' : 'OVERLINE');
  static const TextDecorationProto LINE_THROUGH =
      TextDecorationProto._(4, _omitEnumNames ? '' : 'LINE_THROUGH');

  static const $core.List<TextDecorationProto> values = <TextDecorationProto>[
    TEXT_DECORATION_UNSPECIFIED,
    TEXT_DECORATION_NONE,
    UNDERLINE,
    OVERLINE,
    LINE_THROUGH,
  ];

  static final $core.List<TextDecorationProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static TextDecorationProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TextDecorationProto._(super.v, super.n);
}

class FontStyleProto extends $pb.ProtobufEnum {
  static const FontStyleProto FONT_STYLE_UNSPECIFIED =
      FontStyleProto._(0, _omitEnumNames ? '' : 'FONT_STYLE_UNSPECIFIED');
  static const FontStyleProto NORMAL =
      FontStyleProto._(1, _omitEnumNames ? '' : 'NORMAL');
  static const FontStyleProto ITALIC =
      FontStyleProto._(2, _omitEnumNames ? '' : 'ITALIC');

  static const $core.List<FontStyleProto> values = <FontStyleProto>[
    FONT_STYLE_UNSPECIFIED,
    NORMAL,
    ITALIC,
  ];

  static final $core.List<FontStyleProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static FontStyleProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FontStyleProto._(super.v, super.n);
}

/// New enum for Blend modes
class BlendModeProto extends $pb.ProtobufEnum {
  static const BlendModeProto BLEND_MODE_UNSPECIFIED =
      BlendModeProto._(0, _omitEnumNames ? '' : 'BLEND_MODE_UNSPECIFIED');
  static const BlendModeProto CLEAR =
      BlendModeProto._(1, _omitEnumNames ? '' : 'CLEAR');
  static const BlendModeProto SRC =
      BlendModeProto._(2, _omitEnumNames ? '' : 'SRC');
  static const BlendModeProto DST =
      BlendModeProto._(3, _omitEnumNames ? '' : 'DST');
  static const BlendModeProto SRC_OVER =
      BlendModeProto._(4, _omitEnumNames ? '' : 'SRC_OVER');
  static const BlendModeProto DST_OVER =
      BlendModeProto._(5, _omitEnumNames ? '' : 'DST_OVER');
  static const BlendModeProto SRC_IN =
      BlendModeProto._(6, _omitEnumNames ? '' : 'SRC_IN');
  static const BlendModeProto DST_IN =
      BlendModeProto._(7, _omitEnumNames ? '' : 'DST_IN');
  static const BlendModeProto SRC_OUT =
      BlendModeProto._(8, _omitEnumNames ? '' : 'SRC_OUT');
  static const BlendModeProto DST_OUT =
      BlendModeProto._(9, _omitEnumNames ? '' : 'DST_OUT');
  static const BlendModeProto SRC_ATOP =
      BlendModeProto._(10, _omitEnumNames ? '' : 'SRC_ATOP');
  static const BlendModeProto DST_ATOP =
      BlendModeProto._(11, _omitEnumNames ? '' : 'DST_ATOP');
  static const BlendModeProto XOR =
      BlendModeProto._(12, _omitEnumNames ? '' : 'XOR');
  static const BlendModeProto PLUS =
      BlendModeProto._(13, _omitEnumNames ? '' : 'PLUS');
  static const BlendModeProto MODULATE =
      BlendModeProto._(14, _omitEnumNames ? '' : 'MODULATE');
  static const BlendModeProto SCREEN =
      BlendModeProto._(15, _omitEnumNames ? '' : 'SCREEN');
  static const BlendModeProto OVERLAY =
      BlendModeProto._(16, _omitEnumNames ? '' : 'OVERLAY');
  static const BlendModeProto DARKEN =
      BlendModeProto._(17, _omitEnumNames ? '' : 'DARKEN');
  static const BlendModeProto LIGHTEN =
      BlendModeProto._(18, _omitEnumNames ? '' : 'LIGHTEN');
  static const BlendModeProto COLOR_DODGE =
      BlendModeProto._(19, _omitEnumNames ? '' : 'COLOR_DODGE');
  static const BlendModeProto COLOR_BURN =
      BlendModeProto._(20, _omitEnumNames ? '' : 'COLOR_BURN');
  static const BlendModeProto HARD_LIGHT =
      BlendModeProto._(21, _omitEnumNames ? '' : 'HARD_LIGHT');
  static const BlendModeProto SOFT_LIGHT =
      BlendModeProto._(22, _omitEnumNames ? '' : 'SOFT_LIGHT');
  static const BlendModeProto DIFFERENCE =
      BlendModeProto._(23, _omitEnumNames ? '' : 'DIFFERENCE');
  static const BlendModeProto EXCLUSION =
      BlendModeProto._(24, _omitEnumNames ? '' : 'EXCLUSION');
  static const BlendModeProto MULTIPLY =
      BlendModeProto._(25, _omitEnumNames ? '' : 'MULTIPLY');
  static const BlendModeProto HUE =
      BlendModeProto._(26, _omitEnumNames ? '' : 'HUE');
  static const BlendModeProto SATURATION =
      BlendModeProto._(27, _omitEnumNames ? '' : 'SATURATION');
  static const BlendModeProto COLOR =
      BlendModeProto._(28, _omitEnumNames ? '' : 'COLOR');
  static const BlendModeProto LUMINOSITY =
      BlendModeProto._(29, _omitEnumNames ? '' : 'LUMINOSITY');

  static const $core.List<BlendModeProto> values = <BlendModeProto>[
    BLEND_MODE_UNSPECIFIED,
    CLEAR,
    SRC,
    DST,
    SRC_OVER,
    DST_OVER,
    SRC_IN,
    DST_IN,
    SRC_OUT,
    DST_OUT,
    SRC_ATOP,
    DST_ATOP,
    XOR,
    PLUS,
    MODULATE,
    SCREEN,
    OVERLAY,
    DARKEN,
    LIGHTEN,
    COLOR_DODGE,
    COLOR_BURN,
    HARD_LIGHT,
    SOFT_LIGHT,
    DIFFERENCE,
    EXCLUSION,
    MULTIPLY,
    HUE,
    SATURATION,
    COLOR,
    LUMINOSITY,
  ];

  static final $core.List<BlendModeProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 29);
  static BlendModeProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BlendModeProto._(super.v, super.n);
}

/// New enum for FloatingActionButtonLocation
class FloatingActionButtonLocationProto extends $pb.ProtobufEnum {
  static const FloatingActionButtonLocationProto FAB_LOCATION_UNSPECIFIED =
      FloatingActionButtonLocationProto._(
          0, _omitEnumNames ? '' : 'FAB_LOCATION_UNSPECIFIED');
  static const FloatingActionButtonLocationProto FAB_START_TOP =
      FloatingActionButtonLocationProto._(
          1, _omitEnumNames ? '' : 'FAB_START_TOP');
  static const FloatingActionButtonLocationProto FAB_START =
      FloatingActionButtonLocationProto._(2, _omitEnumNames ? '' : 'FAB_START');
  static const FloatingActionButtonLocationProto FAB_START_FLOAT =
      FloatingActionButtonLocationProto._(
          3, _omitEnumNames ? '' : 'FAB_START_FLOAT');
  static const FloatingActionButtonLocationProto FAB_CENTER_TOP =
      FloatingActionButtonLocationProto._(
          4, _omitEnumNames ? '' : 'FAB_CENTER_TOP');
  static const FloatingActionButtonLocationProto FAB_CENTER =
      FloatingActionButtonLocationProto._(
          5, _omitEnumNames ? '' : 'FAB_CENTER');
  static const FloatingActionButtonLocationProto FAB_CENTER_FLOAT =
      FloatingActionButtonLocationProto._(
          6, _omitEnumNames ? '' : 'FAB_CENTER_FLOAT');
  static const FloatingActionButtonLocationProto FAB_END_TOP =
      FloatingActionButtonLocationProto._(
          7, _omitEnumNames ? '' : 'FAB_END_TOP');
  static const FloatingActionButtonLocationProto FAB_END =
      FloatingActionButtonLocationProto._(8, _omitEnumNames ? '' : 'FAB_END');
  static const FloatingActionButtonLocationProto FAB_END_FLOAT =
      FloatingActionButtonLocationProto._(
          9, _omitEnumNames ? '' : 'FAB_END_FLOAT');
  static const FloatingActionButtonLocationProto FAB_MINI_CENTER_TOP =
      FloatingActionButtonLocationProto._(
          10, _omitEnumNames ? '' : 'FAB_MINI_CENTER_TOP');
  static const FloatingActionButtonLocationProto FAB_MINI_CENTER_FLOAT =
      FloatingActionButtonLocationProto._(
          11, _omitEnumNames ? '' : 'FAB_MINI_CENTER_FLOAT');
  static const FloatingActionButtonLocationProto FAB_MINI_START_TOP =
      FloatingActionButtonLocationProto._(
          12, _omitEnumNames ? '' : 'FAB_MINI_START_TOP');
  static const FloatingActionButtonLocationProto FAB_MINI_START_FLOAT =
      FloatingActionButtonLocationProto._(
          13, _omitEnumNames ? '' : 'FAB_MINI_START_FLOAT');
  static const FloatingActionButtonLocationProto FAB_MINI_END_TOP =
      FloatingActionButtonLocationProto._(
          14, _omitEnumNames ? '' : 'FAB_MINI_END_TOP');
  static const FloatingActionButtonLocationProto FAB_MINI_END_FLOAT =
      FloatingActionButtonLocationProto._(
          15, _omitEnumNames ? '' : 'FAB_MINI_END_FLOAT');

  static const $core.List<FloatingActionButtonLocationProto> values =
      <FloatingActionButtonLocationProto>[
    FAB_LOCATION_UNSPECIFIED,
    FAB_START_TOP,
    FAB_START,
    FAB_START_FLOAT,
    FAB_CENTER_TOP,
    FAB_CENTER,
    FAB_CENTER_FLOAT,
    FAB_END_TOP,
    FAB_END,
    FAB_END_FLOAT,
    FAB_MINI_CENTER_TOP,
    FAB_MINI_CENTER_FLOAT,
    FAB_MINI_START_TOP,
    FAB_MINI_START_FLOAT,
    FAB_MINI_END_TOP,
    FAB_MINI_END_FLOAT,
  ];

  static final $core.List<FloatingActionButtonLocationProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 15);
  static FloatingActionButtonLocationProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FloatingActionButtonLocationProto._(super.v, super.n);
}

class GradientData_GradientType extends $pb.ProtobufEnum {
  static const GradientData_GradientType GRADIENT_TYPE_UNSPECIFIED =
      GradientData_GradientType._(
          0, _omitEnumNames ? '' : 'GRADIENT_TYPE_UNSPECIFIED');
  static const GradientData_GradientType LINEAR =
      GradientData_GradientType._(1, _omitEnumNames ? '' : 'LINEAR');
  static const GradientData_GradientType RADIAL =
      GradientData_GradientType._(2, _omitEnumNames ? '' : 'RADIAL');
  static const GradientData_GradientType SWEEP =
      GradientData_GradientType._(3, _omitEnumNames ? '' : 'SWEEP');

  static const $core.List<GradientData_GradientType> values =
      <GradientData_GradientType>[
    GRADIENT_TYPE_UNSPECIFIED,
    LINEAR,
    RADIAL,
    SWEEP,
  ];

  static final $core.List<GradientData_GradientType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static GradientData_GradientType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const GradientData_GradientType._(super.v, super.n);
}

/// Predefined alignments
class AlignmentData_PredefinedAlignment extends $pb.ProtobufEnum {
  static const AlignmentData_PredefinedAlignment
      PREDEFINED_ALIGNMENT_UNSPECIFIED = AlignmentData_PredefinedAlignment._(
          0, _omitEnumNames ? '' : 'PREDEFINED_ALIGNMENT_UNSPECIFIED');
  static const AlignmentData_PredefinedAlignment BOTTOM_CENTER =
      AlignmentData_PredefinedAlignment._(
          1, _omitEnumNames ? '' : 'BOTTOM_CENTER');
  static const AlignmentData_PredefinedAlignment BOTTOM_LEFT =
      AlignmentData_PredefinedAlignment._(
          2, _omitEnumNames ? '' : 'BOTTOM_LEFT');
  static const AlignmentData_PredefinedAlignment BOTTOM_RIGHT =
      AlignmentData_PredefinedAlignment._(
          3, _omitEnumNames ? '' : 'BOTTOM_RIGHT');
  static const AlignmentData_PredefinedAlignment CENTER_ALIGN =
      AlignmentData_PredefinedAlignment._(
          4, _omitEnumNames ? '' : 'CENTER_ALIGN');
  static const AlignmentData_PredefinedAlignment CENTER_LEFT =
      AlignmentData_PredefinedAlignment._(
          5, _omitEnumNames ? '' : 'CENTER_LEFT');
  static const AlignmentData_PredefinedAlignment CENTER_RIGHT =
      AlignmentData_PredefinedAlignment._(
          6, _omitEnumNames ? '' : 'CENTER_RIGHT');
  static const AlignmentData_PredefinedAlignment TOP_CENTER =
      AlignmentData_PredefinedAlignment._(
          7, _omitEnumNames ? '' : 'TOP_CENTER');
  static const AlignmentData_PredefinedAlignment TOP_LEFT =
      AlignmentData_PredefinedAlignment._(8, _omitEnumNames ? '' : 'TOP_LEFT');
  static const AlignmentData_PredefinedAlignment TOP_RIGHT =
      AlignmentData_PredefinedAlignment._(9, _omitEnumNames ? '' : 'TOP_RIGHT');

  static const $core.List<AlignmentData_PredefinedAlignment> values =
      <AlignmentData_PredefinedAlignment>[
    PREDEFINED_ALIGNMENT_UNSPECIFIED,
    BOTTOM_CENTER,
    BOTTOM_LEFT,
    BOTTOM_RIGHT,
    CENTER_ALIGN,
    CENTER_LEFT,
    CENTER_RIGHT,
    TOP_CENTER,
    TOP_LEFT,
    TOP_RIGHT,
  ];

  static final $core.List<AlignmentData_PredefinedAlignment?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 9);
  static AlignmentData_PredefinedAlignment? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AlignmentData_PredefinedAlignment._(super.v, super.n);
}

class TransformData_TransformType extends $pb.ProtobufEnum {
  static const TransformData_TransformType TRANSFORM_TYPE_UNSPECIFIED =
      TransformData_TransformType._(
          0, _omitEnumNames ? '' : 'TRANSFORM_TYPE_UNSPECIFIED');
  static const TransformData_TransformType MATRIX_4X4 =
      TransformData_TransformType._(1, _omitEnumNames ? '' : 'MATRIX_4X4');
  static const TransformData_TransformType TRANSLATE =
      TransformData_TransformType._(2, _omitEnumNames ? '' : 'TRANSLATE');
  static const TransformData_TransformType ROTATE =
      TransformData_TransformType._(3, _omitEnumNames ? '' : 'ROTATE');
  static const TransformData_TransformType SCALE =
      TransformData_TransformType._(4, _omitEnumNames ? '' : 'SCALE');

  static const $core.List<TransformData_TransformType> values =
      <TransformData_TransformType>[
    TRANSFORM_TYPE_UNSPECIFIED,
    MATRIX_4X4,
    TRANSLATE,
    ROTATE,
    SCALE,
  ];

  static final $core.List<TransformData_TransformType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static TransformData_TransformType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TransformData_TransformType._(super.v, super.n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
