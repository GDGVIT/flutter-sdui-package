# Adding a New Widget to the Glimpse Package

This guide explains how to add support for a new widget to the Flutter Glimpse package, including JSON and proto (gRPC) support. The process ensures your widget can be described by the server, parsed on the client, and rendered as a real Flutter widget.

---

## 1. Create the Glimpse Widget Class

- **Where:** `lib/src/widgets/`
- **What:** Create a Dart class (e.g., `GlimpseMyWidget`) that extends `GlimpseWidget`.
- **Why:** This class acts as the runtime representation of your widget in the Glimpse system. It bridges the data-driven world (JSON/proto) and the actual Flutter widget tree.
- **How:**
  - Add all properties your widget needs (e.g., text, color, children).
  - Implement the `toFlutterWidget()` method to convert your Glimpse widget to a real Flutter widget.
  - If your widget has children, make sure to recursively call `toFlutterWidget()` on them.

**Example:**

```dart
import 'package:flutter/widgets.dart';
import 'glimpse_widget.dart';

class GlimpseMyWidget extends GlimpseWidget {
  final String title;
  final Color? color;
  final List<GlimpseWidget> children;
  // Add other properties as needed

  GlimpseMyWidget({
    required this.title,
    this.color,
    this.children = const [],
  });

  @override
  Widget toFlutterWidget() {
    return MyWidget(
      title: title,
      color: color,
      children: children.map((c) => c.toFlutterWidget()).toList(),
    );
  }
}
```

_Tip: Look at existing Glimpse widgets for structure and naming conventions. Try to keep your API as close as possible to the real Flutter widget for familiarity._

---

## 2. Update the Parser(s)

### a. JSON Parsing

- **Where:** `lib/src/parser/glimpse_proto_parser.dart`
- **What:** Add logic to parse your widget from JSON and serialize it back.
- **Why:** This allows the Glimpse system to construct your widget from server-provided JSON, and to serialize it back for debugging or round-tripping.
- **How:**
  - Add a case for your widget in the `parseJSON` method (e.g., `case 'my_widget': return _parseJsonMyWidget(data);`).
  - Implement a `_parseJsonMyWidget(Map<String, dynamic> data)` method to extract all properties from the JSON map and construct your Glimpse widget.
  - Update the `toJson` and `_toJsonMyWidget` methods to support serialization (convert your Glimpse widget back to a JSON map).
  - If your widget has enums or complex types, add helper methods for parsing/serializing them.

**Example:**

```dart
static GlimpseMyWidget _parseJsonMyWidget(Map<String, dynamic> data) {
  return GlimpseMyWidget(
    title: data['title'] ?? '',
    color: _parseJsonColor(data['color']),
    children: (data['children'] as List<dynamic>? ?? [])
      .map((child) => parseJSON(child as Map<String, dynamic>))
      .toList(),
  );
}
```

### b. Proto Parsing

- **Where:** `lib/src/parser/glimpse_proto_parser.dart`
- **What:** Add logic to parse your widget from proto and serialize it back.
- **Why:** This allows the Glimpse system to construct your widget from gRPC/proto data, and to serialize it back for server communication or round-tripping.
- **How:**
  - Add a case for your widget in the `parseProto` and `fromProto` methods.
  - Implement `_parseProtoMyWidget(GlimpseWidgetData data)` and `myWidgetFromProto` to extract all properties from the proto message and construct your Glimpse widget.
  - Add `myWidgetToProto` for proto serialization (convert your Glimpse widget to a proto message).
  - Use helper methods for enums, colors, and nested children as needed.

**Example:**

```dart
static GlimpseMyWidget myWidgetFromProto(GlimpseWidgetData data) {
  return GlimpseMyWidget(
    title: data.stringAttributes['title'] ?? '',
    color: data.hasColor() ? _parseProtoColor(data.color) : null,
    children: data.children.map((c) => GlimpseParser.parseProto(c)).toList(),
  );
}
```

_Tip: Use the helpers and patterns from other widgets to handle enums, colors, and nested children. Consistency makes the codebase easier to maintain._

---

## 3. Update the Widget Type Enum

- **Where:** `glimpse.proto` (your proto definitions)
- **What:** Add your widget to the `WidgetType` enum.
- **Why:** This allows the server and client to communicate about your new widget type in a type-safe way.
- **How:**
  - Add a new value (e.g., `MY_WIDGET`) to the `WidgetType` enum in your proto file.
  - Regenerate Dart code from your proto files (see README for instructions, usually a script in `tool/`).

**Example:**

```protobuf
enum WidgetType {
  // ... existing types ...
  MY_WIDGET = 42;
}
```

_Tip: Make sure the enum value is unique and does not conflict with existing types._

---

## 4. Add to Flutter-to-Glimpse Converter

- **Where:** `lib/src/parser/flutter_to_glimpse.dart`
- **What:** Add a case to convert a real Flutter widget to your Glimpse widget.
- **Why:** This enables tools and tests to convert existing Flutter code to Glimpse format, and helps with migration or round-trip testing.
- **How:**
  - Add an `else if` block for your widget type.
  - Map all relevant properties from the Flutter widget to your Glimpse widget.
  - If your widget is not supported for conversion, throw an `UnimplementedError` with a clear message.

**Example:**

```dart
else if (widget is MyWidget) {
  return GlimpseMyWidget(
    title: widget.title,
    color: widget.color,
    children: widget.children.map(flutterToGlimpse).toList(),
  );
}
```

---

## 5. Test

- **What:** Ensure your widget works end-to-end and is robust.
- **Why:** Testing catches bugs early and ensures your widget behaves as expected in all supported formats.
- **How:**
  - Add unit tests for JSON and proto parsing/serialization.
  - Add tests for Flutter-to-Glimpse conversion.
  - Create sample JSON and proto definitions for your widget and verify they render correctly in a demo app or test harness.
  - Test edge cases (missing properties, nulls, invalid values).

_Tip: Use the sample files and test cases for existing widgets as a template. Automated tests are preferred, but manual testing in a demo app is also valuable._

---

## 6. Document

- **What:** Make your widget discoverable and easy to use for others.
- **Why:** Good documentation helps others understand and use your widget, and encourages contributions.
- **How:**
  - Update the main `README.md` to mention your new widget and its supported properties.
  - Optionally, add usage examples or sample JSON/proto snippets.
  - Document any limitations or special behaviors.

---

## Example Checklist

- [ ] Widget class in `lib/src/widgets/`
- [ ] JSON parse/serialize in `glimpse_proto_parser.dart`
- [ ] Proto parse/serialize in `glimpse_proto_parser.dart`
- [ ] Enum in proto and regenerated Dart code
- [ ] Flutter-to-Glimpse conversion
- [ ] Tests and sample data
- [ ] Documentation

---

**Tips & Best Practices:**

- Follow the structure and naming conventions of existing widgets for consistency.
- Keep your widget’s API as close as possible to the real Flutter widget for familiarity.
- Only map properties that are supported by both Glimpse and the underlying Flutter widget.
- If your widget has complex properties (e.g., enums, nested objects), add helper methods for parsing/serialization.
- If you’re unsure, look at how similar widgets are implemented in the codebase.
- Use clear error messages for unsupported or unimplemented features.
- Test with both minimal and maximal property sets.

---

If you have questions, check the code for similar widgets or open an issue!
