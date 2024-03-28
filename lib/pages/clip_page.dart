import 'package:flutter/material.dart';

class ClipPage extends StatelessWidget {
  const ClipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Clip'),
        ),
        body: ListView(
          children: <Widget>[
            //For more advanced clipping needs, look at the ClipPath,
            // CustomClipper, and ShapeBorderClipper.
            ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('lib/assets/images/cat.png')),
            ClipOval(
                child: Image.asset('lib/assets/images/cat.png')),
            ClipRect(
                child: Align(
                  alignment: Alignment.center,
                    heightFactor: .5,
                    widthFactor: .3,
                    child: Image.asset('lib/assets/images/cat.png'))),
          ],
        ));
  }
}
