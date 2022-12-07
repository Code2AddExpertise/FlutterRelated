import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MutliChildListDemo extends StatelessWidget{

  var multiChildContainer = {
    "Column",
    "CustomMultiChildLayout",
    "Flow",
    "GridView",
    "IndexedStack",
    "LayoutBuilder",
    "ListBody",
    "ListView",
    "Row",
    "Stack",
    "Table",
    "Wrap"
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Multiple Child Layout Widget")),
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemBuilder: (context, index) {
          return ElevatedButton(
              onPressed: () => {

              },
              child: Text(multiChildContainer.elementAt(index)));
        },
        itemCount: multiChildContainer.length,
      ),
    );
  }

}