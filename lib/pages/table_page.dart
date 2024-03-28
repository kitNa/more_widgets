import 'package:flutter/material.dart';

class TablePage extends StatelessWidget {
  const TablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table'),
      ),
      body: Table(
        border: TableBorder.all(),
        //вирівнювання по вертикалі
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        //ширина стовпців
        columnWidths: const {
          0: FractionColumnWidth(.5),
          3: FlexColumnWidth(3),
        },
        children: [
          TableRow(children: [
            Container(
              color: Colors.blue,
              height: 150,
            ),
            Container(
              color: Colors.amber,
              height: 50,
            ),
            Container(
              color: Colors.red,
              height: 40,
            ),
            Container(
              color: Colors.green,
              height: 100,
            ),
          ]),
          TableRow(children: [
            Container(
              color: Colors.cyan,
              height: 100,
            ),
            Container(
              color: Colors.grey,
              height: 150,
            ),
            Container(
              color: Colors.deepPurple,
              height: 50,
            ),
            Container(
              color: Colors.greenAccent,
              height: 40,
            ),
          ])
        ],
      ),
    );
  }
}
