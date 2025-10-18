/// Flutter Glimpse
///
/// A Flutter package that enables server-driven UI development by parsing
/// protobuf-based widget definitions from a gRPC server and rendering them
/// as native Flutter widgets.
///
/// This package provides:
/// * Protobuf-based widget parsing and rendering
/// * gRPC client for server communication
/// * A comprehensive set of Glimpse widgets that mirror Flutter's core widgets
/// * Type-safe widget definitions through generated protobuf models
///
/// ## Usage
///
/// ```dart
/// // Create a gRPC client
/// final client = GlimpseGrpcClient(host: 'localhost', port: 50051);
///
/// // Render server-driven UI
/// GlimpseGrpcRenderer(
///   client: client,
///   screenId: 'home',
/// )
/// ```
library;

// Core parsing and widget foundation
export 'src/parser/glimpse_proto_parser.dart';
export 'src/widgets/glimpse_widget.dart';

// Glimpse widget implementations
export 'src/widgets/glimpse_column.dart';
export 'src/widgets/glimpse_row.dart';
export 'src/widgets/glimpse_text.dart';
export 'src/widgets/glimpse_image.dart';
export 'src/widgets/glimpse_sized_box.dart';
export 'src/widgets/glimpse_container.dart';
export 'src/widgets/glimpse_scaffold.dart';
export 'src/widgets/glimpse_spacer.dart';
export 'src/widgets/glimpse_icon.dart';
export 'src/widgets/glimpse_appbar.dart';

// Network communication
export 'src/service/glimpse_grpc_client.dart';
export 'src/renderer/glimpse_grpc_renderer.dart';

// Generated protobuf models
export 'src/generated/glimpse.pb.dart';
export 'src/generated/glimpse.pbgrpc.dart';
export 'src/generated/glimpse.pbenum.dart';
export 'src/generated/glimpse.pbjson.dart';
