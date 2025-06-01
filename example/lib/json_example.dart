import 'package:flutter/material.dart';
import 'package:flutter_sdui/src/parser/sdui_json_parser.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JsonExample extends StatelessWidget {
  const JsonExample({super.key});

  @override
  Widget build(BuildContext context) {
    // Example JSON data for a simple profile card
    final jsonData = {
      'type': 'CONTAINER',
      'margin': {
        'left': 16.0,
        'top': 16.0,
        'right': 16.0,
        'bottom': 16.0
      },
      'decoration': {
        'color': '#FFFFFF',
        'borderRadius': {
          'radius': 12.0
        },
        'boxShadow': [
          {
            'color': '#000000',
            'offsetX': 0.0,
            'offsetY': 2.0,
            'blurRadius': 4.0,
            'spreadRadius': 0.0
          }
        ]
      },
      'child': {
        'type': 'COLUMN',
        'crossAxisAlignment': 'START',
        'children': [
          {
            'type': 'IMAGE',
            'src': 'https://picsum.photos/200',
            'width': 200.0,
            'height': 200.0,
            'fit': 'COVER',
            'alignment': 'CENTER'
          },
          {
            'type': 'CONTAINER',
            'padding': {
              'left': 16.0,
              'top': 16.0,
              'right': 16.0,
              'bottom': 16.0
            },
            'child': {
              'type': 'COLUMN',
              'crossAxisAlignment': 'START',
              'children': [
                {
                  'type': 'TEXT',
                  'text': 'John Doe',
                  'style': {
                    'color': '#000000',
                    'fontSize': 24.0,
                    'fontWeight': 'BOLD'
                  }
                },
                {
                  'type': 'SIZED_BOX',
                  'height': 8.0
                },
                {
                  'type': 'TEXT',
                  'text': 'Software Developer',
                  'style': {
                    'color': '#666666',
                    'fontSize': 16.0
                  }
                },
                {
                  'type': 'SIZED_BOX',
                  'height': 16.0
                },
                {
                  'type': 'ROW',
                  'mainAxisAlignment': 'SPACE_BETWEEN',
                  'children': [
                    {
                      'type': 'ICON',
                      'icon': {
                        'codePoint': 0xe0b0,
                        'fontFamily': 'MaterialIcons'
                      },
                      'color': '#2196F3',
                      'size': 24.0
                    },
                    {
                      'type': 'ICON',
                      'icon': {
                        'codePoint': 0xe0c8,
                        'fontFamily': 'MaterialIcons'
                      },
                      'color': '#2196F3',
                      'size': 24.0
                    },
                    {
                      'type': 'ICON',
                      'icon': {
                        'codePoint': 0xe0d2,
                        'fontFamily': 'MaterialIcons'
                      },
                      'color': '#2196F3',
                      'size': 24.0
                    }
                  ]
                }
              ]
            }
          }
        ]
      }
    };

    // Parse the JSON data into a widget
    final widget = SduiJsonParser.parse(jsonData);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: widget.toFlutterWidget(),
        ),
      ),
    );
  }
}

// Example of making a JSON request to your backend
Future<Map<String, dynamic>> fetchSduiJson() async {
  final response = await http.get(Uri.parse('your-api-endpoint'));
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load SDUI JSON');
  }
}

class MySduiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: fetchSduiJson(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        
        if (!snapshot.hasData) {
          return const Text('No data available');
        }
        
        // Parse the JSON data into a widget
        final widget = SduiJsonParser.parse(snapshot.data!);
        
        return Scaffold(
          body: widget.toFlutterWidget(),
        );
      },
    );
  }
} 