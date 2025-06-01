# Comprehensive Guide to Creating Screens with Flutter SDUI and gRPC

## Overview

This guide explains how to create dynamic UI screens for Flutter applications using Server-Driven UI (SDUI) with gRPC. The SDUI approach allows you to define your user interface on the server and deliver it to the client app, enabling dynamic updates without requiring app releases.

## Setup Requirements

1. **Flutter application** with the `flutter_sdui` package
2. **gRPC server** (can be implemented in any language that supports gRPC)
3. **Proto definitions** from the SDUI package

## Creating a gRPC Server

### 1. Set Up Server Environment

Example in Dart:
```dart
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
}
```

### 2. Implement the SDUI Service

Create a class that implements the SDUI service from the protobuf definitions:

```dart
class SduiServiceImpl extends SduiServiceBase {
  @override
  Future<SduiWidgetData> getSduiWidget(
      ServiceCall call, SduiRequest request) async {
    // Return different UI based on the requested screen ID
    switch (request.screenId) {
      case 'home':
        return _createHomeScreen();
      case 'profile':
        return _createProfileScreen();
      // Add more screens as needed
      default:
        return _createErrorScreen();
    }
  }
}

```

## Creating Screens

### Basic Structure of a Screen

Each screen is built as a tree of `SduiWidgetData` objects:

```dart
SduiWidgetData createScreen() {
  final screen = SduiWidgetData()
    ..type = WidgetType.SCAFFOLD
    ..appBar = (SduiWidgetData()
      ..type = WidgetType.CONTAINER
      // Define appBar properties
      ..child = (SduiWidgetData()
        ..type = WidgetType.TEXT
        ..stringAttributes['text'] = 'Screen Title'))
    ..body = (SduiWidgetData()
      ..type = WidgetType.COLUMN
      ..children.addAll([
        // Add child widgets here
      ]));
  
  return screen;
}
```

### Common Widget Types

#### Scaffold
The root container for a screen:
```dart
SduiWidgetData()
  ..type = WidgetType.SCAFFOLD
  ..backgroundColor = (ColorData()
    ..red = 255
    ..green = 255
    ..blue = 255
    ..alpha = 255)
  ..appBar = (SduiWidgetData()...)
  ..body = (SduiWidgetData()...)
```

#### Container
A box that can have decoration, padding, margin:
```dart
SduiWidgetData()
  ..type = WidgetType.CONTAINER
  ..padding = (EdgeInsetsData()..all = 16)
  ..margin = (EdgeInsetsData()
    ..top = 8
    ..left = 16
    ..right = 16)
  ..boxDecoration = (BoxDecorationData()
    ..color = (ColorData()
      ..red = 240
      ..green = 240
      ..blue = 240
      ..alpha = 255)
    ..borderRadius = (BorderRadiusData()..all = 8))
  ..child = (SduiWidgetData()...)
```

#### Text
Display text with styling:
```dart
SduiWidgetData()


  ..type = WidgetType.TEXT
  ..stringAttributes['text'] = 'Hello World'
  ..textStyle = (TextStyleData()
    ..fontSize = 16
    ..fontWeight = 'bold'
    ..color = (ColorData()
      ..red = 0
      ..green = 0
      ..blue = 0
      ..alpha = 255))
```

#### Column and Row
Layout widgets for vertical and horizontal arrangement:
```dart
SduiWidgetData()
  ..type = WidgetType.COLUMN  // or WidgetType.ROW
  ..mainAxisAlignment = MainAxisAlignmentProto.MAIN_AXIS_CENTER
  ..crossAxisAlignment = CrossAxisAlignmentProto.CROSS_AXIS_START
  ..children.addAll([
    // Child widgets
  ])
```

#### Image
Display network images:
```dart
SduiWidgetData()
  ..type = WidgetType.IMAGE
  ..stringAttributes['src'] = 'https://example.com/image.jpg'
  ..stringAttributes['fit'] = 'cover'
  ..doubleAttributes['width'] = 200
  ..doubleAttributes['height'] = 150
```

