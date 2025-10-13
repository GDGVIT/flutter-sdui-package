import 'package:flutter/material.dart';
import 'package:flutter_sdui/src/generated/sdui.pb.dart';
import 'package:flutter_sdui/src/parser/sdui_proto_parser.dart';
import 'package:flutter_sdui/src/service/sdui_grpc_client.dart';
import 'package:flutter_sdui/src/widgets/sdui_widget.dart';

/// A Flutter widget that renders server-driven UI from a gRPC server.
///
/// This widget acts as the main entry point for rendering server-driven UI.
/// It fetches widget definitions from a gRPC server, parses them, and renders
/// the resulting widget tree in the Flutter app.
///
/// The renderer handles loading states, error states, and automatic re-fetching
/// when the screen ID or client changes.
///
/// Example usage:
/// ```dart
/// SduiGrpcRenderer(
///   client: sduiClient,
///   screenId: 'home',
///   loadingWidget: CustomLoadingSpinner(),
///   errorBuilder: (context, error) => ErrorWidget(error),
/// )
/// ```
class SduiGrpcRenderer extends StatefulWidget {
  /// The gRPC client used to fetch widget data from the server.
  final SduiGrpcClient client;

  /// The identifier for the screen/UI to fetch from the server.
  /// This should correspond to a valid screen ID on the server.
  final String screenId;

  /// Optional widget to display while the UI is being fetched.
  /// If not provided, a default [CircularProgressIndicator] is shown.
  final Widget? loadingWidget;

  /// Optional builder function to create a custom error widget.
  ///
  /// The function receives the [BuildContext] and the error [Object].
  /// If not provided, a default error text widget is displayed.
  final Widget Function(BuildContext, Object)? errorBuilder;

  /// Creates a new [SduiGrpcRenderer].
  ///
  /// The [client] and [screenId] parameters are required.
  /// The [loadingWidget] and [errorBuilder] parameters are optional
  /// and provide customization for loading and error states.
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

  /// Initiates a request to fetch widget data from the server.
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
          // Parse the protobuf data and convert to Flutter widget
          final SduiWidget sduiWidget = SduiParser.parseProto(snapshot.data!);
          return sduiWidget.toFlutterWidget();
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
