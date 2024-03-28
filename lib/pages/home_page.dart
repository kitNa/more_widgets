import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More widgets'),
      ),
      body: Center(
          child: Column(children: [
            MenuBar(children: [
              MenuItemButton(
                child: const Text('gridview'),
                onPressed: () => Navigator.pushNamed(context, '/gridview'),
              ),
              MenuItemButton(
                child: const Text('table'),
                onPressed: () => Navigator.pushNamed(context, '/table'),
          ),
        ]),
      ])),
    );
  }
}
