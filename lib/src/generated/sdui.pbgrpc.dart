//
//  Generated code. Do not modify.
//  source: sdui.proto
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

import 'sdui.pb.dart' as $0;

export 'sdui.pb.dart';

/// Service definition
@$pb.GrpcServiceName('flutter_sdui.SduiService')
class SduiServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$getSduiWidget =
      $grpc.ClientMethod<$0.SduiRequest, $0.SduiWidgetData>(
          '/flutter_sdui.SduiService/GetSduiWidget',
          ($0.SduiRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SduiWidgetData.fromBuffer(value));

  SduiServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.SduiWidgetData> getSduiWidget($0.SduiRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSduiWidget, request, options: options);
  }
}

@$pb.GrpcServiceName('flutter_sdui.SduiService')
abstract class SduiServiceBase extends $grpc.Service {
  $core.String get $name => 'flutter_sdui.SduiService';

  SduiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SduiRequest, $0.SduiWidgetData>(
        'GetSduiWidget',
        getSduiWidget_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SduiRequest.fromBuffer(value),
        ($0.SduiWidgetData value) => value.writeToBuffer()));
  }

  $async.Future<$0.SduiWidgetData> getSduiWidget_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.SduiRequest> $request) async {
    return getSduiWidget($call, await $request);
  }

  $async.Future<$0.SduiWidgetData> getSduiWidget(
      $grpc.ServiceCall call, $0.SduiRequest request);
}
