/// Flutter Server-Driven UI Package
///
/// A Flutter package that enables server-driven UI development by parsing
/// protobuf-based widget definitions from a gRPC server and rendering them
/// as native Flutter widgets.
///
/// This package provides:
/// * Protobuf-based widget parsing and rendering
/// * gRPC client for server communication
/// * A comprehensive set of SDUI widgets that mirror Flutter's core widgets
/// * Type-safe widget definitions through generated protobuf models
///
/// ## Usage
///
/// ```dart
/// // Create a gRPC client
/// final client = SduiGrpcClient(host: 'localhost', port: 50051);
///
/// // Render server-driven UI
/// SduiGrpcRenderer(
///   client: client,
///   screenId: 'home',
/// )
/// ```
library;

// Core parsing and widget foundation
export 'src/parser/sdui_proto_parser.dart';
export 'src/widgets/sdui_widget.dart';

// SDUI widget implementations
export 'src/widgets/sdui_column.dart';
export 'src/widgets/sdui_row.dart';
export 'src/widgets/sdui_text.dart';
export 'src/widgets/sdui_image.dart';
export 'src/widgets/sdui_sized_box.dart';
export 'src/widgets/sdui_container.dart';
export 'src/widgets/sdui_scaffold.dart';
export 'src/widgets/sdui_spacer.dart';
export 'src/widgets/sdui_icon.dart';
export 'src/widgets/sdui_appbar.dart';

// Network communication
export 'src/service/sdui_grpc_client.dart';
export 'src/renderer/sdui_grpc_renderer.dart';

// Generated protobuf models
export 'src/generated/sdui.pb.dart';
export 'src/generated/sdui.pbgrpc.dart';
export 'src/generated/sdui.pbenum.dart';
export 'src/generated/sdui.pbjson.dart';
