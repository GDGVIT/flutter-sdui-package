import 'package:flutter/material.dart';
import 'package:flutter_sdui/src/generated/sdui.pb.dart';
import 'package:flutter_sdui/src/parser/sdui_proto_parser.dart';
import 'package:flutter_sdui/src/service/sdui_grpc_client.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// A widget that renders a UI from a gRPC server.
class SduiGrpcRenderer extends StatefulWidget {
  /// The gRPC client to use for fetching UI widgets.
  final SduiGrpcClient client;

  /// The screen ID to fetch from the server.
  final String screenId;

  /// Optional loading widget to display while fetching the UI.
  final Widget? loadingWidget;

  /// Optional error widget builder to display if an error occurs.
  final Widget Function(BuildContext, Object)? errorBuilder;

  /// Creates a new SduiGrpcRenderer.
  const SduiGrpcRenderer({
    super.key,
    required this.client,
    required this.screenId,
    this.loadingWidget,
    this.errorBuilder,
  });

  @override
  State<SduiGrpcRenderer> createState() => _SduiGrpcRendererState();
}

class _SduiGrpcRendererState extends State<SduiGrpcRenderer> {
  late Future<SduiWidgetData> _widgetFuture;

  @override
  void initState() {
    super.initState();
    _fetchWidget();
  }

  @override
  void didUpdateWidget(SduiGrpcRenderer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.screenId != widget.screenId ||
        oldWidget.client != widget.client) {
      _fetchWidget();
    }
  }

  void _fetchWidget() {
    _widgetFuture = widget.client.getWidget(widget.screenId);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SduiWidgetData>(
      future: _widgetFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return widget.loadingWidget ??
              const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          if (widget.errorBuilder != null) {
            return widget.errorBuilder!(context, snapshot.error!);
          }
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          // Convert the protobuf data to a Flutter widget
          // This will use our SduiProtoParser to create the widget tree
          final SduiWidget sduiWidget =
              SduiProtoParser.parseProto(snapshot.data!);
          return sduiWidget.toFlutterWidget();
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
