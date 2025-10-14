import 'package:flutter/widgets.dart';

/// Abstract base class for all Server-Driven UI widgets.
///
/// This class defines the contract that all SDUI widgets must implement.
/// Each SDUI widget can be converted to its corresponding Flutter widget
/// through the [toFlutterWidget] method.
///
/// All concrete SDUI widget implementations should extend this class and
/// provide their own implementation of [toFlutterWidget].
abstract class SduiWidget {
  /// Converts this SDUI widget to its corresponding Flutter widget.
  ///
  /// This method is responsible for mapping the SDUI widget's properties
  /// to the equivalent Flutter widget properties and returning a fully
  /// configured Flutter widget instance.
  ///
  /// Returns a [Widget] that can be rendered in the Flutter widget tree.
  Widget toFlutterWidget();
}
