import 'package:grpc/grpc.dart';
import 'package:flutter_glimpse/src/generated/glimpse.pbgrpc.dart';

/// A gRPC client for communicating with Glimpse servers.
///
/// This client handles the network communication between the Flutter app
/// and the server that provides the UI definitions. It manages the gRPC
/// connection lifecycle and provides methods to fetch widget data.
///
/// Example usage:
/// ```dart
/// final client = GlimpseGrpcClient(
///   host: 'your-server.com',
///   port: 50051,
///   secure: true,
/// );
///
/// final widgetData = await client.getWidget('home_screen');
/// ```
class GlimpseGrpcClient {
  late final GlimpseServiceClient _client;
  late final ClientChannel _channel;

  /// Creates a new Glimpse gRPC client.
  ///
  /// Parameters:
  /// * [host] - The hostname or IP address of the gRPC server
  /// * [port] - The port number the gRPC server is listening on
  /// * [secure] - Whether to use secure (TLS) connection. Defaults to false
  ///
  /// The client will establish a connection to the server immediately upon
  /// construction. Call [dispose] when the client is no longer needed to
  /// properly close the connection.
  GlimpseGrpcClient({
    required String host,
    required int port,
    bool secure = false,
  }) {
    _channel = ClientChannel(
      host,
      port: port,
      options: ChannelOptions(
        credentials: secure
            ? const ChannelCredentials.secure()
            : const ChannelCredentials.insecure(),
      ),
    );

    _client = GlimpseServiceClient(_channel);
  }

  /// Fetches widget data from the server for the specified screen.
  ///
  /// [screenId] is a server-defined identifier that specifies which
  /// UI definition to retrieve. The server should return a complete
  /// widget tree definition for the requested screen.
  ///
  /// Returns a [Future] that completes with the widget data, or throws
  /// a [GrpcError] if the request fails.
  Future<GlimpseWidgetData> getWidget(String screenId) async {
    final request = GlimpseRequest()..screenId = screenId;
    return _client.getGlimpseWidget(request);
  }

  /// Closes the connection to the server and releases all resources.
  ///
  /// This method should be called when the client is no longer needed
  /// to properly clean up the gRPC connection. After calling this method,
  /// the client should not be used for any further operations.
  Future<void> dispose() async {
    await _channel.shutdown();
  }
}