#### Icon
Display Material icons:
```dart
SduiWidgetData()
  ..type = WidgetType.ICON
  ..icon = (IconDataMessage()
    ..name = 'home'  // Material icon name
    ..color = (ColorData()
      ..red = 0
      ..green = 0
      ..blue = 0
      ..alpha = 255)
    ..size = 24)
```

### Advanced Styling

#### Gradients
```dart
..boxDecoration = (BoxDecorationData()
  ..gradient = (GradientData()
    ..type = GradientData_GradientType.LINEAR
    ..colors.addAll([
      ColorData()
        ..red = 25
        ..green = 118
        ..blue = 210
        ..alpha = 255,
      ColorData()
        ..red = 66
        ..green = 165
        ..blue = 245
        ..alpha = 255
    ])
    ..begin = (AlignmentData()
      ..predefined = AlignmentData_PredefinedAlignment.TOP_LEFT)
    ..end = (AlignmentData()
      ..predefined = AlignmentData_PredefinedAlignment.BOTTOM_RIGHT)))
```

#### Shadows
```dart
..boxDecoration = (BoxDecorationData()
  ..boxShadow.add(BoxShadowData()
    ..color = (ColorData()
      ..red = 0
      ..green = 0
      ..blue = 0
      ..alpha = 50)
    ..offsetX = 0
    ..offsetY = 2
    ..blurRadius = 4
    ..spreadRadius = 0))
```

#### Transforms
```dart
..transform = (TransformData()
  ..type = TransformData_TransformType.ROTATE
  ..rotationAngle = 0.05)  // In radians
```

## Example Screens

### Home Screen with Card Layout
```dart
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
        // Hero Image
        SduiWidgetData()
          ..type = WidgetType.CONTAINER
          ..doubleAttributes['height'] = 200
          ..child = (SduiWidgetData()
            ..type = WidgetType.IMAGE
            ..stringAttributes['src'] = 'https://picsum.photos/800/300'
            ..stringAttributes['fit'] = 'cover'),
            
        // Feature card
        SduiWidgetData()
          ..type = WidgetType.CONTAINER
          ..margin = (EdgeInsetsData()..all = 16)
          ..padding = (EdgeInsetsData()..all = 16)
          ..boxDecoration = (BoxDecorationData()
            ..borderRadius = (BorderRadiusData()..all = 8)
            ..color = (ColorData()
              ..red = 240
              ..green = 240
              ..blue = 240
              ..alpha = 255))
          ..child = (SduiWidgetData()
            ..type = WidgetType.COLUMN
            ..children.addAll([
              SduiWidgetData()
                ..type = WidgetType.TEXT
                ..stringAttributes['text'] = 'Feature Card'
                ..textStyle = (TextStyleData()
                  ..fontSize = 18
                  ..fontWeight = 'bold'),
              SduiWidgetData()
                ..type = WidgetType.SIZED_BOX
                ..doubleAttributes['height'] = 8,
              SduiWidgetData()
                ..type = WidgetType.TEXT
                ..stringAttributes['text'] = 'This is a description of the feature'
            ]))
      ]));

  return homeScreen;
}
```

