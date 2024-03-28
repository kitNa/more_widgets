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
          MenuItemButton(
            child: const Text('stack'),
            onPressed: () => Navigator.pushNamed(context, '/stack'),
          ),
          MenuItemButton(
            child: const Text('clip'),
            onPressed: () => Navigator.pushNamed(context, '/clip'),
          ),
          MenuItemButton(
            child: const Text('notify'),
            onPressed: () => Navigator.pushNamed(context, '/notify'),
          )
        ]),
      ])),
    );
  }
}
