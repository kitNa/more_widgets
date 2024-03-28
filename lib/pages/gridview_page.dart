import 'package:flutter/material.dart';

//The most commonly used grid layouts are GridView.count, which creates a layout
//with a fixed number of tiles in the cross axis, and GridView.extent, which
// creates a layout with tiles that have a maximum cross-axis extent.
class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      body: GridView.count(
        //The crossAxisCount property determines how many widgets across to
        // display.
        crossAxisCount: 3,
        //We can add spacing between each widget by adding the crossAxisSpacing
        //and the mainAxisSpacing
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(21, (index) {
          return Container(
            color: index % 2 == 0 ? Colors.green : Colors.amber,
            child: Center(
              child: Text('${index+1}'),
            ),
          );
        }),
      ),
    );
  }
}
