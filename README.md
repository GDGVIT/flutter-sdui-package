<p align="center">
<a href="https://dscvit.com">
	<img width="400" src="https://user-images.githubusercontent.com/56252312/159312411-58410727-3933-4224-b43e-4e9b627838a3.png#gh-light-mode-only" alt="GDSC VIT"/>
</a>
	<h2 align="center">Flutter SDUI Package</h2>
	<h4 align="center">A Flutter package for implementing Server-Driven UI with both JSON and gRPC support<h4>
</p>

---

[![Join Us](https://img.shields.io/badge/Join%20Us-Developer%20Student%20Clubs-red)](https://dsc.community.dev/vellore-institute-of-technology/)
[![Discord Chat](https://img.shields.io/discord/760928671698649098.svg)](https://discord.gg/498KVdSKWR)

[![DOCS](https://img.shields.io/badge/Documentation-see%20docs-green?style=flat-square&logo=appveyor)](docs/grpc_support.md)
[![UI ](https://img.shields.io/badge/Flutter-SDK-blue?style=flat-square&logo=flutter)](https://flutter.dev)

## Features

- [x] Render UI from server-provided definitions
- [x] Support for basic Flutter widgets (Text, Column, Row, Container, etc.)
- [x] JSON parsing for server responses
- [x] gRPC support for efficient communication
- [x] Protocol Buffers for type-safe data exchange
- [x] Easy-to-use client API

<br>

## Installation & Setup

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_sdui: ^0.0.1
  flutter: ^3.0.0
  protobuf: ^4.1.0
  grpc: ^4.0.4
```

Or use the Flutter CLI:

```bash
flutter pub add flutter_sdui
```

Then import the package in your Dart code:

```dart
import 'package:flutter_sdui/flutter_sdui.dart';
```

### Troubleshooting

#### Protocol Buffer Issues

If you encounter issues with the generated Protocol Buffer files:

1. Make sure you have the correct versions of protobuf and grpc packages
2. Install protoc locally and regenerate the files:

```powershell
# Run the setup script to install protoc
pwsh ./tool/setup_protoc.ps1

# Generate the Protobuf files
pwsh ./tool/generate_protos.ps1
```
## Usage

There are two ways to use this package:

1. **JSON-based approach**: For simpler implementations where you fetch UI definitions as JSON
2. **gRPC-based approach**: For more efficient, type-safe implementations using Protocol Buffers

### Using the gRPC Client

To use the gRPC client for fetching server-driven UI:

````dart
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
      home: const GrpcDemoScreen(),
    );
  }
}

class GrpcDemoScreen extends StatefulWidget {
  const GrpcDemoScreen({super.key});

  @override
  State<GrpcDemoScreen> createState() => _GrpcDemoScreenState();
}

class _GrpcDemoScreenState extends State<GrpcDemoScreen> {
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
                    DropdownMenuItem(value: 'settings', child: Text('Settings')),
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

## Server Implementation

### Setting Up a gRPC Server

To create a server that provides UI definitions via gRPC:

```dart
// Server implementation example
import 'package:grpc/grpc.dart';
import 'package:flutter_sdui/src/generated/sdui.pb.dart';
import 'package:flutter_sdui/src/generated/sdui.pbgrpc.dart';

Future<void> main() async {
  final server = Server.create(
    services: [
      SduiServiceImpl(),
    ],
  );

  final port = 50051;
  await server.serve(port: port);
  print('Server listening on port $port...');
  print('Press Ctrl+C to stop');
}

// Implementation of the SDUI service
class SduiServiceImpl extends SduiServiceBase {
  @override
  Future<SduiWidgetData> getSduiWidget(
      ServiceCall call, SduiRequest request) async {
    print('Received request for screen: ${request.screenId}');

    // Based on the requested screen, return different UI definitions
    switch (request.screenId) {
      case 'home':
        return _createHomeScreen();
      case 'profile':
        return _createProfileScreen();
      case 'settings':
        return _createSettingsScreen();
      default:
        // Default or error screen
        print('Warning: Unknown screen ID requested: ${request.screenId}');
        return _createErrorScreen();
    }
  }

  // Example screen definition
  SduiWidgetData _createHomeScreen() {
    final homeScreen = SduiWidgetData()
      ..type = WidgetType.SCAFFOLD
      ..appBar = (SduiWidgetData()
        ..type = WidgetType.CONTAINER
        ..boxDecoration = (BoxDecorationData()
          ..color = (ColorData()
            ..red = 25
            ..green = 118
            ..blue = 210
            ..alpha = 255))
        ..padding = (EdgeInsetsData()
          ..top = 8
          ..left = 16
          ..right = 16
          ..bottom = 8)
        ..child = (SduiWidgetData()
          ..type = WidgetType.TEXT
          ..stringAttributes['text'] = 'Home Screen'
          ..textStyle = (TextStyleData()
            ..fontSize = 20
            ..fontWeight = 'bold'
            ..color = (ColorData()
              ..red = 255
              ..green = 255
              ..blue = 255
              ..alpha = 255))))
      ..body = (SduiWidgetData()
        ..type = WidgetType.COLUMN
        ..children.addAll([
          SduiWidgetData()
            ..type = WidgetType.CONTAINER
            ..padding = (EdgeInsetsData()..all = 16)
            ..child = (SduiWidgetData()
              ..type = WidgetType.TEXT
              ..stringAttributes['text'] = 'Welcome to Server-Driven UI!'
              ..textStyle = (TextStyleData()
                ..fontSize = 22
                ..fontWeight = 'bold')),
          SduiWidgetData()
            ..type = WidgetType.TEXT
            ..stringAttributes['text'] = 'This UI is rendered from gRPC data'
        ]));

    return homeScreen;
  }

  // Implement other screen methods similarly...
}
````

### Testing the gRPC Connection

You can test the connection using a simple command-line client:

```dart
// Simple client for testing gRPC connection
import 'dart:io';
import 'package:flutter_sdui/src/service/sdui_grpc_client.dart';

Future<void> main(List<String> args) async {
  final screenId = args.isNotEmpty ? args[0] : 'home';

  print('Testing gRPC SDUI client...');
  print('Connecting to server at localhost:50051');
  print('Requesting screen: $screenId');

  final client = SduiGrpcClient(
    host: 'localhost',
    port: 50051,
  );

  try {
    print('Sending request...');
    final widget = await client.getWidget(screenId);
    print('Response received!');
    print('Widget type: ${widget.type}');

    if (widget.hasAppBar()) {
      print('Has app bar: yes');
    }

    if (widget.hasBody()) {
      print('Has body: yes');
    }

    print('Success!');
  } catch (e) {
    print('Error: $e');
  } finally {
    await client.dispose();
  }

  print('Test completed');
  exit(0);
}
```

## Advanced Usage

### Protobuf Definitions

The package uses Protocol Buffers to define the data structures for gRPC communication. The main message types are:

```protobuf
// Generic Widget message
message SduiWidgetData {
  WidgetType type = 1;
  map<string, string> string_attributes = 2; // For simple string attributes like text content, image src
  map<string, double> double_attributes = 3; // For numerical attributes like width, height, flex
  map<string, bool> bool_attributes = 4;     // For boolean attributes
  map<string, int32> int_attributes = 5;     // For integer attributes like flex

  // Complex nested attributes
  TextStyleData text_style = 6;
  EdgeInsetsData padding = 7;
  EdgeInsetsData margin = 8;
  ColorData color = 9;
  IconDataMessage icon = 10;
  BoxDecorationData box_decoration = 11;

  // Children widgets
  repeated SduiWidgetData children = 12;
  SduiWidgetData child = 13; // For widgets that take a single child

  // Scaffold specific parts
  SduiWidgetData app_bar = 14;
  SduiWidgetData body = 15;
  SduiWidgetData floating_action_button = 16;
  ColorData background_color = 17;
}

// Service definition
service SduiService {
  rpc GetSduiWidget (SduiRequest) returns (SduiWidgetData);
}

message SduiRequest {
  string screen_id = 1; // Identifier for which UI to fetch
}
```

### Custom Widget Support

The package supports various Flutter widgets out of the box, but you can also extend it to support custom widgets by:

1. Adding new widget types to the `WidgetType` enum in the proto file
2. Extending the `SduiProtoParser` class to handle the new widget type

```dart
// Extend the parser to support custom widgets
class MySduiProtoParser extends SduiProtoParser {
  @override
  SduiWidget parseProto(SduiWidgetData data) {
    if (data.type == WidgetType.MY_CUSTOM_WIDGET) {
      // Parse custom widget from proto data
      return MyCustomSduiWidget(
        // Extract attributes from data
      );
    }

    // Fall back to parent implementation for standard widgets
    return super.parseProto(data);
  }
}
```

### Regenerating Proto Files

If you modify the proto definitions, you need to regenerate the Dart files:

1. Install the Protocol Buffer compiler (protoc)
2. Run the generator script:

```bash
cd your_package_directory
pwsh ./tool/generate_protos.ps1
```

## Contributors

<table>
	<tr align="center">
		<td>
		Jothish Kamal
		<p align="center">
			<img src = "https://avatars.githubusercontent.com/u/74227363?v=4" width="150" height="150" alt="Jothish Kamal">
		</p>
			<p align="center">
				<a href = "https://github.com/JothishKamal">
					<img src = "http://www.iconninja.com/files/241/825/211/round-collaboration-social-github-code-circle-network-icon.svg" width="36" height = "36" alt="GitHub"/>
				</a>
				<a href = "https://www.linkedin.com/in/jothishkamal">
					<img src = "http://www.iconninja.com/files/863/607/751/network-linkedin-social-connection-circular-circle-media-icon.svg" width="36" height="36" alt="LinkedIn"/>
				</a>
			</p>
		</td>
	</tr>
</table>

<p align="center">
	Made with ❤ by <a href="https://dscvit.com">GDSC-VIT</a>
</p>
