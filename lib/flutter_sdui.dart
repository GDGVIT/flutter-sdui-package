/// Flutter SDUI Package
///
/// A Flutter package to render server driven UI.
library;

// Export the core parser and widget base
export 'src/parser/sdui_proto_parser.dart'; 
export 'src/widgets/sdui_widget.dart';


// Export individual widget models
export 'src/widgets/sdui_column.dart';
export 'src/widgets/sdui_row.dart';
export 'src/widgets/sdui_text.dart';
export 'src/widgets/sdui_image.dart';
export 'src/widgets/sdui_sized_box.dart';
export 'src/widgets/sdui_container.dart';
export 'src/widgets/sdui_scaffold.dart';
export 'src/widgets/sdui_spacer.dart';
export 'src/widgets/sdui_icon.dart';

// Export gRPC client and renderer
export 'src/service/sdui_grpc_client.dart';
export 'src/renderer/sdui_grpc_renderer.dart';

// Export generated Protobuf models for public use
export 'src/generated/sdui.pb.dart';
export 'src/generated/sdui.pbgrpc.dart';
export 'src/generated/sdui.pbenum.dart';
export 'src/generated/sdui.pbjson.dart';

// Export JSON parser and models
export 'src/parser/sdui_json_parser.dart';
export 'src/parser/sdui_json_model.dart';


