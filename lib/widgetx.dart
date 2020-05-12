library widgetx;

import 'package:flutter/material.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

//// Singleton class of WidgetXHelper
/// To enable / disable extension, provide global overrides
class WidgetXHelper {

  //// Default margin presets if any
  ///
  EdgeInsets defaultMargin() {
    return EdgeInsets.all(16.0);
  }
}

WidgetXHelper helperx = WidgetXHelper();

//// WidgetX extensions to power our flutter widgets
/// Highly experimental. API not stable yet.
extension WidgetX on Widget {
  Widget container(EdgeInsets margin) {
    return Container(child: this, margin: margin ?? helperx.defaultMargin());
  }
  
  Widget scaffold() {
    return Scaffold(body: this);
  }
  
  Widget center() {
    return Center(child: this);
  }
}