### Profile Screen with Avatar
```dart
SduiWidgetData _createProfileScreen() {
  final profileScreen = SduiWidgetData()
    ..type = WidgetType.SCAFFOLD
    ..backgroundColor = (ColorData()
      ..red = 245
      ..green = 245
      ..blue = 245
      ..alpha = 255)
    ..body = (SduiWidgetData()
      ..type = WidgetType.COLUMN
      ..children.addAll([
        // Profile Header
        SduiWidgetData()
          ..type = WidgetType.CONTAINER
          ..color = (ColorData()
            ..red = 76
            ..green = 175
            ..blue = 80
            ..alpha = 255)
          ..padding = (EdgeInsetsData()
            ..top = 40
            ..bottom = 20)
          ..child = (SduiWidgetData()
            ..type = WidgetType.COLUMN
            ..mainAxisAlignment = MainAxisAlignmentProto.MAIN_AXIS_CENTER
            ..crossAxisAlignment = CrossAxisAlignmentProto.CROSS_AXIS_CENTER
            ..children.addAll([
              // Avatar
              SduiWidgetData()
                ..type = WidgetType.CONTAINER
                ..doubleAttributes['width'] = 100
                ..doubleAttributes['height'] = 100
                ..boxDecoration = (BoxDecorationData()
                  ..shape = BoxShapeProto.CIRCLE
                  ..border = (BorderData()
                    ..all = (BorderSideData()
                      ..color = (ColorData()
                        ..red = 255
                        ..green = 255
                        ..blue = 255
                        ..alpha = 255)
                      ..width = 3
                      ..style = BorderStyleProto.SOLID)))
                ..child = (SduiWidgetData()
                  ..type = WidgetType.IMAGE
                  ..stringAttributes['src'] = 'https://randomuser.me/api/portraits/women/44.jpg'
                  ..stringAttributes['fit'] = 'cover'),
              
              // Name
              SduiWidgetData()
                ..type = WidgetType.SIZED_BOX
                ..doubleAttributes['height'] = 16,
              SduiWidgetData()
                ..type = WidgetType.TEXT
                ..stringAttributes['text'] = 'Sarah Johnson'
                ..textStyle = (TextStyleData()
                  ..fontSize = 24
                  ..fontWeight = 'bold'
                  ..color = (ColorData()
                    ..red = 255
                    ..green = 255
                    ..blue = 255
                    ..alpha = 255))
            ]))
      ]));

  return profileScreen;
}
```

## Best Practices

1. **Structure Your Code**
   - Create helper methods for repeated UI patterns
   - Break complex screens into logical sections

2. **Handle Errors Gracefully**
   - Always provide an error screen for unknown screen IDs
   - Include helpful information in error screens

3. **Optimize Network Usage**
   - Keep UI definitions concise
   - Consider caching common UI components

4. **Progressive Enhancement**
   - Start with simple layouts and add complexity gradually
   - Test on different device sizes

5. **Naming Conventions**
   - Use clear, consistent naming for screen IDs
   - Document the purpose of each screen

## Advanced Techniques

### Reusable Components

Create helper methods for commonly used components:

```dart
SduiWidgetData _createSettingItem(String title, String subtitle, String iconName) {
  return SduiWidgetData()
    ..type = WidgetType.CONTAINER
    ..padding = (EdgeInsetsData()
      ..all = 12)
    ..boxDecoration = (BoxDecorationData()
      ..borderRadius = (BorderRadiusData()..all = 8)
      ..color = (ColorData()
        ..red = 255
        ..green = 255
        ..blue = 255
        ..alpha = 255))
    ..child = (SduiWidgetData()
      ..type = WidgetType.ROW
      ..children.addAll([
        // Icon
        SduiWidgetData()
          ..type = WidgetType.ICON
          ..icon = (IconDataMessage()
            ..name = iconName),
        // Content
        SduiWidgetData()
          ..type = WidgetType.COLUMN
          ..children.addAll([
            SduiWidgetData()
              ..type = WidgetType.TEXT
              ..stringAttributes['text'] = title,
            SduiWidgetData()
              ..type = WidgetType.TEXT
              ..stringAttributes['text'] = subtitle
          ])
      ]));
}
```

### Responsive Design

Adjust layouts based on screen size:

```dart
// Check device width from client and adapt layout
if (deviceWidth > 600) {
  // Tablet layout with multi-column grid
  return createTabletLayout();
} else {
  // Phone layout with single column
  return createPhoneLayout();
}
```

## Troubleshooting

1. **Missing Properties**
   - Ensure all required properties are set for each widget type
   - Check for typos in property names

2. **Enum Value Issues**
   - Ensure you're using the correct enum values defined in the proto files
   - Watch for renamed enum values to avoid conflicts

3. **Nested Structure Problems**
   - Verify that all parentheses and brackets are properly closed
   - Maintain consistent indentation for readability

4. **Type Mismatches**
   - Double-check types for numeric values, especially when converting between int and double
   - Ensure string attributes are used for text content

By following this guide, you can create rich, dynamic UIs that are delivered from your server to Flutter clients via gRPC.