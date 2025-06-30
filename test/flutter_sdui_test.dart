// import 'package:flutter_test/flutter_test.dart';

// import 'package:flutter_sdui/flutter_sdui.dart';

// void main() {
//   test('adds one to input values', () {
//     final calculator = Calculator();
//     expect(calculator.addOne(2), 3);
//     expect(calculator.addOne(-7), -6);
//     expect(calculator.addOne(0), 1);
//   });
// }
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_sdui/src/parser/sdui_proto_parser.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load the example JSON file
  final file = File('example/example.json');
  final jsonString = await file.readAsString();
  final Map<String, dynamic> jsonData = json.decode(jsonString);

  // Parse the JSON into an SDUI widget
  final sduiWidget = SduiParser.parseJSON(jsonData);

  // Convert to Flutter widget
  final widget = sduiWidget.toFlutterWidget();

  runApp(MaterialApp(
    home: widget,
  ));
}

