/// Example gRPC server implementation for Flutter Glimpse.
///
/// This is a standalone Dart server that provides server-driven UI definitions
/// through gRPC. It demonstrates how to:
/// * Set up a gRPC server with Glimpse service
/// * Handle different screen requests
/// * Create widget definitions using protobuf
/// * Return complex UI structures
///
/// To run this server:
/// ```bash
/// dart run example/grpc_server_example_dart.dart
/// ```
///
/// The server listens on port 50051 by default.
library;

import 'dart:developer';

import 'package:grpc/grpc.dart';
import 'package:flutter_glimpse/src/generated/glimpse.pbgrpc.dart';

/// Entry point for the gRPC server.
///
/// Initializes the server with the Glimpse service implementation
/// and starts listening for client connections.
Future<void> main() async {
  final server = Server.create(
    services: [
      GlimpseServiceImpl(),
    ],
  );

  const port = 50051;
  await server.serve(port: port);
  log('Server listening on port $port...');
  log('Press Ctrl+C to stop');
}

/// Implementation of the Glimpse gRPC service.
///
/// This class handles incoming requests for UI definitions and returns
/// appropriate widget data based on the requested screen ID.
class GlimpseServiceImpl extends GlimpseServiceBase {
  @override
  Future<GlimpseWidgetData> getGlimpseWidget(
      ServiceCall call, GlimpseRequest request) async {
    log('Received request for screen: ${request.screenId}');

    switch (request.screenId) {
      case 'home':
        return _createHomeScreen();
      case 'profile':
        return _createProfileScreen();
      case 'settings':
        return _createSettingsScreen();
      default:
        log('Warning: Unknown screen ID requested: ${request.screenId}');
        return _createErrorScreen();
    }
  }

