import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//That's a very simple example, but you can expand the idea and have the
// application change based on the user changing their device orientation.
// There is also a widget that can provide more support for orientation changes.
// It's called OrientationBuilder. This widget allows you to change the
// orientation of a child widget based on the parent widget's orientation,
// separate from the device orientation.
class OrientationPage extends StatelessWidget {
  const OrientationPage({super.key});

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    Color color;
    if(orientation == Orientation.landscape) {
      color = Colors.amber;
    } else {
      color = Colors.blueGrey;
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orientation'),
      ),
      body: Container(
        color: color,
      ),
    );
  }
}
