import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataTablesDemo extends StatefulWidget {
  DataTablesDemoState createState() {
    return DataTablesDemoState();
  }
}

class DataTablesDemoState extends State<DataTablesDemo> {
  Widget build(BuildContext context) {
    TextStyle styles =
        TextStyle(color: Colors.teal, fontWeight: FontWeight.bold);
    return Scaffold(
      body: Center(
        child: DataTable(
          columns: <DataColumn>[
            DataColumn(
              label: Text("Name",style: styles,)
            ),
            DataColumn(
              label: Text("Age",style: styles,)
            ),
            DataColumn(
              label: Text("Gender",style: styles,)
            ),

          ] ,
          rows:const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('xyz')),
                DataCell(Text('18')),
                DataCell(Text('male')),
              ]
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('abc')),
                DataCell(Text('21')),
                DataCell(Text('female')),
              ]
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('pqr')),
                DataCell(Text('28')),
                DataCell(Text('male')),
              ]
            ),
          ]
        ),
      ),
    );
  }
}
