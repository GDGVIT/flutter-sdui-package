import 'package:flutter/widgets.dart';

/// Abstract base class for all Glimpse widgets.
///
/// This class defines the contract that all Glimpse widgets must implement.
/// Each Glimpse widget can be converted to its corresponding Flutter widget
/// through the [toFlutterWidget] method.
///
/// All concrete Glimpse widget implementations should extend this class and
/// provide their own implementation of [toFlutterWidget].
abstract class GlimpseWidget {
  /// Converts this Glimpse widget to its corresponding Flutter widget.
  ///
  /// This method is responsible for mapping the Glimpse widget's properties
  /// to the equivalent Flutter widget properties and returning a fully
  /// configured Flutter widget instance.
  ///
  /// Returns a [Widget] that can be rendered in the Flutter widget tree.
  Widget toFlutterWidget();
}
