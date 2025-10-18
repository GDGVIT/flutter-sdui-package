import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_glimpse/src/parser/glimpse_proto_parser.dart';

/// Main test entry point for Flutter Glimpse package.
///
/// This test demonstrates JSON parsing functionality by loading an example
/// JSON file, parsing it into Glimpse widgets, and rendering as Flutter widgets.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  group('Flutter Glimpse Tests', () {
    test('JSON parsing and widget conversion', () async {
      final file = File('example/example.json');
      final jsonString = await file.readAsString();
      final Map<String, dynamic> jsonData = json.decode(jsonString);

      final sduiWidget = GlimpseParser.parseJSON(jsonData);
      final widget = sduiWidget.toFlutterWidget();

      expect(widget, isA<Widget>());
      expect(sduiWidget, isNotNull);
    });

    test('Glimpse parser handles empty JSON', () {
      final emptyJson = <String, dynamic>{};

      expect(
          () => GlimpseParser.parseJSON(emptyJson), throwsA(isA<Exception>()));
    });
  });
}
