# Widgetx
Superpowers for your flutter widgets.

Collection of useful extensions on Flutter's Widget Kit.

# Installation

In your flutter project add `widgetx` as a dependency in `pubspec.yaml`:

```yml
dependencies:
  ...
  widgetx: ^0.1.0
    
```

# Example

```dart
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
```

# WIP
This package is just in pre-release and should be avoided for production apps.
Feel free to raise issues around concerns, improvements.

# Preview
A small preview of initial thought around what this package wants to solve:
![](https://raw.githubusercontent.com/ishaan1995/widgetx/master/art/carbon.png "Concept of Widget Extensions")
