//
//  Generated code. Do not modify.
//  source: glimpse.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'glimpse.pb.dart' as $0;

export 'glimpse.pb.dart';

/// Service definition
@$pb.GrpcServiceName('flutter_glimpse.GlimpseService')
class GlimpseServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$getGlimpseWidget = $grpc.ClientMethod<$0.GlimpseRequest, $0.GlimpseWidgetData>(
      '/flutter_glimpse.GlimpseService/GetGlimpseWidget',
      ($0.GlimpseRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GlimpseWidgetData.fromBuffer(value));

  GlimpseServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.GlimpseWidgetData> getGlimpseWidget($0.GlimpseRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGlimpseWidget, request, options: options);
  }
}

@$pb.GrpcServiceName('flutter_glimpse.GlimpseService')
abstract class GlimpseServiceBase extends $grpc.Service {
  $core.String get $name => 'flutter_glimpse.GlimpseService';

  GlimpseServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GlimpseRequest, $0.GlimpseWidgetData>(
        'GetGlimpseWidget',
        getGlimpseWidget_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GlimpseRequest.fromBuffer(value),
        ($0.GlimpseWidgetData value) => value.writeToBuffer()));
  }

  $async.Future<$0.GlimpseWidgetData> getGlimpseWidget_Pre($grpc.ServiceCall $call, $async.Future<$0.GlimpseRequest> $request) async {
    return getGlimpseWidget($call, await $request);
  }

  $async.Future<$0.GlimpseWidgetData> getGlimpseWidget($grpc.ServiceCall call, $0.GlimpseRequest request);
}
