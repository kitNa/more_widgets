import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stack'),
        ),
      //The position of the widget in the child array determines how the
      // children are stacked on top of each other in Stack.
      body: Stack(children: <Widget>[
        Positioned(
          left: 1,
          top: 40,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
        ),
        Positioned(
          right: 2,
          bottom: 5,
          child: Container(
            height: 75,
            width: 75,
            color: Colors.yellow,
          ),
        ),
        Positioned(
          right: 20,
          bottom: 20,
          child: Opacity(
            opacity: .5,
            child: Container(
              height: 75,
              width: 75,
              color: Colors.blue,
            ),
          ),
        ),
      ],),
    );
  }
}
