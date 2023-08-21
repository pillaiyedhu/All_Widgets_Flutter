import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TableDemo extends StatefulWidget {
  TableDemoState createState() {
    return TableDemoState();
  }
}

class TableDemoState extends State<TableDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Table(
          border: TableBorder.all(color: Colors.black),
          
          children: [
            TableRow(
                decoration: BoxDecoration(
                  color: Colors.pink,
                ),
                children: [
                  TableCell(
                      child: Text("Cell 1"),
                      verticalAlignment: TableCellVerticalAlignment.middle),
                  TableCell(
                      child: Text("Cell 2"),
                      verticalAlignment: TableCellVerticalAlignment.middle),
                  TableCell(
                      child: Text("Cell 3"),
                      verticalAlignment: TableCellVerticalAlignment.middle),
                ]),
            ...List.generate(20, (index) =>
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment:TableCellVerticalAlignment.middle,
                    child: Text("Cell 1")
                  ),
                  TableCell(
                    verticalAlignment:TableCellVerticalAlignment.middle,
                    child: Text("Cell 2")
                  ),
                  TableCell(
                    verticalAlignment:TableCellVerticalAlignment.middle,
                    child: Text("Cell 3")
                  )
                ]
              )
            ),
          ],
        ),
      ),
    );
  }
}
