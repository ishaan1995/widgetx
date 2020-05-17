import 'package:flutter/material.dart';
import 'widgetx_helper.dart' show helperx;

/// WidgetX extensions to power our flutter widgets
/// Highly experimental. API not stable yet.
extension WidgetX on Widget {
  Widget container({Key key, EdgeInsets margin}) {
    return Container(
      key: key,
      child: this,
      margin: margin,
    );
  }

  Widget scaffold({Key key, PreferredSizeWidget appbar, Widget floatingActionButton,}) {
    return Scaffold(
      key: key,
      body: this,
      appBar: appbar,
      floatingActionButton: floatingActionButton,
    );
  }

  Widget center({Key key}) {
    return Center(
      child: this,
      key: key,
    );
  }

  Widget padding(
    EdgeInsets padding, {
    Key key,
  }) {
    return Padding(
      key: key,
      padding: padding,
      child: this,
    );
  }
}

/// Extensions on string to create Text widget
/// TODO: add rich text support extensions
extension TextX on String {
  Widget text({
    Key key,
    TextStyle style,
  }) {
    return Text(
      this,
      key: key,
      style: style,
    );
  }

  Widget textCenter({
    Key key,
  }) {
    return Text(
      this,
      key: key,
      textAlign: TextAlign.center,
    );
  }

  Widget textLeft({
    Key key,
  }) {
    return Text(
      this,
      key: key,
      textAlign: TextAlign.left,
    );
  }

  Widget textRight({
    Key key,
  }) {
    return Text(
      this,
      key: key,
      textAlign: TextAlign.right,
    );
  }

  Widget textJustify({
    Key key,
  }) {
    return Text(
      this,
      key: key,
      textAlign: TextAlign.justify,
    );
  }

  Widget networkImage({
    Key key,
    BoxFit fit,
  }) {
    return Image.network(
      this,
      fit: fit,
    );
  }

  //// Create circle image avatar from network image
  Widget circleAvatar({
    Key key,
    double radius,
    Color backgroundColor,
  }) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: NetworkImage(this),
      backgroundColor: backgroundColor,
    );
  }
}

/// Extensions on List<String> to convert to List<Widget> with texts
///
/// Usage:
///
/// ```dart
/// List<String> fruits = ['apple', 'orange', 'grapes'];
///
/// Container(
///   child: fruits.texts()
/// )
/// ```
extension ListTextX on List<String> {
  List<Widget> texts({
    TextStyle style,
  }) {
    return List<Widget>.generate(
      this.length,
      (index) => this[index].text(style: style),
    );
  }
}

/// Extensions on list of Widgets
/// Methods: `row()`, `column()`, `stack()`
extension WidgetListX on List<Widget> {
  Row row({
    Key key,
    MainAxisAlignment mainAxisAlignment,
    CrossAxisAlignment crossAxisAlignment,
  }) {
    return Row(
      key: key,
      children: this,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
    );
  }

  Column column({
    Key key,
    MainAxisAlignment mainAxisAlignment,
    CrossAxisAlignment crossAxisAlignment,
  }) {
    return Column(
      key: key,
      children: this,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
    );
  }

  Stack stack({
    Key key,
    MainAxisAlignment mainAxisAlignment,
    CrossAxisAlignment crossAxisAlignment,
  }) {
    return Stack(
      key: key,
      children: this,
    );
  }
}

/// Extensions on alignment of widgets
extension AlignX on Widget {
  Widget centerLeft() {
    return Align(
      child: this,
      alignment: Alignment.centerLeft,
    );
  }

  Widget centerRight() {
    return Align(
      child: this,
      alignment: Alignment.centerRight,
    );
  }

  Widget topCenter() {
    return Align(
      child: this,
      alignment: Alignment.topCenter,
    );
  }

  Widget topLeft() {
    return Align(
      child: this,
      alignment: Alignment.topLeft,
    );
  }

  Widget topRight() {
    return Align(
      child: this,
      alignment: Alignment.topRight,
    );
  }

  Widget bottomCenter() {
    return Align(
      child: this,
      alignment: Alignment.bottomCenter,
    );
  }

  Widget bottomLeft() {
    return Align(
      child: this,
      alignment: Alignment.bottomLeft,
    );
  }

  Widget bottomRight() {
    return Align(
      child: this,
      alignment: Alignment.bottomRight,
    );
  }
}
