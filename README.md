# WidgetX
[![widgetx](https://img.shields.io/pub/v/widgetx?label=widgetx)](https://pub.dev/packages/widgetx)

Superpowers for your flutter widgets.

Collection of useful extensions on Flutter's Widget Kit.

# Installation

In your flutter project add `widgetx` as a dependency in `pubspec.yaml`:

```yml
dependencies:
  ...
  widgetx: ^0.1.1
    
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

# Docs
Docs: https://ishaan1995.github.io/widgetx/
Widget library docs at: https://pub.dev/documentation/widgetx/latest/

## Available extensions

#### Alignment

`center()`, `centerLeft()`, `centerRight()`, `topLeft()`, `...`

#### Layouts
`row()`, `column()`, `stack()`, `container()`, `center()`, `padding()`, `...`

#### Texts
`text()`, `textCenter()`, `networkImage()`, `circleAvatar()`, `...`

#### Lists
`texts()`

# Todo
- [ ] Add Docs for each extensions and examples.
- [ ] Add tests to widget extensions.
- [ ] Add more relevant extensions.

# Status
This package at the moment is in pre-release and should be avoided for production apps.
Feel free to raise issues around concerns, improvements.

# Preview
A small preview of initial thought around what this package wants to solve:
![](https://raw.githubusercontent.com/ishaan1995/widgetx/master/art/carbon.png "Concept of Widget Extensions")
