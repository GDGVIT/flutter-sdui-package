// Server implementation example (Dart)
// Note: This is a standalone Dart server, not a Flutter application
// Run with: dart run example/grpc_server_example.dart
import 'package:grpc/grpc.dart';
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
    // Based on the requested screen, return different UI definitions
    print('Received request for screen: ${request.screenId}');
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

  // Sample screen definitions
  SduiWidgetData _createHomeScreen() {
    final homeScreen = SduiWidgetData()
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
            ..type = WidgetType.CONTAINER
            ..padding = (EdgeInsetsData()
              ..left = 16
              ..right = 16
              ..bottom = 16)
            ..child = (SduiWidgetData()
              ..type = WidgetType.TEXT
              ..stringAttributes['text'] =
                  'This UI is rendered from data sent by the server via gRPC.'),
          SduiWidgetData()
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
            ..child = (SduiWidgetData()
              ..type = WidgetType.ROW
              ..children.addAll([
                SduiWidgetData()
                  ..type = WidgetType.ICON
                  ..icon = (IconDataMessage()
                    ..name = 'home'
                    ..color = (ColorData()
                      ..red = 25
                      ..green = 118
                      ..blue = 210
                      ..alpha = 255)
                    ..size = 24),
                SduiWidgetData()
                  ..type = WidgetType.SIZED_BOX
                  ..doubleAttributes['width'] = 16,
                SduiWidgetData()
                  ..type = WidgetType.TEXT
                  ..stringAttributes['text'] =
                      'Select a screen from the dropdown.'
              ]))
        ]));

    return homeScreen;
  }

  SduiWidgetData _createProfileScreen() {
    final profileScreen = SduiWidgetData()
      ..type = WidgetType.SCAFFOLD
      ..appBar = (SduiWidgetData()
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
        ..child = (SduiWidgetData()
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
      ..body = (SduiWidgetData()
        ..type = WidgetType.COLUMN
        ..children.addAll([
          SduiWidgetData()
            ..type = WidgetType.CONTAINER
            ..padding = (EdgeInsetsData()..all = 16)
            ..child = (SduiWidgetData()
              ..type = WidgetType.TEXT
              ..stringAttributes['text'] = 'User Profile'
              ..textStyle = (TextStyleData()
                ..fontSize = 22
                ..fontWeight = 'bold')),
          SduiWidgetData()
            ..type = WidgetType.CONTAINER
            ..padding = (EdgeInsetsData()
              ..left = 16
              ..right = 16
              ..bottom = 24)
            ..child = (SduiWidgetData()
              ..type = WidgetType.TEXT
              ..stringAttributes['text'] =
                  'This is a sample profile page rendered from gRPC data.'),
        ]));

    return profileScreen;
  }

  SduiWidgetData _createSettingsScreen() {
    final settingsScreen = SduiWidgetData()
      ..type = WidgetType.SCAFFOLD
      ..appBar = (SduiWidgetData()
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
        ..child = (SduiWidgetData()
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
      ..body = (SduiWidgetData()
        ..type = WidgetType.COLUMN
        ..children.addAll([
          SduiWidgetData()
            ..type = WidgetType.CONTAINER
            ..padding = (EdgeInsetsData()..all = 16)
            ..child = (SduiWidgetData()
              ..type = WidgetType.TEXT
              ..stringAttributes['text'] = 'App Settings'
              ..textStyle = (TextStyleData()
                ..fontSize = 22
                ..fontWeight = 'bold')),
          SduiWidgetData()
            ..type = WidgetType.CONTAINER
            ..padding = (EdgeInsetsData()
              ..left = 16
              ..right = 16
              ..bottom = 24)
            ..child = (SduiWidgetData()
              ..type = WidgetType.TEXT
              ..stringAttributes['text'] =
                  'This is a sample settings page from the gRPC server.'),
        ]));

    return settingsScreen;
  }

  SduiWidgetData _createErrorScreen() {
    final errorScreen = SduiWidgetData()
      ..type = WidgetType.SCAFFOLD
      ..appBar = (SduiWidgetData()
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
        ..child = (SduiWidgetData()
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
      ..body = (SduiWidgetData()
        ..type = WidgetType.COLUMN
        ..children.addAll([
          SduiWidgetData()
            ..type = WidgetType.CONTAINER
            ..padding = (EdgeInsetsData()..all = 16)
            ..child = (SduiWidgetData()
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
          SduiWidgetData()
            ..type = WidgetType.CONTAINER
            ..padding = (EdgeInsetsData()
              ..left = 16
              ..right = 16)
            ..child = (SduiWidgetData()
              ..type = WidgetType.TEXT
              ..stringAttributes['text'] =
                  'The requested screen could not be found. Try a different screen ID.'),
        ]));

    return errorScreen;
  }
}
