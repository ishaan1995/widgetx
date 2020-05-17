import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:widgetx/widgetx.dart';

void main() {
  testWidgets('Find center widget', (WidgetTester tester) async {
    // Test code goes here.
    Key key = GlobalKey();
    Widget tree = MaterialApp(home: Text('I am a text').center(key: key));

    await tester.pumpWidget(tree);

    expect(find.byKey(key), findsWidgets);
  });

  testWidgets('Does not find center widget', (WidgetTester tester) async {
    // Test code goes here.
    Key key = GlobalKey();
    Widget tree = MaterialApp(home: Text('I am a text'));

    await tester.pumpWidget(tree);

    expect(find.byKey(key), findsNothing);
  });

  // testWidgets('does not find center widgtet', (WidgetTester tester) async {
  //   // Test code goes here.
  //   Widget tree = Text('I am a text');

  //   await tester.pumpWidget(tree);

  //   expect(find.byWidget(Center()), findsNothing);
  // });
}
