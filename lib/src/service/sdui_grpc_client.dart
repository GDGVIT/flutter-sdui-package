import 'package:grpc/grpc.dart';
import 'package:flutter_sdui/src/generated/sdui.pbgrpc.dart';

/// A client for the SDUI gRPC service.
class SduiGrpcClient {
  late final SduiServiceClient _client;
  late final ClientChannel _channel;

  /// Creates a new SDUI gRPC client.
  SduiGrpcClient({
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

    _client = SduiServiceClient(_channel);
  }

  /// Fetches a UI widget from the server.
  Future<SduiWidgetData> getWidget(String screenId) async {
    final request = SduiRequest()..screenId = screenId;
    return _client.getSduiWidget(request);
  }

  /// Closes the connection to the server.
  Future<void> dispose() async {
    await _channel.shutdown();
  }
}