  /// Creates the home screen UI definition.
  ///
  /// Returns a scaffold with an app bar and a column of welcome content.
  GlimpseWidgetData _createHomeScreen() {
    final homeScreen = GlimpseWidgetData()
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
            ..type = WidgetType.CONTAINER
            ..padding = (EdgeInsetsData()
              ..left = 16
              ..right = 16
              ..bottom = 16)
            ..child = (GlimpseWidgetData()
              ..type = WidgetType.TEXT
              ..stringAttributes['text'] =
                  'This UI is rendered from data sent by the server via gRPC.'),
          GlimpseWidgetData()
            ..type = WidgetType.CONTAINER
            ..padding = (EdgeInsetsData()..all = 16)
            ..margin = (EdgeInsetsData()
              ..left = 16
              ..right = 16)
            ..boxDecoration = (BoxDecorationData()
              ..color = (ColorData()
                ..red = 240
                ..green = 240
                ..blue = 240
                ..alpha = 255))
            ..child = (GlimpseWidgetData()
              ..type = WidgetType.ROW
              ..children.addAll([
                GlimpseWidgetData()
                  ..type = WidgetType.ICON
                  ..icon = (IconDataMessage()
                    ..name = 'home'
                    ..color = (ColorData()
                      ..red = 25
                      ..green = 118
                      ..blue = 210
                      ..alpha = 255)
                    ..size = 24),
                GlimpseWidgetData()
                  ..type = WidgetType.SIZED_BOX
                  ..doubleAttributes['width'] = 16,
                GlimpseWidgetData()
                  ..type = WidgetType.TEXT
                  ..stringAttributes['text'] =
                      'Select a screen from the dropdown.'
              ]))
        ]));

    return homeScreen;
  }

  GlimpseWidgetData _createProfileScreen() {
    final profileScreen = GlimpseWidgetData()
      ..type = WidgetType.SCAFFOLD
      ..appBar = (GlimpseWidgetData()
        ..type = WidgetType.CONTAINER
        ..boxDecoration = (BoxDecorationData()
          ..color = (ColorData()
            ..red = 76
            ..green = 175
            ..blue = 80
            ..alpha = 255))
        ..padding = (EdgeInsetsData()
          ..top = 8
          ..left = 16
          ..right = 16
          ..bottom = 8)
        ..child = (GlimpseWidgetData()
          ..type = WidgetType.TEXT
          ..stringAttributes['text'] = 'Profile Screen'
          ..textStyle = (TextStyleData()
            ..fontSize = 20
            ..fontWeight = 'bold'
            ..color = (ColorData()
              ..red = 255
              ..green = 255
              ..blue = 255
              ..alpha = 255))))
      ..body = (GlimpseWidgetData()
        ..type = WidgetType.COLUMN
        ..children.addAll([
          GlimpseWidgetData()
            ..type = WidgetType.CONTAINER
            ..padding = (EdgeInsetsData()..all = 16)
            ..child = (GlimpseWidgetData()
              ..type = WidgetType.TEXT
              ..stringAttributes['text'] = 'User Profile'
              ..textStyle = (TextStyleData()
                ..fontSize = 22
                ..fontWeight = 'bold')),
          GlimpseWidgetData()
            ..type = WidgetType.CONTAINER
            ..padding = (EdgeInsetsData()
              ..left = 16
              ..right = 16
              ..bottom = 24)
            ..child = (GlimpseWidgetData()
              ..type = WidgetType.TEXT
              ..stringAttributes['text'] =
                  'This is a sample profile page rendered from gRPC data.'),
        ]));

    return profileScreen;
  }

  GlimpseWidgetData _createSettingsScreen() {
    final settingsScreen = GlimpseWidgetData()
      ..type = WidgetType.SCAFFOLD
      ..appBar = (GlimpseWidgetData()
        ..type = WidgetType.CONTAINER
        ..boxDecoration = (BoxDecorationData()
          ..color = (ColorData()
            ..red = 121
            ..green = 85
            ..blue = 72
            ..alpha = 255))
        ..padding = (EdgeInsetsData()
          ..top = 8
          ..left = 16
          ..right = 16
          ..bottom = 8)
        ..child = (GlimpseWidgetData()
          ..type = WidgetType.TEXT
          ..stringAttributes['text'] = 'Settings Screen'
          ..textStyle = (TextStyleData()
            ..fontSize = 20
            ..fontWeight = 'bold'
            ..color = (ColorData()
              ..red = 255
              ..green = 255
              ..blue = 255
              ..alpha = 255))))
      ..body = (GlimpseWidgetData()
        ..type = WidgetType.COLUMN
        ..children.addAll([
          GlimpseWidgetData()
            ..type = WidgetType.CONTAINER
            ..padding = (EdgeInsetsData()..all = 16)
            ..child = (GlimpseWidgetData()
              ..type = WidgetType.TEXT
              ..stringAttributes['text'] = 'App Settings'
              ..textStyle = (TextStyleData()
                ..fontSize = 22
                ..fontWeight = 'bold')),
          GlimpseWidgetData()
            ..type = WidgetType.CONTAINER
            ..padding = (EdgeInsetsData()
              ..left = 16
              ..right = 16
              ..bottom = 24)
            ..child = (GlimpseWidgetData()
              ..type = WidgetType.TEXT
              ..stringAttributes['text'] =
                  'This is a sample settings page from the gRPC server.'),
        ]));

    return settingsScreen;
  }

  GlimpseWidgetData _createErrorScreen() {
    final errorScreen = GlimpseWidgetData()
      ..type = WidgetType.SCAFFOLD
      ..appBar = (GlimpseWidgetData()
        ..type = WidgetType.CONTAINER
        ..boxDecoration = (BoxDecorationData()
          ..color = (ColorData()
            ..red = 211
            ..green = 47
            ..blue = 47
            ..alpha = 255))
        ..padding = (EdgeInsetsData()
          ..top = 8
          ..left = 16
          ..right = 16
          ..bottom = 8)
        ..child = (GlimpseWidgetData()
          ..type = WidgetType.TEXT
          ..stringAttributes['text'] = 'Error'
          ..textStyle = (TextStyleData()
            ..fontSize = 20
            ..fontWeight = 'bold'
            ..color = (ColorData()
              ..red = 255
              ..green = 255
              ..blue = 255
              ..alpha = 255))))
      ..body = (GlimpseWidgetData()
        ..type = WidgetType.COLUMN
        ..children.addAll([
          GlimpseWidgetData()
            ..type = WidgetType.CONTAINER
            ..padding = (EdgeInsetsData()..all = 16)
            ..child = (GlimpseWidgetData()
              ..type = WidgetType.TEXT
              ..stringAttributes['text'] = 'Screen Not Found'
              ..textStyle = (TextStyleData()
                ..fontSize = 24
                ..fontWeight = 'bold'
                ..color = (ColorData()
                  ..red = 211
                  ..green = 47
                  ..blue = 47
                  ..alpha = 255))),
          GlimpseWidgetData()
            ..type = WidgetType.CONTAINER
            ..padding = (EdgeInsetsData()
              ..left = 16
              ..right = 16)
            ..child = (GlimpseWidgetData()
              ..type = WidgetType.TEXT
              ..stringAttributes['text'] =
                  'The requested screen could not be found. Try a different screen ID.'),
        ]));

    return errorScreen;
  }
}
