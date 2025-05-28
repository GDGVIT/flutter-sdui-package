import 'package:flutter/material.dart';
import 'package:flutter_sdui/flutter_sdui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SDUI gRPC Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const GrpcRendererDemo(),
    );
  }
}

class GrpcRendererDemo extends StatefulWidget {
  const GrpcRendererDemo({super.key});

  @override
  State<GrpcRendererDemo> createState() => _GrpcRendererDemoState();
}

class _GrpcRendererDemoState extends State<GrpcRendererDemo> {
  late SduiGrpcClient _grpcClient;
  String _screenId = 'home';

  @override
  void initState() {
    super.initState();
    // Connect to your gRPC server
    _grpcClient = SduiGrpcClient(
      host: 'localhost', // Replace with your server address
      port: 50051, // Replace with your server port
    );
  }

  @override
  void dispose() {
    // Close the gRPC connection when done
    _grpcClient.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SDUI gRPC Demo'),
      ),
      body: Column(
        children: [
          // Screen selector
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text('Screen: '),
                const SizedBox(width: 8),
                DropdownButton<String>(
                  value: _screenId,
                  items: const [
                    DropdownMenuItem(value: 'home', child: Text('Home')),
                    DropdownMenuItem(value: 'profile', child: Text('Profile')),
                    DropdownMenuItem(
                        value: 'settings', child: Text('Settings')),
                  ],
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _screenId = value;
                      });
                    }
                  },
                ),
              ],
            ),
          ),

          // SDUI Renderer that fetches UI from gRPC server
          Expanded(
            child: SduiGrpcRenderer(
              client: _grpcClient,
              screenId: _screenId,
              loadingWidget: const Center(
                child: CircularProgressIndicator(),
              ),
              errorBuilder: (context, error) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error, color: Colors.red, size: 48),
                      const SizedBox(height: 16),
                      Text('Error: $error'),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () => setState(() {}),
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
