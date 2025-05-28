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

import 'sdui.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'sdui.pbenum.dart';

/// Generic Widget message
class SduiWidgetData extends $pb.GeneratedMessage {
  factory SduiWidgetData({
    WidgetType? type,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>?
        stringAttributes,
    $core.Iterable<$core.MapEntry<$core.String, $core.double>>?
        doubleAttributes,
    $core.Iterable<$core.MapEntry<$core.String, $core.bool>>? boolAttributes,
    $core.Iterable<$core.MapEntry<$core.String, $core.int>>? intAttributes,
    TextStyleData? textStyle,
    EdgeInsetsData? padding,
    EdgeInsetsData? margin,
    ColorData? color,
    IconDataMessage? icon,
    BoxDecorationData? boxDecoration,
    $core.Iterable<SduiWidgetData>? children,
    SduiWidgetData? child,
    SduiWidgetData? appBar,
    SduiWidgetData? body,
    SduiWidgetData? floatingActionButton,
    ColorData? backgroundColor,
    SduiWidgetData? bottomNavigationBar,
    SduiWidgetData? drawer,
    SduiWidgetData? endDrawer,
    SduiWidgetData? bottomSheet,
    $core.bool? resizeToAvoidBottomInset,
    $core.bool? primary,
    FloatingActionButtonLocationProto? floatingActionButtonLocation,
    $core.bool? extendBody,
    $core.bool? extendBodyBehindAppBar,
    ColorData? drawerScrimColor,
    $core.double? drawerEdgeDragWidth,
    $core.bool? drawerEnableOpenDragGesture,
    $core.bool? endDrawerEnableOpenDragGesture,
    MainAxisAlignmentProto? mainAxisAlignment,
    CrossAxisAlignmentProto? crossAxisAlignment,
    MainAxisSizeProto? mainAxisSize,
    TextDirectionProto? textDirection,
    VerticalDirectionProto? verticalDirection,
    TextBaselineProto? textBaseline,
    AlignmentData? alignment,
    BoxConstraintsData? constraints,
    TransformData? transform,
    AlignmentData? transformAlignment,
    ClipProto? clipBehavior,
    TextAlignProto? textAlign,
    TextOverflowProto? overflow,
    $core.int? maxLines,
    $core.bool? softWrap,
    $core.double? letterSpacing,
    $core.double? wordSpacing,
    $core.double? height,
    $core.String? fontFamily,
    ImageRepeatProto? repeat,
    BlendModeProto? colorBlendMode,
    RectData? centerSlice,
    $core.bool? matchTextDirection,
    $core.bool? gaplessPlayback,
    FilterQualityProto? filterQuality,
    $core.int? cacheWidth,
    $core.int? cacheHeight,
    $core.double? scale,
    $core.String? semanticLabel,
    SduiWidgetData? errorWidget,
    SduiWidgetData? loadingWidget,
    $core.double? opacity,
    $core.bool? applyTextScaling,
    $core.Iterable<ShadowData>? shadows,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (stringAttributes != null) {
      $result.stringAttributes.addEntries(stringAttributes);
    }
    if (doubleAttributes != null) {
      $result.doubleAttributes.addEntries(doubleAttributes);
    }
    if (boolAttributes != null) {
      $result.boolAttributes.addEntries(boolAttributes);
    }
    if (intAttributes != null) {
      $result.intAttributes.addEntries(intAttributes);
    }
    if (textStyle != null) {
      $result.textStyle = textStyle;
    }
    if (padding != null) {
      $result.padding = padding;
    }
    if (margin != null) {
      $result.margin = margin;
    }
    if (color != null) {
      $result.color = color;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    if (boxDecoration != null) {
      $result.boxDecoration = boxDecoration;
    }
    if (children != null) {
      $result.children.addAll(children);
    }
    if (child != null) {
      $result.child = child;
    }
    if (appBar != null) {
      $result.appBar = appBar;
    }
    if (body != null) {
      $result.body = body;
    }
    if (floatingActionButton != null) {
      $result.floatingActionButton = floatingActionButton;
    }
    if (backgroundColor != null) {
      $result.backgroundColor = backgroundColor;
    }
    if (bottomNavigationBar != null) {
      $result.bottomNavigationBar = bottomNavigationBar;
    }
    if (drawer != null) {
      $result.drawer = drawer;
    }
    if (endDrawer != null) {
      $result.endDrawer = endDrawer;
    }
    if (bottomSheet != null) {
      $result.bottomSheet = bottomSheet;
    }
    if (resizeToAvoidBottomInset != null) {
      $result.resizeToAvoidBottomInset = resizeToAvoidBottomInset;
    }
    if (primary != null) {
      $result.primary = primary;
    }
    if (floatingActionButtonLocation != null) {
      $result.floatingActionButtonLocation = floatingActionButtonLocation;
    }
    if (extendBody != null) {
      $result.extendBody = extendBody;
    }
    if (extendBodyBehindAppBar != null) {
      $result.extendBodyBehindAppBar = extendBodyBehindAppBar;
    }
    if (drawerScrimColor != null) {
      $result.drawerScrimColor = drawerScrimColor;
    }
    if (drawerEdgeDragWidth != null) {
      $result.drawerEdgeDragWidth = drawerEdgeDragWidth;
    }
    if (drawerEnableOpenDragGesture != null) {
      $result.drawerEnableOpenDragGesture = drawerEnableOpenDragGesture;
    }
    if (endDrawerEnableOpenDragGesture != null) {
      $result.endDrawerEnableOpenDragGesture = endDrawerEnableOpenDragGesture;
    }
    if (mainAxisAlignment != null) {
      $result.mainAxisAlignment = mainAxisAlignment;
    }
    if (crossAxisAlignment != null) {
      $result.crossAxisAlignment = crossAxisAlignment;
    }
    if (mainAxisSize != null) {
      $result.mainAxisSize = mainAxisSize;
    }
    if (textDirection != null) {
      $result.textDirection = textDirection;
    }
    if (verticalDirection != null) {
      $result.verticalDirection = verticalDirection;
    }
    if (textBaseline != null) {
      $result.textBaseline = textBaseline;
    }
    if (alignment != null) {
      $result.alignment = alignment;
    }
    if (constraints != null) {
      $result.constraints = constraints;
    }
    if (transform != null) {
      $result.transform = transform;
    }
    if (transformAlignment != null) {
      $result.transformAlignment = transformAlignment;
    }
    if (clipBehavior != null) {
      $result.clipBehavior = clipBehavior;
    }
    if (textAlign != null) {
      $result.textAlign = textAlign;
    }
    if (overflow != null) {
      $result.overflow = overflow;
    }
    if (maxLines != null) {
      $result.maxLines = maxLines;
    }
    if (softWrap != null) {
      $result.softWrap = softWrap;
    }
    if (letterSpacing != null) {
      $result.letterSpacing = letterSpacing;
    }
    if (wordSpacing != null) {
      $result.wordSpacing = wordSpacing;
    }
    if (height != null) {
      $result.height = height;
    }
    if (fontFamily != null) {
      $result.fontFamily = fontFamily;
    }
    if (repeat != null) {
      $result.repeat = repeat;
    }
    if (colorBlendMode != null) {
      $result.colorBlendMode = colorBlendMode;
    }
    if (centerSlice != null) {
      $result.centerSlice = centerSlice;
    }
    if (matchTextDirection != null) {
      $result.matchTextDirection = matchTextDirection;
    }
    if (gaplessPlayback != null) {
      $result.gaplessPlayback = gaplessPlayback;
    }
    if (filterQuality != null) {
      $result.filterQuality = filterQuality;
    }
    if (cacheWidth != null) {
      $result.cacheWidth = cacheWidth;
    }
    if (cacheHeight != null) {
      $result.cacheHeight = cacheHeight;
    }
    if (scale != null) {
      $result.scale = scale;
    }
    if (semanticLabel != null) {
      $result.semanticLabel = semanticLabel;
    }
    if (errorWidget != null) {
      $result.errorWidget = errorWidget;
    }
    if (loadingWidget != null) {
      $result.loadingWidget = loadingWidget;
    }
    if (opacity != null) {
      $result.opacity = opacity;
    }
    if (applyTextScaling != null) {
      $result.applyTextScaling = applyTextScaling;
    }
    if (shadows != null) {
      $result.shadows.addAll(shadows);
    }
    return $result;
  }
  SduiWidgetData._() : super();
  factory SduiWidgetData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SduiWidgetData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SduiWidgetData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..e<WidgetType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: WidgetType.WIDGET_TYPE_UNSPECIFIED,
        valueOf: WidgetType.valueOf,
        enumValues: WidgetType.values)
    ..m<$core.String, $core.String>(
        2, _omitFieldNames ? '' : 'stringAttributes',
        entryClassName: 'SduiWidgetData.StringAttributesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('flutter_sdui'))
    ..m<$core.String, $core.double>(
        3, _omitFieldNames ? '' : 'doubleAttributes',
        entryClassName: 'SduiWidgetData.DoubleAttributesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OD,
        packageName: const $pb.PackageName('flutter_sdui'))
    ..m<$core.String, $core.bool>(4, _omitFieldNames ? '' : 'boolAttributes',
        entryClassName: 'SduiWidgetData.BoolAttributesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OB,
        packageName: const $pb.PackageName('flutter_sdui'))
    ..m<$core.String, $core.int>(5, _omitFieldNames ? '' : 'intAttributes',
        entryClassName: 'SduiWidgetData.IntAttributesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('flutter_sdui'))
    ..aOM<TextStyleData>(6, _omitFieldNames ? '' : 'textStyle',
        subBuilder: TextStyleData.create)
    ..aOM<EdgeInsetsData>(7, _omitFieldNames ? '' : 'padding',
        subBuilder: EdgeInsetsData.create)
    ..aOM<EdgeInsetsData>(8, _omitFieldNames ? '' : 'margin',
        subBuilder: EdgeInsetsData.create)
    ..aOM<ColorData>(9, _omitFieldNames ? '' : 'color',
        subBuilder: ColorData.create)
    ..aOM<IconDataMessage>(10, _omitFieldNames ? '' : 'icon',
        subBuilder: IconDataMessage.create)
    ..aOM<BoxDecorationData>(11, _omitFieldNames ? '' : 'boxDecoration',
        subBuilder: BoxDecorationData.create)
    ..pc<SduiWidgetData>(
        12, _omitFieldNames ? '' : 'children', $pb.PbFieldType.PM,
        subBuilder: SduiWidgetData.create)
    ..aOM<SduiWidgetData>(13, _omitFieldNames ? '' : 'child',
        subBuilder: SduiWidgetData.create)
    ..aOM<SduiWidgetData>(14, _omitFieldNames ? '' : 'appBar',
        subBuilder: SduiWidgetData.create)
    ..aOM<SduiWidgetData>(15, _omitFieldNames ? '' : 'body',
        subBuilder: SduiWidgetData.create)
    ..aOM<SduiWidgetData>(16, _omitFieldNames ? '' : 'floatingActionButton',
        subBuilder: SduiWidgetData.create)
    ..aOM<ColorData>(17, _omitFieldNames ? '' : 'backgroundColor',
        subBuilder: ColorData.create)
    ..aOM<SduiWidgetData>(18, _omitFieldNames ? '' : 'bottomNavigationBar',
        subBuilder: SduiWidgetData.create)
    ..aOM<SduiWidgetData>(19, _omitFieldNames ? '' : 'drawer',
        subBuilder: SduiWidgetData.create)
    ..aOM<SduiWidgetData>(20, _omitFieldNames ? '' : 'endDrawer',
        subBuilder: SduiWidgetData.create)
    ..aOM<SduiWidgetData>(21, _omitFieldNames ? '' : 'bottomSheet',
        subBuilder: SduiWidgetData.create)
    ..aOB(22, _omitFieldNames ? '' : 'resizeToAvoidBottomInset')
    ..aOB(23, _omitFieldNames ? '' : 'primary')
    ..e<FloatingActionButtonLocationProto>(
        24,
        _omitFieldNames ? '' : 'floatingActionButtonLocation',
        $pb.PbFieldType.OE,
        defaultOrMaker:
            FloatingActionButtonLocationProto.FAB_LOCATION_UNSPECIFIED,
        valueOf: FloatingActionButtonLocationProto.valueOf,
        enumValues: FloatingActionButtonLocationProto.values)
    ..aOB(25, _omitFieldNames ? '' : 'extendBody')
    ..aOB(26, _omitFieldNames ? '' : 'extendBodyBehindAppBar')
    ..aOM<ColorData>(27, _omitFieldNames ? '' : 'drawerScrimColor',
        subBuilder: ColorData.create)
    ..a<$core.double>(
        28, _omitFieldNames ? '' : 'drawerEdgeDragWidth', $pb.PbFieldType.OD)
    ..aOB(29, _omitFieldNames ? '' : 'drawerEnableOpenDragGesture')
    ..aOB(30, _omitFieldNames ? '' : 'endDrawerEnableOpenDragGesture')
    ..e<MainAxisAlignmentProto>(
        31, _omitFieldNames ? '' : 'mainAxisAlignment', $pb.PbFieldType.OE,
        defaultOrMaker: MainAxisAlignmentProto.MAIN_AXIS_ALIGNMENT_UNSPECIFIED,
        valueOf: MainAxisAlignmentProto.valueOf,
        enumValues: MainAxisAlignmentProto.values)
    ..e<CrossAxisAlignmentProto>(
        32, _omitFieldNames ? '' : 'crossAxisAlignment', $pb.PbFieldType.OE,
        defaultOrMaker:
            CrossAxisAlignmentProto.CROSS_AXIS_ALIGNMENT_UNSPECIFIED,
        valueOf: CrossAxisAlignmentProto.valueOf,
        enumValues: CrossAxisAlignmentProto.values)
    ..e<MainAxisSizeProto>(
        33, _omitFieldNames ? '' : 'mainAxisSize', $pb.PbFieldType.OE,
        defaultOrMaker: MainAxisSizeProto.MAIN_AXIS_SIZE_UNSPECIFIED,
        valueOf: MainAxisSizeProto.valueOf,
        enumValues: MainAxisSizeProto.values)
    ..e<TextDirectionProto>(
        34, _omitFieldNames ? '' : 'textDirection', $pb.PbFieldType.OE,
        defaultOrMaker: TextDirectionProto.TEXT_DIRECTION_UNSPECIFIED,
        valueOf: TextDirectionProto.valueOf,
        enumValues: TextDirectionProto.values)
    ..e<VerticalDirectionProto>(
        35, _omitFieldNames ? '' : 'verticalDirection', $pb.PbFieldType.OE,
        defaultOrMaker: VerticalDirectionProto.VERTICAL_DIRECTION_UNSPECIFIED,
        valueOf: VerticalDirectionProto.valueOf,
        enumValues: VerticalDirectionProto.values)
    ..e<TextBaselineProto>(
        36, _omitFieldNames ? '' : 'textBaseline', $pb.PbFieldType.OE,
        defaultOrMaker: TextBaselineProto.TEXT_BASELINE_UNSPECIFIED,
        valueOf: TextBaselineProto.valueOf,
        enumValues: TextBaselineProto.values)
    ..aOM<AlignmentData>(37, _omitFieldNames ? '' : 'alignment',
        subBuilder: AlignmentData.create)
    ..aOM<BoxConstraintsData>(38, _omitFieldNames ? '' : 'constraints',
        subBuilder: BoxConstraintsData.create)
    ..aOM<TransformData>(39, _omitFieldNames ? '' : 'transform',
        subBuilder: TransformData.create)
    ..aOM<AlignmentData>(40, _omitFieldNames ? '' : 'transformAlignment',
        subBuilder: AlignmentData.create)
    ..e<ClipProto>(
        41, _omitFieldNames ? '' : 'clipBehavior', $pb.PbFieldType.OE,
        defaultOrMaker: ClipProto.CLIP_UNSPECIFIED,
        valueOf: ClipProto.valueOf,
        enumValues: ClipProto.values)
    ..e<TextAlignProto>(
        42, _omitFieldNames ? '' : 'textAlign', $pb.PbFieldType.OE,
        defaultOrMaker: TextAlignProto.TEXT_ALIGN_UNSPECIFIED,
        valueOf: TextAlignProto.valueOf,
        enumValues: TextAlignProto.values)
    ..e<TextOverflowProto>(
        43, _omitFieldNames ? '' : 'overflow', $pb.PbFieldType.OE,
        defaultOrMaker: TextOverflowProto.TEXT_OVERFLOW_UNSPECIFIED,
        valueOf: TextOverflowProto.valueOf,
        enumValues: TextOverflowProto.values)
    ..a<$core.int>(44, _omitFieldNames ? '' : 'maxLines', $pb.PbFieldType.O3)
    ..aOB(45, _omitFieldNames ? '' : 'softWrap')
    ..a<$core.double>(
        46, _omitFieldNames ? '' : 'letterSpacing', $pb.PbFieldType.OD)
    ..a<$core.double>(
        47, _omitFieldNames ? '' : 'wordSpacing', $pb.PbFieldType.OD)
    ..a<$core.double>(48, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OD)
    ..aOS(49, _omitFieldNames ? '' : 'fontFamily')
    ..e<ImageRepeatProto>(
        50, _omitFieldNames ? '' : 'repeat', $pb.PbFieldType.OE,
        defaultOrMaker: ImageRepeatProto.IMAGE_REPEAT_UNSPECIFIED,
        valueOf: ImageRepeatProto.valueOf,
        enumValues: ImageRepeatProto.values)
    ..e<BlendModeProto>(
        51, _omitFieldNames ? '' : 'colorBlendMode', $pb.PbFieldType.OE,
        defaultOrMaker: BlendModeProto.BLEND_MODE_UNSPECIFIED,
        valueOf: BlendModeProto.valueOf,
        enumValues: BlendModeProto.values)
    ..aOM<RectData>(52, _omitFieldNames ? '' : 'centerSlice',
        subBuilder: RectData.create)
    ..aOB(53, _omitFieldNames ? '' : 'matchTextDirection')
    ..aOB(54, _omitFieldNames ? '' : 'gaplessPlayback')
    ..e<FilterQualityProto>(
        55, _omitFieldNames ? '' : 'filterQuality', $pb.PbFieldType.OE,
        defaultOrMaker: FilterQualityProto.FILTER_QUALITY_UNSPECIFIED,
        valueOf: FilterQualityProto.valueOf,
        enumValues: FilterQualityProto.values)
    ..a<$core.int>(56, _omitFieldNames ? '' : 'cacheWidth', $pb.PbFieldType.O3)
    ..a<$core.int>(57, _omitFieldNames ? '' : 'cacheHeight', $pb.PbFieldType.O3)
    ..a<$core.double>(58, _omitFieldNames ? '' : 'scale', $pb.PbFieldType.OD)
    ..aOS(59, _omitFieldNames ? '' : 'semanticLabel')
    ..aOM<SduiWidgetData>(60, _omitFieldNames ? '' : 'errorWidget',
        subBuilder: SduiWidgetData.create)
    ..aOM<SduiWidgetData>(61, _omitFieldNames ? '' : 'loadingWidget',
        subBuilder: SduiWidgetData.create)
    ..a<$core.double>(62, _omitFieldNames ? '' : 'opacity', $pb.PbFieldType.OD)
    ..aOB(63, _omitFieldNames ? '' : 'applyTextScaling')
    ..pc<ShadowData>(64, _omitFieldNames ? '' : 'shadows', $pb.PbFieldType.PM,
        subBuilder: ShadowData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SduiWidgetData clone() => SduiWidgetData()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SduiWidgetData copyWith(void Function(SduiWidgetData) updates) =>
      super.copyWith((message) => updates(message as SduiWidgetData))
          as SduiWidgetData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SduiWidgetData create() => SduiWidgetData._();
  SduiWidgetData createEmptyInstance() => create();
  static $pb.PbList<SduiWidgetData> createRepeated() =>
      $pb.PbList<SduiWidgetData>();
  @$core.pragma('dart2js:noInline')
  static SduiWidgetData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SduiWidgetData>(create);
  static SduiWidgetData? _defaultInstance;

  @$pb.TagNumber(1)
  WidgetType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(WidgetType v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get stringAttributes => $_getMap(1);

  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $core.double> get doubleAttributes => $_getMap(2);

  @$pb.TagNumber(4)
  $pb.PbMap<$core.String, $core.bool> get boolAttributes => $_getMap(3);

  @$pb.TagNumber(5)
  $pb.PbMap<$core.String, $core.int> get intAttributes => $_getMap(4);

  /// Complex nested attributes
  @$pb.TagNumber(6)
  TextStyleData get textStyle => $_getN(5);
  @$pb.TagNumber(6)
  set textStyle(TextStyleData v) {
    $_setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTextStyle() => $_has(5);
  @$pb.TagNumber(6)
  void clearTextStyle() => $_clearField(6);
  @$pb.TagNumber(6)
  TextStyleData ensureTextStyle() => $_ensure(5);

  @$pb.TagNumber(7)
  EdgeInsetsData get padding => $_getN(6);
  @$pb.TagNumber(7)
  set padding(EdgeInsetsData v) {
    $_setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasPadding() => $_has(6);
  @$pb.TagNumber(7)
  void clearPadding() => $_clearField(7);
  @$pb.TagNumber(7)
  EdgeInsetsData ensurePadding() => $_ensure(6);

  @$pb.TagNumber(8)
  EdgeInsetsData get margin => $_getN(7);
  @$pb.TagNumber(8)
  set margin(EdgeInsetsData v) {
    $_setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasMargin() => $_has(7);
  @$pb.TagNumber(8)
  void clearMargin() => $_clearField(8);
  @$pb.TagNumber(8)
  EdgeInsetsData ensureMargin() => $_ensure(7);

  @$pb.TagNumber(9)
  ColorData get color => $_getN(8);
  @$pb.TagNumber(9)
  set color(ColorData v) {
    $_setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasColor() => $_has(8);
  @$pb.TagNumber(9)
  void clearColor() => $_clearField(9);
  @$pb.TagNumber(9)
  ColorData ensureColor() => $_ensure(8);

  @$pb.TagNumber(10)
  IconDataMessage get icon => $_getN(9);
  @$pb.TagNumber(10)
  set icon(IconDataMessage v) {
    $_setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasIcon() => $_has(9);
  @$pb.TagNumber(10)
  void clearIcon() => $_clearField(10);
  @$pb.TagNumber(10)
  IconDataMessage ensureIcon() => $_ensure(9);

  @$pb.TagNumber(11)
  BoxDecorationData get boxDecoration => $_getN(10);
  @$pb.TagNumber(11)
  set boxDecoration(BoxDecorationData v) {
    $_setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasBoxDecoration() => $_has(10);
  @$pb.TagNumber(11)
  void clearBoxDecoration() => $_clearField(11);
  @$pb.TagNumber(11)
  BoxDecorationData ensureBoxDecoration() => $_ensure(10);

  /// Children widgets
  @$pb.TagNumber(12)
  $pb.PbList<SduiWidgetData> get children => $_getList(11);

  @$pb.TagNumber(13)
  SduiWidgetData get child => $_getN(12);
  @$pb.TagNumber(13)
  set child(SduiWidgetData v) {
    $_setField(13, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasChild() => $_has(12);
  @$pb.TagNumber(13)
  void clearChild() => $_clearField(13);
  @$pb.TagNumber(13)
  SduiWidgetData ensureChild() => $_ensure(12);

  /// Scaffold specific parts
  @$pb.TagNumber(14)
  SduiWidgetData get appBar => $_getN(13);
  @$pb.TagNumber(14)
  set appBar(SduiWidgetData v) {
    $_setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasAppBar() => $_has(13);
  @$pb.TagNumber(14)
  void clearAppBar() => $_clearField(14);
  @$pb.TagNumber(14)
  SduiWidgetData ensureAppBar() => $_ensure(13);

  @$pb.TagNumber(15)
  SduiWidgetData get body => $_getN(14);
  @$pb.TagNumber(15)
  set body(SduiWidgetData v) {
    $_setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasBody() => $_has(14);
  @$pb.TagNumber(15)
  void clearBody() => $_clearField(15);
  @$pb.TagNumber(15)
  SduiWidgetData ensureBody() => $_ensure(14);

  @$pb.TagNumber(16)
  SduiWidgetData get floatingActionButton => $_getN(15);
  @$pb.TagNumber(16)
  set floatingActionButton(SduiWidgetData v) {
    $_setField(16, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasFloatingActionButton() => $_has(15);
  @$pb.TagNumber(16)
  void clearFloatingActionButton() => $_clearField(16);
  @$pb.TagNumber(16)
  SduiWidgetData ensureFloatingActionButton() => $_ensure(15);

  @$pb.TagNumber(17)
  ColorData get backgroundColor => $_getN(16);
  @$pb.TagNumber(17)
  set backgroundColor(ColorData v) {
    $_setField(17, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasBackgroundColor() => $_has(16);
  @$pb.TagNumber(17)
  void clearBackgroundColor() => $_clearField(17);
  @$pb.TagNumber(17)
  ColorData ensureBackgroundColor() => $_ensure(16);

  /// New Scaffold attributes
  @$pb.TagNumber(18)
  SduiWidgetData get bottomNavigationBar => $_getN(17);
  @$pb.TagNumber(18)
  set bottomNavigationBar(SduiWidgetData v) {
    $_setField(18, v);
  }

  @$pb.TagNumber(18)
  $core.bool hasBottomNavigationBar() => $_has(17);
  @$pb.TagNumber(18)
  void clearBottomNavigationBar() => $_clearField(18);
  @$pb.TagNumber(18)
  SduiWidgetData ensureBottomNavigationBar() => $_ensure(17);

  @$pb.TagNumber(19)
  SduiWidgetData get drawer => $_getN(18);
  @$pb.TagNumber(19)
  set drawer(SduiWidgetData v) {
    $_setField(19, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasDrawer() => $_has(18);
  @$pb.TagNumber(19)
  void clearDrawer() => $_clearField(19);
  @$pb.TagNumber(19)
  SduiWidgetData ensureDrawer() => $_ensure(18);

  @$pb.TagNumber(20)
  SduiWidgetData get endDrawer => $_getN(19);
  @$pb.TagNumber(20)
  set endDrawer(SduiWidgetData v) {
    $_setField(20, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasEndDrawer() => $_has(19);
  @$pb.TagNumber(20)
  void clearEndDrawer() => $_clearField(20);
  @$pb.TagNumber(20)
  SduiWidgetData ensureEndDrawer() => $_ensure(19);

  @$pb.TagNumber(21)
  SduiWidgetData get bottomSheet => $_getN(20);
  @$pb.TagNumber(21)
  set bottomSheet(SduiWidgetData v) {
    $_setField(21, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasBottomSheet() => $_has(20);
  @$pb.TagNumber(21)
  void clearBottomSheet() => $_clearField(21);
  @$pb.TagNumber(21)
  SduiWidgetData ensureBottomSheet() => $_ensure(20);

  @$pb.TagNumber(22)
  $core.bool get resizeToAvoidBottomInset => $_getBF(21);
  @$pb.TagNumber(22)
  set resizeToAvoidBottomInset($core.bool v) {
    $_setBool(21, v);
  }

  @$pb.TagNumber(22)
  $core.bool hasResizeToAvoidBottomInset() => $_has(21);
  @$pb.TagNumber(22)
  void clearResizeToAvoidBottomInset() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.bool get primary => $_getBF(22);
  @$pb.TagNumber(23)
  set primary($core.bool v) {
    $_setBool(22, v);
  }

  @$pb.TagNumber(23)
  $core.bool hasPrimary() => $_has(22);
  @$pb.TagNumber(23)
  void clearPrimary() => $_clearField(23);

  @$pb.TagNumber(24)
  FloatingActionButtonLocationProto get floatingActionButtonLocation =>
      $_getN(23);
  @$pb.TagNumber(24)
  set floatingActionButtonLocation(FloatingActionButtonLocationProto v) {
    $_setField(24, v);
  }

  @$pb.TagNumber(24)
  $core.bool hasFloatingActionButtonLocation() => $_has(23);
  @$pb.TagNumber(24)
  void clearFloatingActionButtonLocation() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.bool get extendBody => $_getBF(24);
  @$pb.TagNumber(25)
  set extendBody($core.bool v) {
    $_setBool(24, v);
  }

  @$pb.TagNumber(25)
  $core.bool hasExtendBody() => $_has(24);
  @$pb.TagNumber(25)
  void clearExtendBody() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.bool get extendBodyBehindAppBar => $_getBF(25);
  @$pb.TagNumber(26)
  set extendBodyBehindAppBar($core.bool v) {
    $_setBool(25, v);
  }

  @$pb.TagNumber(26)
  $core.bool hasExtendBodyBehindAppBar() => $_has(25);
  @$pb.TagNumber(26)
  void clearExtendBodyBehindAppBar() => $_clearField(26);

  @$pb.TagNumber(27)
  ColorData get drawerScrimColor => $_getN(26);
  @$pb.TagNumber(27)
  set drawerScrimColor(ColorData v) {
    $_setField(27, v);
  }

  @$pb.TagNumber(27)
  $core.bool hasDrawerScrimColor() => $_has(26);
  @$pb.TagNumber(27)
  void clearDrawerScrimColor() => $_clearField(27);
  @$pb.TagNumber(27)
  ColorData ensureDrawerScrimColor() => $_ensure(26);

  @$pb.TagNumber(28)
  $core.double get drawerEdgeDragWidth => $_getN(27);
  @$pb.TagNumber(28)
  set drawerEdgeDragWidth($core.double v) {
    $_setDouble(27, v);
  }

  @$pb.TagNumber(28)
  $core.bool hasDrawerEdgeDragWidth() => $_has(27);
  @$pb.TagNumber(28)
  void clearDrawerEdgeDragWidth() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.bool get drawerEnableOpenDragGesture => $_getBF(28);
  @$pb.TagNumber(29)
  set drawerEnableOpenDragGesture($core.bool v) {
    $_setBool(28, v);
  }

  @$pb.TagNumber(29)
  $core.bool hasDrawerEnableOpenDragGesture() => $_has(28);
  @$pb.TagNumber(29)
  void clearDrawerEnableOpenDragGesture() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.bool get endDrawerEnableOpenDragGesture => $_getBF(29);
  @$pb.TagNumber(30)
  set endDrawerEnableOpenDragGesture($core.bool v) {
    $_setBool(29, v);
  }

  @$pb.TagNumber(30)
  $core.bool hasEndDrawerEnableOpenDragGesture() => $_has(29);
  @$pb.TagNumber(30)
  void clearEndDrawerEnableOpenDragGesture() => $_clearField(30);

  /// Layout attributes for Row and Column
  @$pb.TagNumber(31)
  MainAxisAlignmentProto get mainAxisAlignment => $_getN(30);
  @$pb.TagNumber(31)
  set mainAxisAlignment(MainAxisAlignmentProto v) {
    $_setField(31, v);
  }

  @$pb.TagNumber(31)
  $core.bool hasMainAxisAlignment() => $_has(30);
  @$pb.TagNumber(31)
  void clearMainAxisAlignment() => $_clearField(31);

  @$pb.TagNumber(32)
  CrossAxisAlignmentProto get crossAxisAlignment => $_getN(31);
  @$pb.TagNumber(32)
  set crossAxisAlignment(CrossAxisAlignmentProto v) {
    $_setField(32, v);
  }

  @$pb.TagNumber(32)
  $core.bool hasCrossAxisAlignment() => $_has(31);
  @$pb.TagNumber(32)
  void clearCrossAxisAlignment() => $_clearField(32);

  @$pb.TagNumber(33)
  MainAxisSizeProto get mainAxisSize => $_getN(32);
  @$pb.TagNumber(33)
  set mainAxisSize(MainAxisSizeProto v) {
    $_setField(33, v);
  }

  @$pb.TagNumber(33)
  $core.bool hasMainAxisSize() => $_has(32);
  @$pb.TagNumber(33)
  void clearMainAxisSize() => $_clearField(33);

  @$pb.TagNumber(34)
  TextDirectionProto get textDirection => $_getN(33);
  @$pb.TagNumber(34)
  set textDirection(TextDirectionProto v) {
    $_setField(34, v);
  }

  @$pb.TagNumber(34)
  $core.bool hasTextDirection() => $_has(33);
  @$pb.TagNumber(34)
  void clearTextDirection() => $_clearField(34);

  @$pb.TagNumber(35)
  VerticalDirectionProto get verticalDirection => $_getN(34);
  @$pb.TagNumber(35)
  set verticalDirection(VerticalDirectionProto v) {
    $_setField(35, v);
  }

  @$pb.TagNumber(35)
  $core.bool hasVerticalDirection() => $_has(34);
  @$pb.TagNumber(35)
  void clearVerticalDirection() => $_clearField(35);

  @$pb.TagNumber(36)
  TextBaselineProto get textBaseline => $_getN(35);
  @$pb.TagNumber(36)
  set textBaseline(TextBaselineProto v) {
    $_setField(36, v);
  }

  @$pb.TagNumber(36)
  $core.bool hasTextBaseline() => $_has(35);
  @$pb.TagNumber(36)
  void clearTextBaseline() => $_clearField(36);

  /// Container specific attributes
  @$pb.TagNumber(37)
  AlignmentData get alignment => $_getN(36);
  @$pb.TagNumber(37)
  set alignment(AlignmentData v) {
    $_setField(37, v);
  }

  @$pb.TagNumber(37)
  $core.bool hasAlignment() => $_has(36);
  @$pb.TagNumber(37)
  void clearAlignment() => $_clearField(37);
  @$pb.TagNumber(37)
  AlignmentData ensureAlignment() => $_ensure(36);

  @$pb.TagNumber(38)
  BoxConstraintsData get constraints => $_getN(37);
  @$pb.TagNumber(38)
  set constraints(BoxConstraintsData v) {
    $_setField(38, v);
  }

  @$pb.TagNumber(38)
  $core.bool hasConstraints() => $_has(37);
  @$pb.TagNumber(38)
  void clearConstraints() => $_clearField(38);
  @$pb.TagNumber(38)
  BoxConstraintsData ensureConstraints() => $_ensure(37);

  @$pb.TagNumber(39)
  TransformData get transform => $_getN(38);
  @$pb.TagNumber(39)
  set transform(TransformData v) {
    $_setField(39, v);
  }

  @$pb.TagNumber(39)
  $core.bool hasTransform() => $_has(38);
  @$pb.TagNumber(39)
  void clearTransform() => $_clearField(39);
  @$pb.TagNumber(39)
  TransformData ensureTransform() => $_ensure(38);

  @$pb.TagNumber(40)
  AlignmentData get transformAlignment => $_getN(39);
  @$pb.TagNumber(40)
  set transformAlignment(AlignmentData v) {
    $_setField(40, v);
  }

  @$pb.TagNumber(40)
  $core.bool hasTransformAlignment() => $_has(39);
  @$pb.TagNumber(40)
  void clearTransformAlignment() => $_clearField(40);
  @$pb.TagNumber(40)
  AlignmentData ensureTransformAlignment() => $_ensure(39);

  @$pb.TagNumber(41)
  ClipProto get clipBehavior => $_getN(40);
  @$pb.TagNumber(41)
  set clipBehavior(ClipProto v) {
    $_setField(41, v);
  }

  @$pb.TagNumber(41)
  $core.bool hasClipBehavior() => $_has(40);
  @$pb.TagNumber(41)
  void clearClipBehavior() => $_clearField(41);

  /// Text specific attributes
  @$pb.TagNumber(42)
  TextAlignProto get textAlign => $_getN(41);
  @$pb.TagNumber(42)
  set textAlign(TextAlignProto v) {
    $_setField(42, v);
  }

  @$pb.TagNumber(42)
  $core.bool hasTextAlign() => $_has(41);
  @$pb.TagNumber(42)
  void clearTextAlign() => $_clearField(42);

  @$pb.TagNumber(43)
  TextOverflowProto get overflow => $_getN(42);
  @$pb.TagNumber(43)
  set overflow(TextOverflowProto v) {
    $_setField(43, v);
  }

  @$pb.TagNumber(43)
  $core.bool hasOverflow() => $_has(42);
  @$pb.TagNumber(43)
  void clearOverflow() => $_clearField(43);

  @$pb.TagNumber(44)
  $core.int get maxLines => $_getIZ(43);
  @$pb.TagNumber(44)
  set maxLines($core.int v) {
    $_setSignedInt32(43, v);
  }

  @$pb.TagNumber(44)
  $core.bool hasMaxLines() => $_has(43);
  @$pb.TagNumber(44)
  void clearMaxLines() => $_clearField(44);

  @$pb.TagNumber(45)
  $core.bool get softWrap => $_getBF(44);
  @$pb.TagNumber(45)
  set softWrap($core.bool v) {
    $_setBool(44, v);
  }

  @$pb.TagNumber(45)
  $core.bool hasSoftWrap() => $_has(44);
  @$pb.TagNumber(45)
  void clearSoftWrap() => $_clearField(45);

  @$pb.TagNumber(46)
  $core.double get letterSpacing => $_getN(45);
  @$pb.TagNumber(46)
  set letterSpacing($core.double v) {
    $_setDouble(45, v);
  }

  @$pb.TagNumber(46)
  $core.bool hasLetterSpacing() => $_has(45);
  @$pb.TagNumber(46)
  void clearLetterSpacing() => $_clearField(46);

  @$pb.TagNumber(47)
  $core.double get wordSpacing => $_getN(46);
  @$pb.TagNumber(47)
  set wordSpacing($core.double v) {
    $_setDouble(46, v);
  }

  @$pb.TagNumber(47)
  $core.bool hasWordSpacing() => $_has(46);
  @$pb.TagNumber(47)
  void clearWordSpacing() => $_clearField(47);

  @$pb.TagNumber(48)
  $core.double get height => $_getN(47);
  @$pb.TagNumber(48)
  set height($core.double v) {
    $_setDouble(47, v);
  }

  @$pb.TagNumber(48)
  $core.bool hasHeight() => $_has(47);
  @$pb.TagNumber(48)
  void clearHeight() => $_clearField(48);

  @$pb.TagNumber(49)
  $core.String get fontFamily => $_getSZ(48);
  @$pb.TagNumber(49)
  set fontFamily($core.String v) {
    $_setString(48, v);
  }

  @$pb.TagNumber(49)
  $core.bool hasFontFamily() => $_has(48);
  @$pb.TagNumber(49)
  void clearFontFamily() => $_clearField(49);

  /// Image specific attributes
  @$pb.TagNumber(50)
  ImageRepeatProto get repeat => $_getN(49);
  @$pb.TagNumber(50)
  set repeat(ImageRepeatProto v) {
    $_setField(50, v);
  }

  @$pb.TagNumber(50)
  $core.bool hasRepeat() => $_has(49);
  @$pb.TagNumber(50)
  void clearRepeat() => $_clearField(50);

  @$pb.TagNumber(51)
  BlendModeProto get colorBlendMode => $_getN(50);
  @$pb.TagNumber(51)
  set colorBlendMode(BlendModeProto v) {
    $_setField(51, v);
  }

  @$pb.TagNumber(51)
  $core.bool hasColorBlendMode() => $_has(50);
  @$pb.TagNumber(51)
  void clearColorBlendMode() => $_clearField(51);

  @$pb.TagNumber(52)
  RectData get centerSlice => $_getN(51);
  @$pb.TagNumber(52)
  set centerSlice(RectData v) {
    $_setField(52, v);
  }

  @$pb.TagNumber(52)
  $core.bool hasCenterSlice() => $_has(51);
  @$pb.TagNumber(52)
  void clearCenterSlice() => $_clearField(52);
  @$pb.TagNumber(52)
  RectData ensureCenterSlice() => $_ensure(51);

  @$pb.TagNumber(53)
  $core.bool get matchTextDirection => $_getBF(52);
  @$pb.TagNumber(53)
  set matchTextDirection($core.bool v) {
    $_setBool(52, v);
  }

  @$pb.TagNumber(53)
  $core.bool hasMatchTextDirection() => $_has(52);
  @$pb.TagNumber(53)
  void clearMatchTextDirection() => $_clearField(53);

  @$pb.TagNumber(54)
  $core.bool get gaplessPlayback => $_getBF(53);
  @$pb.TagNumber(54)
  set gaplessPlayback($core.bool v) {
    $_setBool(53, v);
  }

  @$pb.TagNumber(54)
  $core.bool hasGaplessPlayback() => $_has(53);
  @$pb.TagNumber(54)
  void clearGaplessPlayback() => $_clearField(54);

  @$pb.TagNumber(55)
  FilterQualityProto get filterQuality => $_getN(54);
  @$pb.TagNumber(55)
  set filterQuality(FilterQualityProto v) {
    $_setField(55, v);
  }

  @$pb.TagNumber(55)
  $core.bool hasFilterQuality() => $_has(54);
  @$pb.TagNumber(55)
  void clearFilterQuality() => $_clearField(55);

  @$pb.TagNumber(56)
  $core.int get cacheWidth => $_getIZ(55);
  @$pb.TagNumber(56)
  set cacheWidth($core.int v) {
    $_setSignedInt32(55, v);
  }

  @$pb.TagNumber(56)
  $core.bool hasCacheWidth() => $_has(55);
  @$pb.TagNumber(56)
  void clearCacheWidth() => $_clearField(56);

  @$pb.TagNumber(57)
  $core.int get cacheHeight => $_getIZ(56);
  @$pb.TagNumber(57)
  set cacheHeight($core.int v) {
    $_setSignedInt32(56, v);
  }

  @$pb.TagNumber(57)
  $core.bool hasCacheHeight() => $_has(56);
  @$pb.TagNumber(57)
  void clearCacheHeight() => $_clearField(57);

  @$pb.TagNumber(58)
  $core.double get scale => $_getN(57);
  @$pb.TagNumber(58)
  set scale($core.double v) {
    $_setDouble(57, v);
  }

  @$pb.TagNumber(58)
  $core.bool hasScale() => $_has(57);
  @$pb.TagNumber(58)
  void clearScale() => $_clearField(58);

  @$pb.TagNumber(59)
  $core.String get semanticLabel => $_getSZ(58);
  @$pb.TagNumber(59)
  set semanticLabel($core.String v) {
    $_setString(58, v);
  }

  @$pb.TagNumber(59)
  $core.bool hasSemanticLabel() => $_has(58);
  @$pb.TagNumber(59)
  void clearSemanticLabel() => $_clearField(59);

  @$pb.TagNumber(60)
  SduiWidgetData get errorWidget => $_getN(59);
  @$pb.TagNumber(60)
  set errorWidget(SduiWidgetData v) {
    $_setField(60, v);
  }

  @$pb.TagNumber(60)
  $core.bool hasErrorWidget() => $_has(59);
  @$pb.TagNumber(60)
  void clearErrorWidget() => $_clearField(60);
  @$pb.TagNumber(60)
  SduiWidgetData ensureErrorWidget() => $_ensure(59);

  @$pb.TagNumber(61)
  SduiWidgetData get loadingWidget => $_getN(60);
  @$pb.TagNumber(61)
  set loadingWidget(SduiWidgetData v) {
    $_setField(61, v);
  }

  @$pb.TagNumber(61)
  $core.bool hasLoadingWidget() => $_has(60);
  @$pb.TagNumber(61)
  void clearLoadingWidget() => $_clearField(61);
  @$pb.TagNumber(61)
  SduiWidgetData ensureLoadingWidget() => $_ensure(60);

  /// Icon specific attributes
  @$pb.TagNumber(62)
  $core.double get opacity => $_getN(61);
  @$pb.TagNumber(62)
  set opacity($core.double v) {
    $_setDouble(61, v);
  }

  @$pb.TagNumber(62)
  $core.bool hasOpacity() => $_has(61);
  @$pb.TagNumber(62)
  void clearOpacity() => $_clearField(62);

  @$pb.TagNumber(63)
  $core.bool get applyTextScaling => $_getBF(62);
  @$pb.TagNumber(63)
  set applyTextScaling($core.bool v) {
    $_setBool(62, v);
  }

  @$pb.TagNumber(63)
  $core.bool hasApplyTextScaling() => $_has(62);
  @$pb.TagNumber(63)
  void clearApplyTextScaling() => $_clearField(63);

  @$pb.TagNumber(64)
  $pb.PbList<ShadowData> get shadows => $_getList(63);
}

/// Message for Color
class ColorData extends $pb.GeneratedMessage {
  factory ColorData({
    $core.int? alpha,
    $core.int? red,
    $core.int? green,
    $core.int? blue,
  }) {
    final $result = create();
    if (alpha != null) {
      $result.alpha = alpha;
    }
    if (red != null) {
      $result.red = red;
    }
    if (green != null) {
      $result.green = green;
    }
    if (blue != null) {
      $result.blue = blue;
    }
    return $result;
  }
  ColorData._() : super();
  factory ColorData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ColorData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ColorData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'alpha', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'red', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'green', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'blue', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ColorData clone() => ColorData()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ColorData copyWith(void Function(ColorData) updates) =>
      super.copyWith((message) => updates(message as ColorData)) as ColorData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ColorData create() => ColorData._();
  ColorData createEmptyInstance() => create();
  static $pb.PbList<ColorData> createRepeated() => $pb.PbList<ColorData>();
  @$core.pragma('dart2js:noInline')
  static ColorData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ColorData>(create);
  static ColorData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get alpha => $_getIZ(0);
  @$pb.TagNumber(1)
  set alpha($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAlpha() => $_has(0);
  @$pb.TagNumber(1)
  void clearAlpha() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get red => $_getIZ(1);
  @$pb.TagNumber(2)
  set red($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRed() => $_has(1);
  @$pb.TagNumber(2)
  void clearRed() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get green => $_getIZ(2);
  @$pb.TagNumber(3)
  set green($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasGreen() => $_has(2);
  @$pb.TagNumber(3)
  void clearGreen() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get blue => $_getIZ(3);
  @$pb.TagNumber(4)
  set blue($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBlue() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlue() => $_clearField(4);
}

/// Message for EdgeInsets (for padding, margin)
class EdgeInsetsData extends $pb.GeneratedMessage {
  factory EdgeInsetsData({
    $core.double? left,
    $core.double? top,
    $core.double? right,
    $core.double? bottom,
    $core.double? all,
  }) {
    final $result = create();
    if (left != null) {
      $result.left = left;
    }
    if (top != null) {
      $result.top = top;
    }
    if (right != null) {
      $result.right = right;
    }
    if (bottom != null) {
      $result.bottom = bottom;
    }
    if (all != null) {
      $result.all = all;
    }
    return $result;
  }
  EdgeInsetsData._() : super();
  factory EdgeInsetsData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EdgeInsetsData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EdgeInsetsData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'left', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'top', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'right', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'bottom', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'all', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EdgeInsetsData clone() => EdgeInsetsData()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EdgeInsetsData copyWith(void Function(EdgeInsetsData) updates) =>
      super.copyWith((message) => updates(message as EdgeInsetsData))
          as EdgeInsetsData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EdgeInsetsData create() => EdgeInsetsData._();
  EdgeInsetsData createEmptyInstance() => create();
  static $pb.PbList<EdgeInsetsData> createRepeated() =>
      $pb.PbList<EdgeInsetsData>();
  @$core.pragma('dart2js:noInline')
  static EdgeInsetsData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EdgeInsetsData>(create);
  static EdgeInsetsData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get left => $_getN(0);
  @$pb.TagNumber(1)
  set left($core.double v) {
    $_setDouble(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLeft() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeft() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get top => $_getN(1);
  @$pb.TagNumber(2)
  set top($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTop() => $_has(1);
  @$pb.TagNumber(2)
  void clearTop() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get right => $_getN(2);
  @$pb.TagNumber(3)
  set right($core.double v) {
    $_setDouble(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRight() => $_has(2);
  @$pb.TagNumber(3)
  void clearRight() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get bottom => $_getN(3);
  @$pb.TagNumber(4)
  set bottom($core.double v) {
    $_setDouble(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBottom() => $_has(3);
  @$pb.TagNumber(4)
  void clearBottom() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get all => $_getN(4);
  @$pb.TagNumber(5)
  set all($core.double v) {
    $_setDouble(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAll() => $_has(4);
  @$pb.TagNumber(5)
  void clearAll() => $_clearField(5);
}

/// Message for TextStyle
class TextStyleData extends $pb.GeneratedMessage {
  factory TextStyleData({
    ColorData? color,
    $core.double? fontSize,
    $core.String? fontWeight,
    TextDecorationProto? decoration,
    $core.double? letterSpacing,
    $core.double? wordSpacing,
    $core.double? height,
    $core.String? fontFamily,
    FontStyleProto? fontStyle,
  }) {
    final $result = create();
    if (color != null) {
      $result.color = color;
    }
    if (fontSize != null) {
      $result.fontSize = fontSize;
    }
    if (fontWeight != null) {
      $result.fontWeight = fontWeight;
    }
    if (decoration != null) {
      $result.decoration = decoration;
    }
    if (letterSpacing != null) {
      $result.letterSpacing = letterSpacing;
    }
    if (wordSpacing != null) {
      $result.wordSpacing = wordSpacing;
    }
    if (height != null) {
      $result.height = height;
    }
    if (fontFamily != null) {
      $result.fontFamily = fontFamily;
    }
    if (fontStyle != null) {
      $result.fontStyle = fontStyle;
    }
    return $result;
  }
  TextStyleData._() : super();
  factory TextStyleData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TextStyleData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TextStyleData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..aOM<ColorData>(1, _omitFieldNames ? '' : 'color',
        subBuilder: ColorData.create)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'fontSize', $pb.PbFieldType.OD)
    ..aOS(3, _omitFieldNames ? '' : 'fontWeight')
    ..e<TextDecorationProto>(
        4, _omitFieldNames ? '' : 'decoration', $pb.PbFieldType.OE,
        defaultOrMaker: TextDecorationProto.TEXT_DECORATION_UNSPECIFIED,
        valueOf: TextDecorationProto.valueOf,
        enumValues: TextDecorationProto.values)
    ..a<$core.double>(
        5, _omitFieldNames ? '' : 'letterSpacing', $pb.PbFieldType.OD)
    ..a<$core.double>(
        6, _omitFieldNames ? '' : 'wordSpacing', $pb.PbFieldType.OD)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OD)
    ..aOS(8, _omitFieldNames ? '' : 'fontFamily')
    ..e<FontStyleProto>(
        9, _omitFieldNames ? '' : 'fontStyle', $pb.PbFieldType.OE,
        defaultOrMaker: FontStyleProto.FONT_STYLE_UNSPECIFIED,
        valueOf: FontStyleProto.valueOf,
        enumValues: FontStyleProto.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextStyleData clone() => TextStyleData()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextStyleData copyWith(void Function(TextStyleData) updates) =>
      super.copyWith((message) => updates(message as TextStyleData))
          as TextStyleData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TextStyleData create() => TextStyleData._();
  TextStyleData createEmptyInstance() => create();
  static $pb.PbList<TextStyleData> createRepeated() =>
      $pb.PbList<TextStyleData>();
  @$core.pragma('dart2js:noInline')
  static TextStyleData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TextStyleData>(create);
  static TextStyleData? _defaultInstance;

  @$pb.TagNumber(1)
  ColorData get color => $_getN(0);
  @$pb.TagNumber(1)
  set color(ColorData v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearColor() => $_clearField(1);
  @$pb.TagNumber(1)
  ColorData ensureColor() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get fontSize => $_getN(1);
  @$pb.TagNumber(2)
  set fontSize($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFontSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearFontSize() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get fontWeight => $_getSZ(2);
  @$pb.TagNumber(3)
  set fontWeight($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFontWeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearFontWeight() => $_clearField(3);

  @$pb.TagNumber(4)
  TextDecorationProto get decoration => $_getN(3);
  @$pb.TagNumber(4)
  set decoration(TextDecorationProto v) {
    $_setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDecoration() => $_has(3);
  @$pb.TagNumber(4)
  void clearDecoration() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get letterSpacing => $_getN(4);
  @$pb.TagNumber(5)
  set letterSpacing($core.double v) {
    $_setDouble(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasLetterSpacing() => $_has(4);
  @$pb.TagNumber(5)
  void clearLetterSpacing() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get wordSpacing => $_getN(5);
  @$pb.TagNumber(6)
  set wordSpacing($core.double v) {
    $_setDouble(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasWordSpacing() => $_has(5);
  @$pb.TagNumber(6)
  void clearWordSpacing() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get height => $_getN(6);
  @$pb.TagNumber(7)
  set height($core.double v) {
    $_setDouble(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasHeight() => $_has(6);
  @$pb.TagNumber(7)
  void clearHeight() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get fontFamily => $_getSZ(7);
  @$pb.TagNumber(8)
  set fontFamily($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasFontFamily() => $_has(7);
  @$pb.TagNumber(8)
  void clearFontFamily() => $_clearField(8);

  @$pb.TagNumber(9)
  FontStyleProto get fontStyle => $_getN(8);
  @$pb.TagNumber(9)
  set fontStyle(FontStyleProto v) {
    $_setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasFontStyle() => $_has(8);
  @$pb.TagNumber(9)
  void clearFontStyle() => $_clearField(9);
}

/// Message for IconData
class IconDataMessage extends $pb.GeneratedMessage {
  factory IconDataMessage({
    $core.String? name,
    $core.int? codePoint,
    $core.String? fontFamily,
    ColorData? color,
    $core.double? size,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (codePoint != null) {
      $result.codePoint = codePoint;
    }
    if (fontFamily != null) {
      $result.fontFamily = fontFamily;
    }
    if (color != null) {
      $result.color = color;
    }
    if (size != null) {
      $result.size = size;
    }
    return $result;
  }
  IconDataMessage._() : super();
  factory IconDataMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IconDataMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IconDataMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'codePoint', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'fontFamily')
    ..aOM<ColorData>(4, _omitFieldNames ? '' : 'color',
        subBuilder: ColorData.create)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'size', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IconDataMessage clone() => IconDataMessage()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IconDataMessage copyWith(void Function(IconDataMessage) updates) =>
      super.copyWith((message) => updates(message as IconDataMessage))
          as IconDataMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IconDataMessage create() => IconDataMessage._();
  IconDataMessage createEmptyInstance() => create();
  static $pb.PbList<IconDataMessage> createRepeated() =>
      $pb.PbList<IconDataMessage>();
  @$core.pragma('dart2js:noInline')
  static IconDataMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IconDataMessage>(create);
  static IconDataMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get codePoint => $_getIZ(1);
  @$pb.TagNumber(2)
  set codePoint($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCodePoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearCodePoint() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get fontFamily => $_getSZ(2);
  @$pb.TagNumber(3)
  set fontFamily($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFontFamily() => $_has(2);
  @$pb.TagNumber(3)
  void clearFontFamily() => $_clearField(3);

  @$pb.TagNumber(4)
  ColorData get color => $_getN(3);
  @$pb.TagNumber(4)
  set color(ColorData v) {
    $_setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasColor() => $_has(3);
  @$pb.TagNumber(4)
  void clearColor() => $_clearField(4);
  @$pb.TagNumber(4)
  ColorData ensureColor() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.double get size => $_getN(4);
  @$pb.TagNumber(5)
  set size($core.double v) {
    $_setDouble(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearSize() => $_clearField(5);
}

/// Message for BoxDecoration
class BoxDecorationData extends $pb.GeneratedMessage {
  factory BoxDecorationData({
    ColorData? color,
    BorderRadiusData? borderRadius,
    BorderData? border,
    $core.Iterable<BoxShadowData>? boxShadow,
    GradientData? gradient,
    BoxShapeProto? shape,
    DecorationImageData? image,
  }) {
    final $result = create();
    if (color != null) {
      $result.color = color;
    }
    if (borderRadius != null) {
      $result.borderRadius = borderRadius;
    }
    if (border != null) {
      $result.border = border;
    }
    if (boxShadow != null) {
      $result.boxShadow.addAll(boxShadow);
    }
    if (gradient != null) {
      $result.gradient = gradient;
    }
    if (shape != null) {
      $result.shape = shape;
    }
    if (image != null) {
      $result.image = image;
    }
    return $result;
  }
  BoxDecorationData._() : super();
  factory BoxDecorationData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BoxDecorationData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BoxDecorationData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..aOM<ColorData>(1, _omitFieldNames ? '' : 'color',
        subBuilder: ColorData.create)
    ..aOM<BorderRadiusData>(2, _omitFieldNames ? '' : 'borderRadius',
        subBuilder: BorderRadiusData.create)
    ..aOM<BorderData>(3, _omitFieldNames ? '' : 'border',
        subBuilder: BorderData.create)
    ..pc<BoxShadowData>(
        4, _omitFieldNames ? '' : 'boxShadow', $pb.PbFieldType.PM,
        subBuilder: BoxShadowData.create)
    ..aOM<GradientData>(5, _omitFieldNames ? '' : 'gradient',
        subBuilder: GradientData.create)
    ..e<BoxShapeProto>(6, _omitFieldNames ? '' : 'shape', $pb.PbFieldType.OE,
        defaultOrMaker: BoxShapeProto.BOX_SHAPE_UNSPECIFIED,
        valueOf: BoxShapeProto.valueOf,
        enumValues: BoxShapeProto.values)
    ..aOM<DecorationImageData>(7, _omitFieldNames ? '' : 'image',
        subBuilder: DecorationImageData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoxDecorationData clone() => BoxDecorationData()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoxDecorationData copyWith(void Function(BoxDecorationData) updates) =>
      super.copyWith((message) => updates(message as BoxDecorationData))
          as BoxDecorationData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoxDecorationData create() => BoxDecorationData._();
  BoxDecorationData createEmptyInstance() => create();
  static $pb.PbList<BoxDecorationData> createRepeated() =>
      $pb.PbList<BoxDecorationData>();
  @$core.pragma('dart2js:noInline')
  static BoxDecorationData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BoxDecorationData>(create);
  static BoxDecorationData? _defaultInstance;

  @$pb.TagNumber(1)
  ColorData get color => $_getN(0);
  @$pb.TagNumber(1)
  set color(ColorData v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearColor() => $_clearField(1);
  @$pb.TagNumber(1)
  ColorData ensureColor() => $_ensure(0);

  @$pb.TagNumber(2)
  BorderRadiusData get borderRadius => $_getN(1);
  @$pb.TagNumber(2)
  set borderRadius(BorderRadiusData v) {
    $_setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBorderRadius() => $_has(1);
  @$pb.TagNumber(2)
  void clearBorderRadius() => $_clearField(2);
  @$pb.TagNumber(2)
  BorderRadiusData ensureBorderRadius() => $_ensure(1);

  @$pb.TagNumber(3)
  BorderData get border => $_getN(2);
  @$pb.TagNumber(3)
  set border(BorderData v) {
    $_setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBorder() => $_has(2);
  @$pb.TagNumber(3)
  void clearBorder() => $_clearField(3);
  @$pb.TagNumber(3)
  BorderData ensureBorder() => $_ensure(2);

  @$pb.TagNumber(4)
  $pb.PbList<BoxShadowData> get boxShadow => $_getList(3);

  @$pb.TagNumber(5)
  GradientData get gradient => $_getN(4);
  @$pb.TagNumber(5)
  set gradient(GradientData v) {
    $_setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasGradient() => $_has(4);
  @$pb.TagNumber(5)
  void clearGradient() => $_clearField(5);
  @$pb.TagNumber(5)
  GradientData ensureGradient() => $_ensure(4);

  @$pb.TagNumber(6)
  BoxShapeProto get shape => $_getN(5);
  @$pb.TagNumber(6)
  set shape(BoxShapeProto v) {
    $_setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasShape() => $_has(5);
  @$pb.TagNumber(6)
  void clearShape() => $_clearField(6);

  @$pb.TagNumber(7)
  DecorationImageData get image => $_getN(6);
  @$pb.TagNumber(7)
  set image(DecorationImageData v) {
    $_setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasImage() => $_has(6);
  @$pb.TagNumber(7)
  void clearImage() => $_clearField(7);
  @$pb.TagNumber(7)
  DecorationImageData ensureImage() => $_ensure(6);
}

/// Message for BorderRadius
class BorderRadiusData extends $pb.GeneratedMessage {
  factory BorderRadiusData({
    $core.double? all,
    $core.double? topLeft,
    $core.double? topRight,
    $core.double? bottomLeft,
    $core.double? bottomRight,
  }) {
    final $result = create();
    if (all != null) {
      $result.all = all;
    }
    if (topLeft != null) {
      $result.topLeft = topLeft;
    }
    if (topRight != null) {
      $result.topRight = topRight;
    }
    if (bottomLeft != null) {
      $result.bottomLeft = bottomLeft;
    }
    if (bottomRight != null) {
      $result.bottomRight = bottomRight;
    }
    return $result;
  }
  BorderRadiusData._() : super();
  factory BorderRadiusData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BorderRadiusData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BorderRadiusData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'all', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'topLeft', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'topRight', $pb.PbFieldType.OD)
    ..a<$core.double>(
        4, _omitFieldNames ? '' : 'bottomLeft', $pb.PbFieldType.OD)
    ..a<$core.double>(
        5, _omitFieldNames ? '' : 'bottomRight', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BorderRadiusData clone() => BorderRadiusData()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BorderRadiusData copyWith(void Function(BorderRadiusData) updates) =>
      super.copyWith((message) => updates(message as BorderRadiusData))
          as BorderRadiusData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BorderRadiusData create() => BorderRadiusData._();
  BorderRadiusData createEmptyInstance() => create();
  static $pb.PbList<BorderRadiusData> createRepeated() =>
      $pb.PbList<BorderRadiusData>();
  @$core.pragma('dart2js:noInline')
  static BorderRadiusData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BorderRadiusData>(create);
  static BorderRadiusData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get all => $_getN(0);
  @$pb.TagNumber(1)
  set all($core.double v) {
    $_setDouble(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAll() => $_has(0);
  @$pb.TagNumber(1)
  void clearAll() => $_clearField(1);

  /// For BorderRadius.only or .vertical/.horizontal if needed later
  @$pb.TagNumber(2)
  $core.double get topLeft => $_getN(1);
  @$pb.TagNumber(2)
  set topLeft($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTopLeft() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopLeft() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get topRight => $_getN(2);
  @$pb.TagNumber(3)
  set topRight($core.double v) {
    $_setDouble(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTopRight() => $_has(2);
  @$pb.TagNumber(3)
  void clearTopRight() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get bottomLeft => $_getN(3);
  @$pb.TagNumber(4)
  set bottomLeft($core.double v) {
    $_setDouble(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBottomLeft() => $_has(3);
  @$pb.TagNumber(4)
  void clearBottomLeft() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get bottomRight => $_getN(4);
  @$pb.TagNumber(5)
  set bottomRight($core.double v) {
    $_setDouble(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasBottomRight() => $_has(4);
  @$pb.TagNumber(5)
  void clearBottomRight() => $_clearField(5);
}

/// Message for BorderSide
class BorderSideData extends $pb.GeneratedMessage {
  factory BorderSideData({
    ColorData? color,
    $core.double? width,
    BorderStyleProto? style,
  }) {
    final $result = create();
    if (color != null) {
      $result.color = color;
    }
    if (width != null) {
      $result.width = width;
    }
    if (style != null) {
      $result.style = style;
    }
    return $result;
  }
  BorderSideData._() : super();
  factory BorderSideData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BorderSideData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BorderSideData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..aOM<ColorData>(1, _omitFieldNames ? '' : 'color',
        subBuilder: ColorData.create)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'width', $pb.PbFieldType.OD)
    ..e<BorderStyleProto>(3, _omitFieldNames ? '' : 'style', $pb.PbFieldType.OE,
        defaultOrMaker: BorderStyleProto.BORDER_STYLE_UNSPECIFIED,
        valueOf: BorderStyleProto.valueOf,
        enumValues: BorderStyleProto.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BorderSideData clone() => BorderSideData()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BorderSideData copyWith(void Function(BorderSideData) updates) =>
      super.copyWith((message) => updates(message as BorderSideData))
          as BorderSideData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BorderSideData create() => BorderSideData._();
  BorderSideData createEmptyInstance() => create();
  static $pb.PbList<BorderSideData> createRepeated() =>
      $pb.PbList<BorderSideData>();
  @$core.pragma('dart2js:noInline')
  static BorderSideData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BorderSideData>(create);
  static BorderSideData? _defaultInstance;

  @$pb.TagNumber(1)
  ColorData get color => $_getN(0);
  @$pb.TagNumber(1)
  set color(ColorData v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearColor() => $_clearField(1);
  @$pb.TagNumber(1)
  ColorData ensureColor() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get width => $_getN(1);
  @$pb.TagNumber(2)
  set width($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidth() => $_clearField(2);

  @$pb.TagNumber(3)
  BorderStyleProto get style => $_getN(2);
  @$pb.TagNumber(3)
  set style(BorderStyleProto v) {
    $_setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasStyle() => $_has(2);
  @$pb.TagNumber(3)
  void clearStyle() => $_clearField(3);
}

/// Message for Border
class BorderData extends $pb.GeneratedMessage {
  factory BorderData({
    BorderSideData? top,
    BorderSideData? right,
    BorderSideData? bottom,
    BorderSideData? left,
    BorderSideData? all,
  }) {
    final $result = create();
    if (top != null) {
      $result.top = top;
    }
    if (right != null) {
      $result.right = right;
    }
    if (bottom != null) {
      $result.bottom = bottom;
    }
    if (left != null) {
      $result.left = left;
    }
    if (all != null) {
      $result.all = all;
    }
    return $result;
  }
  BorderData._() : super();
  factory BorderData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BorderData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BorderData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..aOM<BorderSideData>(1, _omitFieldNames ? '' : 'top',
        subBuilder: BorderSideData.create)
    ..aOM<BorderSideData>(2, _omitFieldNames ? '' : 'right',
        subBuilder: BorderSideData.create)
    ..aOM<BorderSideData>(3, _omitFieldNames ? '' : 'bottom',
        subBuilder: BorderSideData.create)
    ..aOM<BorderSideData>(4, _omitFieldNames ? '' : 'left',
        subBuilder: BorderSideData.create)
    ..aOM<BorderSideData>(5, _omitFieldNames ? '' : 'all',
        subBuilder: BorderSideData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BorderData clone() => BorderData()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BorderData copyWith(void Function(BorderData) updates) =>
      super.copyWith((message) => updates(message as BorderData)) as BorderData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BorderData create() => BorderData._();
  BorderData createEmptyInstance() => create();
  static $pb.PbList<BorderData> createRepeated() => $pb.PbList<BorderData>();
  @$core.pragma('dart2js:noInline')
  static BorderData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BorderData>(create);
  static BorderData? _defaultInstance;

  @$pb.TagNumber(1)
  BorderSideData get top => $_getN(0);
  @$pb.TagNumber(1)
  set top(BorderSideData v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTop() => $_has(0);
  @$pb.TagNumber(1)
  void clearTop() => $_clearField(1);
  @$pb.TagNumber(1)
  BorderSideData ensureTop() => $_ensure(0);

  @$pb.TagNumber(2)
  BorderSideData get right => $_getN(1);
  @$pb.TagNumber(2)
  set right(BorderSideData v) {
    $_setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRight() => $_has(1);
  @$pb.TagNumber(2)
  void clearRight() => $_clearField(2);
  @$pb.TagNumber(2)
  BorderSideData ensureRight() => $_ensure(1);

  @$pb.TagNumber(3)
  BorderSideData get bottom => $_getN(2);
  @$pb.TagNumber(3)
  set bottom(BorderSideData v) {
    $_setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBottom() => $_has(2);
  @$pb.TagNumber(3)
  void clearBottom() => $_clearField(3);
  @$pb.TagNumber(3)
  BorderSideData ensureBottom() => $_ensure(2);

  @$pb.TagNumber(4)
  BorderSideData get left => $_getN(3);
  @$pb.TagNumber(4)
  set left(BorderSideData v) {
    $_setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLeft() => $_has(3);
  @$pb.TagNumber(4)
  void clearLeft() => $_clearField(4);
  @$pb.TagNumber(4)
  BorderSideData ensureLeft() => $_ensure(3);

  @$pb.TagNumber(5)
  BorderSideData get all => $_getN(4);
  @$pb.TagNumber(5)
  set all(BorderSideData v) {
    $_setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAll() => $_has(4);
  @$pb.TagNumber(5)
  void clearAll() => $_clearField(5);
  @$pb.TagNumber(5)
  BorderSideData ensureAll() => $_ensure(4);
}

/// Message for BoxShadow
class BoxShadowData extends $pb.GeneratedMessage {
  factory BoxShadowData({
    ColorData? color,
    $core.double? offsetX,
    $core.double? offsetY,
    $core.double? blurRadius,
    $core.double? spreadRadius,
  }) {
    final $result = create();
    if (color != null) {
      $result.color = color;
    }
    if (offsetX != null) {
      $result.offsetX = offsetX;
    }
    if (offsetY != null) {
      $result.offsetY = offsetY;
    }
    if (blurRadius != null) {
      $result.blurRadius = blurRadius;
    }
    if (spreadRadius != null) {
      $result.spreadRadius = spreadRadius;
    }
    return $result;
  }
  BoxShadowData._() : super();
  factory BoxShadowData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BoxShadowData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BoxShadowData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..aOM<ColorData>(1, _omitFieldNames ? '' : 'color',
        subBuilder: ColorData.create)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'offsetX', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'offsetY', $pb.PbFieldType.OD)
    ..a<$core.double>(
        4, _omitFieldNames ? '' : 'blurRadius', $pb.PbFieldType.OD)
    ..a<$core.double>(
        5, _omitFieldNames ? '' : 'spreadRadius', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoxShadowData clone() => BoxShadowData()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoxShadowData copyWith(void Function(BoxShadowData) updates) =>
      super.copyWith((message) => updates(message as BoxShadowData))
          as BoxShadowData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoxShadowData create() => BoxShadowData._();
  BoxShadowData createEmptyInstance() => create();
  static $pb.PbList<BoxShadowData> createRepeated() =>
      $pb.PbList<BoxShadowData>();
  @$core.pragma('dart2js:noInline')
  static BoxShadowData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BoxShadowData>(create);
  static BoxShadowData? _defaultInstance;

  @$pb.TagNumber(1)
  ColorData get color => $_getN(0);
  @$pb.TagNumber(1)
  set color(ColorData v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearColor() => $_clearField(1);
  @$pb.TagNumber(1)
  ColorData ensureColor() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get offsetX => $_getN(1);
  @$pb.TagNumber(2)
  set offsetX($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOffsetX() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffsetX() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get offsetY => $_getN(2);
  @$pb.TagNumber(3)
  set offsetY($core.double v) {
    $_setDouble(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOffsetY() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffsetY() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get blurRadius => $_getN(3);
  @$pb.TagNumber(4)
  set blurRadius($core.double v) {
    $_setDouble(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBlurRadius() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlurRadius() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get spreadRadius => $_getN(4);
  @$pb.TagNumber(5)
  set spreadRadius($core.double v) {
    $_setDouble(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSpreadRadius() => $_has(4);
  @$pb.TagNumber(5)
  void clearSpreadRadius() => $_clearField(5);
}

/// Message for Gradient
class GradientData extends $pb.GeneratedMessage {
  factory GradientData({
    GradientData_GradientType? type,
    $core.Iterable<ColorData>? colors,
    $core.Iterable<$core.double>? stops,
    AlignmentData? begin,
    AlignmentData? end,
    AlignmentData? center,
    $core.double? radius,
    $core.double? startAngle,
    $core.double? endAngle,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (colors != null) {
      $result.colors.addAll(colors);
    }
    if (stops != null) {
      $result.stops.addAll(stops);
    }
    if (begin != null) {
      $result.begin = begin;
    }
    if (end != null) {
      $result.end = end;
    }
    if (center != null) {
      $result.center = center;
    }
    if (radius != null) {
      $result.radius = radius;
    }
    if (startAngle != null) {
      $result.startAngle = startAngle;
    }
    if (endAngle != null) {
      $result.endAngle = endAngle;
    }
    return $result;
  }
  GradientData._() : super();
  factory GradientData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GradientData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GradientData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..e<GradientData_GradientType>(
        1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: GradientData_GradientType.GRADIENT_TYPE_UNSPECIFIED,
        valueOf: GradientData_GradientType.valueOf,
        enumValues: GradientData_GradientType.values)
    ..pc<ColorData>(2, _omitFieldNames ? '' : 'colors', $pb.PbFieldType.PM,
        subBuilder: ColorData.create)
    ..p<$core.double>(3, _omitFieldNames ? '' : 'stops', $pb.PbFieldType.KD)
    ..aOM<AlignmentData>(4, _omitFieldNames ? '' : 'begin',
        subBuilder: AlignmentData.create)
    ..aOM<AlignmentData>(5, _omitFieldNames ? '' : 'end',
        subBuilder: AlignmentData.create)
    ..aOM<AlignmentData>(6, _omitFieldNames ? '' : 'center',
        subBuilder: AlignmentData.create)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'radius', $pb.PbFieldType.OD)
    ..a<$core.double>(
        8, _omitFieldNames ? '' : 'startAngle', $pb.PbFieldType.OD)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'endAngle', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GradientData clone() => GradientData()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GradientData copyWith(void Function(GradientData) updates) =>
      super.copyWith((message) => updates(message as GradientData))
          as GradientData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GradientData create() => GradientData._();
  GradientData createEmptyInstance() => create();
  static $pb.PbList<GradientData> createRepeated() =>
      $pb.PbList<GradientData>();
  @$core.pragma('dart2js:noInline')
  static GradientData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GradientData>(create);
  static GradientData? _defaultInstance;

  @$pb.TagNumber(1)
  GradientData_GradientType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(GradientData_GradientType v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<ColorData> get colors => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.double> get stops => $_getList(2);

  @$pb.TagNumber(4)
  AlignmentData get begin => $_getN(3);
  @$pb.TagNumber(4)
  set begin(AlignmentData v) {
    $_setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBegin() => $_has(3);
  @$pb.TagNumber(4)
  void clearBegin() => $_clearField(4);
  @$pb.TagNumber(4)
  AlignmentData ensureBegin() => $_ensure(3);

  @$pb.TagNumber(5)
  AlignmentData get end => $_getN(4);
  @$pb.TagNumber(5)
  set end(AlignmentData v) {
    $_setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasEnd() => $_has(4);
  @$pb.TagNumber(5)
  void clearEnd() => $_clearField(5);
  @$pb.TagNumber(5)
  AlignmentData ensureEnd() => $_ensure(4);

  @$pb.TagNumber(6)
  AlignmentData get center => $_getN(5);
  @$pb.TagNumber(6)
  set center(AlignmentData v) {
    $_setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCenter() => $_has(5);
  @$pb.TagNumber(6)
  void clearCenter() => $_clearField(6);
  @$pb.TagNumber(6)
  AlignmentData ensureCenter() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.double get radius => $_getN(6);
  @$pb.TagNumber(7)
  set radius($core.double v) {
    $_setDouble(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasRadius() => $_has(6);
  @$pb.TagNumber(7)
  void clearRadius() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get startAngle => $_getN(7);
  @$pb.TagNumber(8)
  set startAngle($core.double v) {
    $_setDouble(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasStartAngle() => $_has(7);
  @$pb.TagNumber(8)
  void clearStartAngle() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get endAngle => $_getN(8);
  @$pb.TagNumber(9)
  set endAngle($core.double v) {
    $_setDouble(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasEndAngle() => $_has(8);
  @$pb.TagNumber(9)
  void clearEndAngle() => $_clearField(9);
}

enum AlignmentData_AlignmentType { predefined, xy, notSet }

/// Message for Alignment (used in Gradient, DecorationImage)
class AlignmentData extends $pb.GeneratedMessage {
  factory AlignmentData({
    AlignmentData_PredefinedAlignment? predefined,
    XYAlignment? xy,
  }) {
    final $result = create();
    if (predefined != null) {
      $result.predefined = predefined;
    }
    if (xy != null) {
      $result.xy = xy;
    }
    return $result;
  }
  AlignmentData._() : super();
  factory AlignmentData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AlignmentData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, AlignmentData_AlignmentType>
      _AlignmentData_AlignmentTypeByTag = {
    1: AlignmentData_AlignmentType.predefined,
    2: AlignmentData_AlignmentType.xy,
    0: AlignmentData_AlignmentType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlignmentData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..e<AlignmentData_PredefinedAlignment>(
        1, _omitFieldNames ? '' : 'predefined', $pb.PbFieldType.OE,
        defaultOrMaker:
            AlignmentData_PredefinedAlignment.PREDEFINED_ALIGNMENT_UNSPECIFIED,
        valueOf: AlignmentData_PredefinedAlignment.valueOf,
        enumValues: AlignmentData_PredefinedAlignment.values)
    ..aOM<XYAlignment>(2, _omitFieldNames ? '' : 'xy',
        subBuilder: XYAlignment.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlignmentData clone() => AlignmentData()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlignmentData copyWith(void Function(AlignmentData) updates) =>
      super.copyWith((message) => updates(message as AlignmentData))
          as AlignmentData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlignmentData create() => AlignmentData._();
  AlignmentData createEmptyInstance() => create();
  static $pb.PbList<AlignmentData> createRepeated() =>
      $pb.PbList<AlignmentData>();
  @$core.pragma('dart2js:noInline')
  static AlignmentData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlignmentData>(create);
  static AlignmentData? _defaultInstance;

  AlignmentData_AlignmentType whichAlignmentType() =>
      _AlignmentData_AlignmentTypeByTag[$_whichOneof(0)]!;
  void clearAlignmentType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AlignmentData_PredefinedAlignment get predefined => $_getN(0);
  @$pb.TagNumber(1)
  set predefined(AlignmentData_PredefinedAlignment v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPredefined() => $_has(0);
  @$pb.TagNumber(1)
  void clearPredefined() => $_clearField(1);

  @$pb.TagNumber(2)
  XYAlignment get xy => $_getN(1);
  @$pb.TagNumber(2)
  set xy(XYAlignment v) {
    $_setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasXy() => $_has(1);
  @$pb.TagNumber(2)
  void clearXy() => $_clearField(2);
  @$pb.TagNumber(2)
  XYAlignment ensureXy() => $_ensure(1);
}

class XYAlignment extends $pb.GeneratedMessage {
  factory XYAlignment({
    $core.double? x,
    $core.double? y,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    return $result;
  }
  XYAlignment._() : super();
  factory XYAlignment.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory XYAlignment.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'XYAlignment',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  XYAlignment clone() => XYAlignment()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  XYAlignment copyWith(void Function(XYAlignment) updates) =>
      super.copyWith((message) => updates(message as XYAlignment))
          as XYAlignment;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static XYAlignment create() => XYAlignment._();
  XYAlignment createEmptyInstance() => create();
  static $pb.PbList<XYAlignment> createRepeated() => $pb.PbList<XYAlignment>();
  @$core.pragma('dart2js:noInline')
  static XYAlignment getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<XYAlignment>(create);
  static XYAlignment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) {
    $_setDouble(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => $_clearField(2);
}

/// Message for DecorationImage
class DecorationImageData extends $pb.GeneratedMessage {
  factory DecorationImageData({
    $core.String? src,
    BoxFitProto? fit,
    AlignmentData? alignment,
    ImageRepeatProto? repeat,
    $core.bool? matchTextDirection,
    $core.double? scale,
    $core.double? opacity,
    FilterQualityProto? filterQuality,
    $core.bool? invertColors,
    $core.bool? isAntiAlias,
  }) {
    final $result = create();
    if (src != null) {
      $result.src = src;
    }
    if (fit != null) {
      $result.fit = fit;
    }
    if (alignment != null) {
      $result.alignment = alignment;
    }
    if (repeat != null) {
      $result.repeat = repeat;
    }
    if (matchTextDirection != null) {
      $result.matchTextDirection = matchTextDirection;
    }
    if (scale != null) {
      $result.scale = scale;
    }
    if (opacity != null) {
      $result.opacity = opacity;
    }
    if (filterQuality != null) {
      $result.filterQuality = filterQuality;
    }
    if (invertColors != null) {
      $result.invertColors = invertColors;
    }
    if (isAntiAlias != null) {
      $result.isAntiAlias = isAntiAlias;
    }
    return $result;
  }
  DecorationImageData._() : super();
  factory DecorationImageData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DecorationImageData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DecorationImageData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'src')
    ..e<BoxFitProto>(2, _omitFieldNames ? '' : 'fit', $pb.PbFieldType.OE,
        defaultOrMaker: BoxFitProto.BOX_FIT_UNSPECIFIED,
        valueOf: BoxFitProto.valueOf,
        enumValues: BoxFitProto.values)
    ..aOM<AlignmentData>(3, _omitFieldNames ? '' : 'alignment',
        subBuilder: AlignmentData.create)
    ..e<ImageRepeatProto>(
        4, _omitFieldNames ? '' : 'repeat', $pb.PbFieldType.OE,
        defaultOrMaker: ImageRepeatProto.IMAGE_REPEAT_UNSPECIFIED,
        valueOf: ImageRepeatProto.valueOf,
        enumValues: ImageRepeatProto.values)
    ..aOB(5, _omitFieldNames ? '' : 'matchTextDirection')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'scale', $pb.PbFieldType.OD)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'opacity', $pb.PbFieldType.OD)
    ..e<FilterQualityProto>(
        8, _omitFieldNames ? '' : 'filterQuality', $pb.PbFieldType.OE,
        defaultOrMaker: FilterQualityProto.FILTER_QUALITY_UNSPECIFIED,
        valueOf: FilterQualityProto.valueOf,
        enumValues: FilterQualityProto.values)
    ..aOB(9, _omitFieldNames ? '' : 'invertColors')
    ..aOB(10, _omitFieldNames ? '' : 'isAntiAlias')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DecorationImageData clone() => DecorationImageData()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DecorationImageData copyWith(void Function(DecorationImageData) updates) =>
      super.copyWith((message) => updates(message as DecorationImageData))
          as DecorationImageData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DecorationImageData create() => DecorationImageData._();
  DecorationImageData createEmptyInstance() => create();
  static $pb.PbList<DecorationImageData> createRepeated() =>
      $pb.PbList<DecorationImageData>();
  @$core.pragma('dart2js:noInline')
  static DecorationImageData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DecorationImageData>(create);
  static DecorationImageData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get src => $_getSZ(0);
  @$pb.TagNumber(1)
  set src($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSrc() => $_has(0);
  @$pb.TagNumber(1)
  void clearSrc() => $_clearField(1);

  @$pb.TagNumber(2)
  BoxFitProto get fit => $_getN(1);
  @$pb.TagNumber(2)
  set fit(BoxFitProto v) {
    $_setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFit() => $_has(1);
  @$pb.TagNumber(2)
  void clearFit() => $_clearField(2);

  @$pb.TagNumber(3)
  AlignmentData get alignment => $_getN(2);
  @$pb.TagNumber(3)
  set alignment(AlignmentData v) {
    $_setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAlignment() => $_has(2);
  @$pb.TagNumber(3)
  void clearAlignment() => $_clearField(3);
  @$pb.TagNumber(3)
  AlignmentData ensureAlignment() => $_ensure(2);

  @$pb.TagNumber(4)
  ImageRepeatProto get repeat => $_getN(3);
  @$pb.TagNumber(4)
  set repeat(ImageRepeatProto v) {
    $_setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRepeat() => $_has(3);
  @$pb.TagNumber(4)
  void clearRepeat() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get matchTextDirection => $_getBF(4);
  @$pb.TagNumber(5)
  set matchTextDirection($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasMatchTextDirection() => $_has(4);
  @$pb.TagNumber(5)
  void clearMatchTextDirection() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get scale => $_getN(5);
  @$pb.TagNumber(6)
  set scale($core.double v) {
    $_setDouble(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasScale() => $_has(5);
  @$pb.TagNumber(6)
  void clearScale() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get opacity => $_getN(6);
  @$pb.TagNumber(7)
  set opacity($core.double v) {
    $_setDouble(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasOpacity() => $_has(6);
  @$pb.TagNumber(7)
  void clearOpacity() => $_clearField(7);

  @$pb.TagNumber(8)
  FilterQualityProto get filterQuality => $_getN(7);
  @$pb.TagNumber(8)
  set filterQuality(FilterQualityProto v) {
    $_setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasFilterQuality() => $_has(7);
  @$pb.TagNumber(8)
  void clearFilterQuality() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get invertColors => $_getBF(8);
  @$pb.TagNumber(9)
  set invertColors($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasInvertColors() => $_has(8);
  @$pb.TagNumber(9)
  void clearInvertColors() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.bool get isAntiAlias => $_getBF(9);
  @$pb.TagNumber(10)
  set isAntiAlias($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasIsAntiAlias() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsAntiAlias() => $_clearField(10);
}

/// New message for Box Constraints
class BoxConstraintsData extends $pb.GeneratedMessage {
  factory BoxConstraintsData({
    $core.double? minWidth,
    $core.double? maxWidth,
    $core.double? minHeight,
    $core.double? maxHeight,
  }) {
    final $result = create();
    if (minWidth != null) {
      $result.minWidth = minWidth;
    }
    if (maxWidth != null) {
      $result.maxWidth = maxWidth;
    }
    if (minHeight != null) {
      $result.minHeight = minHeight;
    }
    if (maxHeight != null) {
      $result.maxHeight = maxHeight;
    }
    return $result;
  }
  BoxConstraintsData._() : super();
  factory BoxConstraintsData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BoxConstraintsData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BoxConstraintsData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'minWidth', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'maxWidth', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'minHeight', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'maxHeight', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoxConstraintsData clone() => BoxConstraintsData()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoxConstraintsData copyWith(void Function(BoxConstraintsData) updates) =>
      super.copyWith((message) => updates(message as BoxConstraintsData))
          as BoxConstraintsData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoxConstraintsData create() => BoxConstraintsData._();
  BoxConstraintsData createEmptyInstance() => create();
  static $pb.PbList<BoxConstraintsData> createRepeated() =>
      $pb.PbList<BoxConstraintsData>();
  @$core.pragma('dart2js:noInline')
  static BoxConstraintsData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BoxConstraintsData>(create);
  static BoxConstraintsData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get minWidth => $_getN(0);
  @$pb.TagNumber(1)
  set minWidth($core.double v) {
    $_setDouble(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMinWidth() => $_has(0);
  @$pb.TagNumber(1)
  void clearMinWidth() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get maxWidth => $_getN(1);
  @$pb.TagNumber(2)
  set maxWidth($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMaxWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxWidth() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get minHeight => $_getN(2);
  @$pb.TagNumber(3)
  set minHeight($core.double v) {
    $_setDouble(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMinHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinHeight() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get maxHeight => $_getN(3);
  @$pb.TagNumber(4)
  set maxHeight($core.double v) {
    $_setDouble(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMaxHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxHeight() => $_clearField(4);
}

/// New message for Transform
class TransformData extends $pb.GeneratedMessage {
  factory TransformData({
    TransformData_TransformType? type,
    $core.Iterable<$core.double>? matrixValues,
    $core.double? translateX,
    $core.double? translateY,
    $core.double? translateZ,
    $core.double? rotationAngle,
    $core.double? rotationX,
    $core.double? rotationY,
    $core.double? rotationZ,
    $core.double? scaleX,
    $core.double? scaleY,
    $core.double? scaleZ,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (matrixValues != null) {
      $result.matrixValues.addAll(matrixValues);
    }
    if (translateX != null) {
      $result.translateX = translateX;
    }
    if (translateY != null) {
      $result.translateY = translateY;
    }
    if (translateZ != null) {
      $result.translateZ = translateZ;
    }
    if (rotationAngle != null) {
      $result.rotationAngle = rotationAngle;
    }
    if (rotationX != null) {
      $result.rotationX = rotationX;
    }
    if (rotationY != null) {
      $result.rotationY = rotationY;
    }
    if (rotationZ != null) {
      $result.rotationZ = rotationZ;
    }
    if (scaleX != null) {
      $result.scaleX = scaleX;
    }
    if (scaleY != null) {
      $result.scaleY = scaleY;
    }
    if (scaleZ != null) {
      $result.scaleZ = scaleZ;
    }
    return $result;
  }
  TransformData._() : super();
  factory TransformData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransformData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransformData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..e<TransformData_TransformType>(
        1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: TransformData_TransformType.TRANSFORM_TYPE_UNSPECIFIED,
        valueOf: TransformData_TransformType.valueOf,
        enumValues: TransformData_TransformType.values)
    ..p<$core.double>(
        2, _omitFieldNames ? '' : 'matrixValues', $pb.PbFieldType.KD)
    ..a<$core.double>(
        3, _omitFieldNames ? '' : 'translateX', $pb.PbFieldType.OD)
    ..a<$core.double>(
        4, _omitFieldNames ? '' : 'translateY', $pb.PbFieldType.OD)
    ..a<$core.double>(
        5, _omitFieldNames ? '' : 'translateZ', $pb.PbFieldType.OD)
    ..a<$core.double>(
        6, _omitFieldNames ? '' : 'rotationAngle', $pb.PbFieldType.OD)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'rotationX', $pb.PbFieldType.OD)
    ..a<$core.double>(8, _omitFieldNames ? '' : 'rotationY', $pb.PbFieldType.OD)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'rotationZ', $pb.PbFieldType.OD)
    ..a<$core.double>(10, _omitFieldNames ? '' : 'scaleX', $pb.PbFieldType.OD)
    ..a<$core.double>(11, _omitFieldNames ? '' : 'scaleY', $pb.PbFieldType.OD)
    ..a<$core.double>(12, _omitFieldNames ? '' : 'scaleZ', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransformData clone() => TransformData()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransformData copyWith(void Function(TransformData) updates) =>
      super.copyWith((message) => updates(message as TransformData))
          as TransformData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransformData create() => TransformData._();
  TransformData createEmptyInstance() => create();
  static $pb.PbList<TransformData> createRepeated() =>
      $pb.PbList<TransformData>();
  @$core.pragma('dart2js:noInline')
  static TransformData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransformData>(create);
  static TransformData? _defaultInstance;

  @$pb.TagNumber(1)
  TransformData_TransformType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(TransformData_TransformType v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  /// Matrix 4x4 (row-major order)
  @$pb.TagNumber(2)
  $pb.PbList<$core.double> get matrixValues => $_getList(1);

  /// Translation
  @$pb.TagNumber(3)
  $core.double get translateX => $_getN(2);
  @$pb.TagNumber(3)
  set translateX($core.double v) {
    $_setDouble(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTranslateX() => $_has(2);
  @$pb.TagNumber(3)
  void clearTranslateX() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get translateY => $_getN(3);
  @$pb.TagNumber(4)
  set translateY($core.double v) {
    $_setDouble(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTranslateY() => $_has(3);
  @$pb.TagNumber(4)
  void clearTranslateY() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get translateZ => $_getN(4);
  @$pb.TagNumber(5)
  set translateZ($core.double v) {
    $_setDouble(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTranslateZ() => $_has(4);
  @$pb.TagNumber(5)
  void clearTranslateZ() => $_clearField(5);

  /// Rotation
  @$pb.TagNumber(6)
  $core.double get rotationAngle => $_getN(5);
  @$pb.TagNumber(6)
  set rotationAngle($core.double v) {
    $_setDouble(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasRotationAngle() => $_has(5);
  @$pb.TagNumber(6)
  void clearRotationAngle() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get rotationX => $_getN(6);
  @$pb.TagNumber(7)
  set rotationX($core.double v) {
    $_setDouble(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasRotationX() => $_has(6);
  @$pb.TagNumber(7)
  void clearRotationX() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get rotationY => $_getN(7);
  @$pb.TagNumber(8)
  set rotationY($core.double v) {
    $_setDouble(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasRotationY() => $_has(7);
  @$pb.TagNumber(8)
  void clearRotationY() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get rotationZ => $_getN(8);
  @$pb.TagNumber(9)
  set rotationZ($core.double v) {
    $_setDouble(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasRotationZ() => $_has(8);
  @$pb.TagNumber(9)
  void clearRotationZ() => $_clearField(9);

  /// Scale
  @$pb.TagNumber(10)
  $core.double get scaleX => $_getN(9);
  @$pb.TagNumber(10)
  set scaleX($core.double v) {
    $_setDouble(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasScaleX() => $_has(9);
  @$pb.TagNumber(10)
  void clearScaleX() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.double get scaleY => $_getN(10);
  @$pb.TagNumber(11)
  set scaleY($core.double v) {
    $_setDouble(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasScaleY() => $_has(10);
  @$pb.TagNumber(11)
  void clearScaleY() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.double get scaleZ => $_getN(11);
  @$pb.TagNumber(12)
  set scaleZ($core.double v) {
    $_setDouble(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasScaleZ() => $_has(11);
  @$pb.TagNumber(12)
  void clearScaleZ() => $_clearField(12);
}

/// New message for Rectangle data
class RectData extends $pb.GeneratedMessage {
  factory RectData({
    $core.double? left,
    $core.double? top,
    $core.double? right,
    $core.double? bottom,
  }) {
    final $result = create();
    if (left != null) {
      $result.left = left;
    }
    if (top != null) {
      $result.top = top;
    }
    if (right != null) {
      $result.right = right;
    }
    if (bottom != null) {
      $result.bottom = bottom;
    }
    return $result;
  }
  RectData._() : super();
  factory RectData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RectData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RectData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'left', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'top', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'right', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'bottom', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RectData clone() => RectData()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RectData copyWith(void Function(RectData) updates) =>
      super.copyWith((message) => updates(message as RectData)) as RectData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RectData create() => RectData._();
  RectData createEmptyInstance() => create();
  static $pb.PbList<RectData> createRepeated() => $pb.PbList<RectData>();
  @$core.pragma('dart2js:noInline')
  static RectData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RectData>(create);
  static RectData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get left => $_getN(0);
  @$pb.TagNumber(1)
  set left($core.double v) {
    $_setDouble(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLeft() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeft() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get top => $_getN(1);
  @$pb.TagNumber(2)
  set top($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTop() => $_has(1);
  @$pb.TagNumber(2)
  void clearTop() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get right => $_getN(2);
  @$pb.TagNumber(3)
  set right($core.double v) {
    $_setDouble(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRight() => $_has(2);
  @$pb.TagNumber(3)
  void clearRight() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get bottom => $_getN(3);
  @$pb.TagNumber(4)
  set bottom($core.double v) {
    $_setDouble(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBottom() => $_has(3);
  @$pb.TagNumber(4)
  void clearBottom() => $_clearField(4);
}

/// New message for Shadow
class ShadowData extends $pb.GeneratedMessage {
  factory ShadowData({
    ColorData? color,
    $core.double? offsetX,
    $core.double? offsetY,
    $core.double? blurRadius,
  }) {
    final $result = create();
    if (color != null) {
      $result.color = color;
    }
    if (offsetX != null) {
      $result.offsetX = offsetX;
    }
    if (offsetY != null) {
      $result.offsetY = offsetY;
    }
    if (blurRadius != null) {
      $result.blurRadius = blurRadius;
    }
    return $result;
  }
  ShadowData._() : super();
  factory ShadowData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ShadowData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ShadowData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..aOM<ColorData>(1, _omitFieldNames ? '' : 'color',
        subBuilder: ColorData.create)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'offsetX', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'offsetY', $pb.PbFieldType.OD)
    ..a<$core.double>(
        4, _omitFieldNames ? '' : 'blurRadius', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShadowData clone() => ShadowData()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShadowData copyWith(void Function(ShadowData) updates) =>
      super.copyWith((message) => updates(message as ShadowData)) as ShadowData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShadowData create() => ShadowData._();
  ShadowData createEmptyInstance() => create();
  static $pb.PbList<ShadowData> createRepeated() => $pb.PbList<ShadowData>();
  @$core.pragma('dart2js:noInline')
  static ShadowData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ShadowData>(create);
  static ShadowData? _defaultInstance;

  @$pb.TagNumber(1)
  ColorData get color => $_getN(0);
  @$pb.TagNumber(1)
  set color(ColorData v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearColor() => $_clearField(1);
  @$pb.TagNumber(1)
  ColorData ensureColor() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get offsetX => $_getN(1);
  @$pb.TagNumber(2)
  set offsetX($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOffsetX() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffsetX() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get offsetY => $_getN(2);
  @$pb.TagNumber(3)
  set offsetY($core.double v) {
    $_setDouble(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOffsetY() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffsetY() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get blurRadius => $_getN(3);
  @$pb.TagNumber(4)
  set blurRadius($core.double v) {
    $_setDouble(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBlurRadius() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlurRadius() => $_clearField(4);
}

class SduiRequest extends $pb.GeneratedMessage {
  factory SduiRequest({
    $core.String? screenId,
  }) {
    final $result = create();
    if (screenId != null) {
      $result.screenId = screenId;
    }
    return $result;
  }
  SduiRequest._() : super();
  factory SduiRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SduiRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SduiRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'flutter_sdui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'screenId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SduiRequest clone() => SduiRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SduiRequest copyWith(void Function(SduiRequest) updates) =>
      super.copyWith((message) => updates(message as SduiRequest))
          as SduiRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SduiRequest create() => SduiRequest._();
  SduiRequest createEmptyInstance() => create();
  static $pb.PbList<SduiRequest> createRepeated() => $pb.PbList<SduiRequest>();
  @$core.pragma('dart2js:noInline')
  static SduiRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SduiRequest>(create);
  static SduiRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get screenId => $_getSZ(0);
  @$pb.TagNumber(1)
  set screenId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasScreenId() => $_has(0);
  @$pb.TagNumber(1)
  void clearScreenId() => $_clearField(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
