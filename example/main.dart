import 'package:widgetx/widgetx.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ['apple', 'oranges', 'grapes'].texts().column().container(),
    );
  }
}
