import 'package:flutter/widgets.dart';

//// Singleton class of WidgetXHelper
/// To enable / disable extension, provide global overrides
class WidgetXHelper {

  //// Default margin presets if any
  EdgeInsets defaultMargin() {
    return EdgeInsets.all(16.0);
  }
}

WidgetXHelper helperx = WidgetXHelper();