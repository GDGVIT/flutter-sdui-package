<p align="center">
<a href="https://dscvit.com">
	<img width="400" src="https://user-images.githubusercontent.com/56252312/159312411-58410727-3933-4224-b43e-4e9b627838a3.png#gh-light-mode-only" alt="GDSC VIT"/>
</a>
	<h2 align="center">Flutter Glimpse</h2>
	<h4 align="center">A powerful Flutter package for implementing Server-Driven UI (SDUI) with both JSON and gRPC support.<h4>
</p>

[![Join Us](https://img.shields.io/badge/Join%20Us-Developer%20Student%20Clubs-red)](https://dsc.community.dev/vellore-institute-of-technology/)
[![Discord Chat](https://img.shields.io/discord/760928671698649098.svg)](https://discord.gg/498KVdSKWR)
[![DOCS](https://img.shields.io/badge/Documentation-see%20docs-green?style=flat-square&logo=appveyor)](docs/grpc_support.md)
[![UI ](https://img.shields.io/badge/Flutter-SDK-blue?style=flat-square&logo=flutter)](https://flutter.dev)


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
  flutter_glimpse: ^0.0.1
```

```yaml
# For devs
dependencies:
  flutter_glimpse:
    path: path/to/flutter_glimpse
```

Or use the Flutter CLI:

```bash
flutter pub add flutter_glimpse
```

Import the package in your Dart code:

```dart
import 'package:flutter_glimpse/flutter_glimpse.dart';
```

## Basic Usage

This package provides two approaches for implementing server-driven UI:

### 1. Using gRPC (Recommended)

For efficient, type-safe server communication:

```dart
// Create a gRPC client
final client = GlimpseGrpcClient(
  host: 'your-server.com',
  port: 50051,
);

// Use the GlimpseGrpcRenderer widget
GlimpseGrpcRenderer(
  client: client,
  screenId: 'home_screen',
  loadingWidget: CircularProgressIndicator(),
  errorBuilder: (context, error) => Text('Error: $error'),
)
```

### 2. Using JSON

For simpler implementation with standard HTTP requests:

```dart
// Parse Glimpse JSON to widget
dynamic json = ...; // Load your JSON
final glimpseWidget = GlimpseParser.parseJSON(json);
final flutterWidget = glimpseWidget.toFlutterWidget();
```

You can also serialize Glimpse widgets back to JSON:

```dart
final json = GlimpseParser.toJson(glimpseWidget);
```

And convert Flutter widgets to Glimpse (for supported types):

```dart
import 'package:flutter_glimpse/src/flutter_to_glimpse.dart';
final glimpseWidget = flutterToGlimpse(myFlutterWidget);
```

## Widget Coverage & Extensibility

- All core layout and display widgets are supported: `Column`, `Row`, `Text`, `Image`, `SizedBox`, `Container`, `Scaffold`, `Spacer`, `Icon`.
- Adding new widgets is straightforward: implement the Glimpse widget, add proto/JSON parsing, and update the toJson and Flutter conversion logic.
- The codebase is up-to-date, with no remaining TODOs.

## Example

Here's a complete example of using the gRPC renderer:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_glimpse/flutter_glimpse.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glimpse Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const GlimpseDemo(),
    );
  }
}

class GlimpseDemo extends StatefulWidget {
  const GlimpseDemo({super.key});

  @override
  State<GlimpseDemo> createState() => _GlimpseDemoState();
}

class _GlimpseDemoState extends State<GlimpseDemo> {
  late GlimpseGrpcClient _grpcClient;
  String _screenId = 'home';

  @override
  void initState() {
    super.initState();
    _grpcClient = GlimpseGrpcClient(
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
      body: GlimpseGrpcRenderer(
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
import 'package:flutter_glimpse/src/generated/glimpse.pb.dart';
import 'package:flutter_glimpse/src/generated/glimpse.pbgrpc.dart';

Future<void> main() async {
  final server = Server.create(
    services: [
      GlimpseServiceImpl(),
    ],
  );

  await server.serve(port: 50051);
  print('Server listening on port 50051...');
}

class GlimpseServiceImpl extends GlimpseServiceBase {
  @override
  Future<GlimpseWidgetData> getGlimpseWidget(
      ServiceCall call, GlimpseRequest request) async {
    // Return different UI based on the screenId
    switch (request.screenId) {
      case 'home':
        return _createHomeScreen();
      default:
        return _createErrorScreen();
    }
  }

  GlimpseWidgetData _createHomeScreen() {
    return GlimpseWidgetData()
      ..type = WidgetType.SCAFFOLD
      ..body = (GlimpseWidgetData()
        ..type = WidgetType.COLUMN
        ..children.addAll([
          GlimpseWidgetData()
            ..type = WidgetType.CONTAINER
            ..padding = (EdgeInsetsData()..all = 16)
            ..child = (GlimpseWidgetData()
              ..type = WidgetType.TEXT
              ..stringAttributes['text'] = 'Welcome to Server-Driven UI!'
              ..textStyle = (TextStyleData()
                ..fontSize = 22
                ..fontWeight = 'bold')),
          GlimpseWidgetData()
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
message GlimpseWidgetData {
  WidgetType type = 1;
  map<string, string> string_attributes = 2;
  map<string, double> double_attributes = 3;
  map<string, bool> bool_attributes = 4;

  // Complex nested attributes
  TextStyleData text_style = 6;
  EdgeInsetsData padding = 7;

  // Children widgets
  repeated GlimpseWidgetData children = 12;
  GlimpseWidgetData child = 13;

  // Scaffold specific parts
  GlimpseWidgetData app_bar = 14;
  GlimpseWidgetData body = 15;
}

service GlimpseService {
  rpc GetGlimpseWidget (GlimpseRequest) returns (GlimpseWidgetData);
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

See [ADDING_WIDGET.md](./ADDING_WIDGET.md) for instructions on how to add a new widget to the Glimpse package.

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
    <td>
		Rujin Devkota
		<p align="center">
			<img src = "https://avatars.githubusercontent.com/u/71916379?v=4" width="150" height="150" alt="Rujin Devkota">
		</p>
			<p align="center">
				<a href = "https://github.com/rujin2003">
					<img src = "http://www.iconninja.com/files/241/825/211/round-collaboration-social-github-code-circle-network-icon.svg" width="36" height = "36" alt="GitHub"/>
				</a>
				<a href = "https://www.linkedin.com/in/rujin-devkota/">
					<img src = "http://www.iconninja.com/files/863/607/751/network-linkedin-social-connection-circular-circle-media-icon.svg" width="36" height="36" alt="LinkedIn"/>
				</a>
			</p>
		</td>
    <td>
		Adhavan K
		<p align="center">
			<img src = "https://avatars.githubusercontent.com/u/108629544?v=4" width="150" height="150" alt="Adhavan K">
		</p>
			<p align="center">
				<a href = "https://github.com/TBA5854">
					<img src = "http://www.iconninja.com/files/241/825/211/round-collaboration-social-github-code-circle-network-icon.svg" width="36" height = "36" alt="GitHub"/>
				</a>
				<a href = "https://www.linkedin.com/in/adhavan-k-503b8a28a/">
					<img src = "http://www.iconninja.com/files/863/607/751/network-linkedin-social-connection-circular-circle-media-icon.svg" width="36" height="36" alt="LinkedIn"/>
				</a>
			</p>
		</td>
	</tr>
</table>

<p align="center">
	Made with ❤ by <a href="https://dscvit.com">GDSC-VIT</a>
</p>
