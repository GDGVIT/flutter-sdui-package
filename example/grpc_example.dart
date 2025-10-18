import 'package:flutter/material.dart';
import 'package:flutter_glimpse/flutter_glimpse.dart';

/// Example application demonstrating Flutter Glimpse with gRPC.
///
/// This example shows how to:
/// * Connect to a gRPC server
/// * Fetch server-driven UI definitions
/// * Render dynamic UI content
/// * Handle different screen types
void main() {
  runApp(const MyApp());
}

/// Root application widget that sets up the Material theme and routing.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glimpse gRPC Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const GrpcRendererDemo(),
    );
  }
}

/// Demo widget that showcases the gRPC renderer functionality.
///
/// This widget demonstrates how to:
/// * Initialize a gRPC client connection
/// * Switch between different screen definitions
/// * Handle loading and error states
/// * Properly dispose of resources
class GrpcRendererDemo extends StatefulWidget {
  const GrpcRendererDemo({super.key});

  @override
  State<GrpcRendererDemo> createState() => _GrpcRendererDemoState();
}

class _GrpcRendererDemoState extends State<GrpcRendererDemo> {
  late GlimpseGrpcClient _grpcClient;
  String _screenId = 'home';

  @override
  void initState() {
    super.initState();
    // Initialize gRPC client with server connection details
    _grpcClient = GlimpseGrpcClient(
      host: 'localhost',
      port: 50051,
    );
  }

  @override
  void dispose() {
    // Clean up gRPC connection
    _grpcClient.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Glimpse gRPC Demo'),
      ),
      body: Column(
        children: [
          // Screen selection controls
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

          // Server-driven UI renderer
          Expanded(
            child: GlimpseGrpcRenderer(
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
