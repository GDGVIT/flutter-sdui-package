<p align="center">
<a href="https://dscvit.com">
	<img width="400" src="https://user-images.githubusercontent.com/56252312/159312411-58410727-3933-4224-b43e-4e9b627838a3.png#gh-light-mode-only" alt="GDSC VIT"/>
</a>
	<h2 align="center">Flutter SDUI Package</h2>
	<h4 align="center">A Flutter package for implementing Server-Driven UI with both JSON and gRPC support<h4>
</p>

[![Join Us](https://img.shields.io/badge/Join%20Us-Developer%20Student%20Clubs-red)](https://dsc.community.dev/vellore-institute-of-technology/)
[![Discord Chat](https://img.shields.io/discord/760928671698649098.svg)](https://discord.gg/498KVdSKWR)
[![DOCS](https://img.shields.io/badge/Documentation-see%20docs-green?style=flat-square&logo=appveyor)](docs/grpc_support.md)
[![UI ](https://img.shields.io/badge/Flutter-SDK-blue?style=flat-square&logo=flutter)](https://flutter.dev)

A powerful Flutter package for implementing Server-Driven UI (SDUI) with both JSON and gRPC support.

## What is SDUI?

Server-Driven UI is an architectural pattern where the UI layout and content definitions come from a backend server rather than being hardcoded in the client application. This approach enables:

- Dynamic UI updates without app store releases
- A/B testing and feature flagging at the UI level
- Consistent UI across platforms
- Faster iteration cycles for UI changes

## Features

- [x] Render UI dynamically from server-provided definitions
- [x] Support for essential Flutter widgets (Text, Column, Row, Container, etc.)
- [x] JSON parsing for server responses
- [x] gRPC support for efficient, type-safe communication
- [x] Protocol Buffers for structured data exchange
- [x] Easy-to-use client API
- [x] Customizable error handling and loading states

## Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_sdui: ^0.0.1
```

```yaml
# For devs
dependencies:
  flutter_sdui:
    path: path/to/flutter_sdui
```

Or use the Flutter CLI:

```bash
flutter pub add flutter_sdui
```

Import the package in your Dart code:

```dart
import 'package:flutter_sdui/flutter_sdui.dart';
```

## Basic Usage

This package provides two approaches for implementing server-driven UI:

### 1. Using gRPC (Recommended)

For efficient, type-safe server communication:

```dart
// Create a gRPC client
final client = SduiGrpcClient(
  host: 'your-server.com',
  port: 50051,
);

// Use the SduiGrpcRenderer widget
SduiGrpcRenderer(
  client: client,
  screenId: 'home_screen',
  loadingWidget: CircularProgressIndicator(),
  errorBuilder: (context, error) => Text('Error: $error'),
)
```

### 2. Using JSON

For simpler implementation with standard HTTP requests:

```dart
// Parse SDUI JSON to widget
dynamic json = ...; // Load your JSON
final sduiWidget = SduiParser.parseJSON(json);
final flutterWidget = sduiWidget.toFlutterWidget();
```

You can also serialize SDUI widgets back to JSON:

```dart
final json = SduiParser.toJson(sduiWidget);
```

And convert Flutter widgets to SDUI (for supported types):

```dart
import 'package:flutter_sdui/src/flutter_to_sdui.dart';
final sduiWidget = flutterToSdui(myFlutterWidget);
```

## Widget Coverage & Extensibility

- All core layout and display widgets are supported: `Column`, `Row`, `Text`, `Image`, `SizedBox`, `Container`, `Scaffold`, `Spacer`, `Icon`.
- Adding new widgets is straightforward: implement the SDUI widget, add proto/JSON parsing, and update the toJson and Flutter conversion logic.
- The codebase is up-to-date, with no remaining TODOs.

## Example

Here's a complete example of using the gRPC renderer:

```dart
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
      title: 'SDUI Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const SDUIDemo(),
    );
  }
}

class SDUIDemo extends StatefulWidget {
  const SDUIDemo({super.key});

  @override
  State<SDUIDemo> createState() => _SDUIDemoState();
}

class _SDUIDemoState extends State<SDUIDemo> {
  late SduiGrpcClient _grpcClient;
  String _screenId = 'home';

  @override
  void initState() {
    super.initState();
    _grpcClient = SduiGrpcClient(
      host: 'localhost',  // Replace with your server address
      port: 50051,        // Replace with your server port
    );
  }

  @override
  void dispose() {
    _grpcClient.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Server-Driven UI Demo'),
      ),
      body: SduiGrpcRenderer(
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
                Icon(Icons.error, color: Colors.red, size: 48),
                SizedBox(height: 16),
                Text('Error: $error'),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => setState(() {}),
                  child: Text('Retry'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
```

## Server Implementation

### Setting Up a gRPC Server

Here's a basic example of a Dart server that provides UI definitions via gRPC:

```dart
import 'package:grpc/grpc.dart';
import 'package:flutter_sdui/src/generated/sdui.pb.dart';
import 'package:flutter_sdui/src/generated/sdui.pbgrpc.dart';

Future<void> main() async {
  final server = Server.create(
    services: [
      SduiServiceImpl(),
    ],
  );

  await server.serve(port: 50051);
  print('Server listening on port 50051...');
}

class SduiServiceImpl extends SduiServiceBase {
  @override
  Future<SduiWidgetData> getSduiWidget(
      ServiceCall call, SduiRequest request) async {
    // Return different UI based on the screenId
    switch (request.screenId) {
      case 'home':
        return _createHomeScreen();
      default:
        return _createErrorScreen();
    }
  }

  SduiWidgetData _createHomeScreen() {
    return SduiWidgetData()
      ..type = WidgetType.SCAFFOLD
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
  }
}
```

## Supported Widgets

The package currently supports these Flutter widgets:

- `Scaffold`
- `Container`
- `Column`
- `Row`
- `Text`
- `Image`
- `SizedBox`
- `Spacer`
- `Icon`

## Advanced Usage

### Protobuf Definitions

The package uses Protocol Buffers to define the data structures for gRPC communication. Here's a simplified version of the main message types:

```protobuf
message SduiWidgetData {
  WidgetType type = 1;
  map<string, string> string_attributes = 2;
  map<string, double> double_attributes = 3;
  map<string, bool> bool_attributes = 4;

  // Complex nested attributes
  TextStyleData text_style = 6;
  EdgeInsetsData padding = 7;

  // Children widgets
  repeated SduiWidgetData children = 12;
  SduiWidgetData child = 13;

  // Scaffold specific parts
  SduiWidgetData app_bar = 14;
  SduiWidgetData body = 15;
}

service SduiService {
  rpc GetSduiWidget (SduiRequest) returns (SduiWidgetData);
}
```

### Working with Protocol Buffers

If you need to regenerate the Dart files from the proto definitions:

1. Install the Protocol Buffer compiler using the provided scripts:

```bash
# Windows
pwsh ./tool/setup_protoc.ps1

# Generate the Protobuf files
pwsh ./tool/generate_protos.ps1
```

## Roadmap

- [x] Basic widget support
- [x] gRPC implementation
- [x] JSON implementation
- [ ] Interactive widgets (buttons, forms)
- [ ] More advanced widget support

## Contributing

We welcome contributions! Please see our [contributing guidelines](contributing.md) for details.

## License

This project is licensed under the [LICENSE](LICENSE) file in the repository.

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
