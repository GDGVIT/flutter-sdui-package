import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_sdui/src/parser/sdui_json_parser.dart';
import 'package:flutter_sdui/src/widgets/sdui_column.dart';
import 'package:flutter_sdui/src/widgets/sdui_row.dart';
import 'package:flutter_sdui/src/widgets/sdui_text.dart';
import 'package:flutter_sdui/src/widgets/sdui_container.dart';
import 'package:flutter_sdui/src/widgets/sdui_image.dart';
import 'package:flutter_sdui/src/widgets/sdui_scaffold.dart';

void main() {
  group('SduiJsonParser Tests', () {
    test('Parse Column Widget', () {
      final jsonData = {
        'type': 'COLUMN',
        'mainAxisAlignment': 'CENTER',
        'crossAxisAlignment': 'START',
        'children': [
          {
            'type': 'TEXT',
            'text': 'Hello',
            'style': {
              'color': '#FF0000',
              'fontSize': 20.0,
            }
          },
          {
            'type': 'TEXT',
            'text': 'World',
            'style': {
              'color': '#0000FF',
              'fontSize': 16.0,
            }
          }
        ]
      };

      final widget = SduiJsonParser.parse(jsonData);
      expect(widget, isA<SduiColumn>());
      
      final column = widget as SduiColumn;
      expect(column.mainAxisAlignment, MainAxisAlignment.center);
      expect(column.crossAxisAlignment, CrossAxisAlignment.start);
      expect(column.children.length, 2);
      
      expect(column.children[0], isA<SduiText>());
      expect(column.children[1], isA<SduiText>());
      
      final text1 = column.children[0] as SduiText;
      final text2 = column.children[1] as SduiText;
      
      expect(text1.text, 'Hello');
      expect(text1.style?.color, const Color(0xFFFF0000));
      expect(text1.style?.fontSize, 20.0);
      
      expect(text2.text, 'World');
      expect(text2.style?.color, const Color(0xFF0000FF));
      expect(text2.style?.fontSize, 16.0);
    });

    test('Parse Row Widget', () {
      final jsonData = {
        'type': 'ROW',
        'mainAxisAlignment': 'SPACE_BETWEEN',
        'children': [
          {
            'type': 'TEXT',
            'text': 'Left',
          },
          {
            'type': 'TEXT',
            'text': 'Right',
          }
        ]
      };

      final widget = SduiJsonParser.parse(jsonData);
      expect(widget, isA<SduiRow>());
      
      final row = widget as SduiRow;
      expect(row.mainAxisAlignment, MainAxisAlignment.spaceBetween);
      expect(row.children.length, 2);
      
      expect(row.children[0], isA<SduiText>());
      expect(row.children[1], isA<SduiText>());
      
      final text1 = row.children[0] as SduiText;
      final text2 = row.children[1] as SduiText;
      
      expect(text1.text, 'Left');
      expect(text2.text, 'Right');
    });

    test('Parse Container Widget', () {
      final jsonData = {
        'type': 'CONTAINER',
        'width': 200.0,
        'height': 100.0,
        'color': '#FF00FF',
        'padding': {
          'left': 10.0,
          'top': 20.0,
          'right': 10.0,
          'bottom': 20.0
        },
        'decoration': {
          'borderRadius': {
            'radius': 8.0
          },
          'boxShadow': [
            {
              'color': '#000000',
              'offsetX': 2.0,
              'offsetY': 2.0,
              'blurRadius': 4.0
            }
          ]
        },
        'child': {
          'type': 'TEXT',
          'text': 'Container Text'
        }
      };

      final widget = SduiJsonParser.parse(jsonData);
      expect(widget, isA<SduiContainer>());
      
      final container = widget as SduiContainer;
      expect(container.width, 200.0);
      expect(container.height, 100.0);
      expect(container.color, const Color(0xFFFF00FF));
      
      final padding = container.padding as EdgeInsets;
      expect(padding.left, 10.0);
      expect(padding.top, 20.0);
      expect(padding.right, 10.0);
      expect(padding.bottom, 20.0);
      
      final decoration = container.decoration as BoxDecoration;
      expect(decoration.borderRadius, BorderRadius.circular(8.0));
      expect(decoration.boxShadow?.length, 1);
      
      final shadow = decoration.boxShadow![0];
      expect(shadow.color, const Color(0xFF000000));
      expect(shadow.offset.dx, 2.0);
      expect(shadow.offset.dy, 2.0);
      expect(shadow.blurRadius, 4.0);
      
      expect(container.child, isA<SduiText>());
      final text = container.child as SduiText;
      expect(text.text, 'Container Text');
    });

    test('Parse Image Widget', () {
      final jsonData = {
        'type': 'IMAGE',
        'src': 'https://example.com/image.jpg',
        'width': 300.0,
        'height': 200.0,
        'fit': 'COVER',
        'alignment': 'CENTER',
        'color': '#808080',
        'colorBlendMode': 'MULTIPLY'
      };

      final widget = SduiJsonParser.parse(jsonData);
      expect(widget, isA<SduiImage>());
      
      final image = widget as SduiImage;
      expect(image.src, 'https://example.com/image.jpg');
      expect(image.width, 300.0);
      expect(image.height, 200.0);
      expect(image.fit, BoxFit.cover);
      expect(image.alignment, Alignment.center);
      expect(image.color, const Color(0xFF808080));
      expect(image.colorBlendMode, BlendMode.multiply);
    });

    test('Parse Scaffold Widget', () {
      final jsonData = {
        'type': 'SCAFFOLD',
        'backgroundColor': '#FFFFFF',
        'appBar': {
          'type': 'CONTAINER',
          'height': 56.0,
          'color': '#2196F3',
          'child': {
            'type': 'TEXT',
            'text': 'App Bar',
            'style': {
              'color': '#FFFFFF',
              'fontSize': 20.0
            }
          }
        },
        'body': {
          'type': 'COLUMN',
          'children': [
            {
              'type': 'TEXT',
              'text': 'Body Content'
            }
          ]
        }
      };

      final widget = SduiJsonParser.parse(jsonData);
      expect(widget, isA<SduiScaffold>());
      
      final scaffold = widget as SduiScaffold;
      expect(scaffold.backgroundColor, const Color(0xFFFFFFFF));
      
      expect(scaffold.appBar, isA<SduiContainer>());
      final appBar = scaffold.appBar as SduiContainer;
      expect(appBar.height, 56.0);
      expect(appBar.color, const Color(0xFF2196F3));
      
      expect(appBar.child, isA<SduiText>());
      final appBarText = appBar.child as SduiText;
      expect(appBarText.text, 'App Bar');
      expect(appBarText.style?.color, const Color(0xFFFFFFFF));
      expect(appBarText.style?.fontSize, 20.0);
      
      expect(scaffold.body, isA<SduiColumn>());
      final body = scaffold.body as SduiColumn;
      expect(body.children.length, 1);
      
      expect(body.children[0], isA<SduiText>());
      final bodyText = body.children[0] as SduiText;
      expect(bodyText.text, 'Body Content');
    });

    test('Parse Invalid Widget Type', () {
      final jsonData = {
        'type': 'INVALID_TYPE',
        'text': 'This should not be parsed'
      };

      final widget = SduiJsonParser.parse(jsonData);
      expect(widget, isA<SduiContainer>());
    });
  });
} 