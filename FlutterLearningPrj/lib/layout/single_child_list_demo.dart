import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleChildListDemo extends StatelessWidget {
  var singleChildContainer = {
    "Align",
    "AspectRatio",
    "Baseline",
    "Center",
    "ConstrainBox",
    "Container",
    "CustomSingleChildLayout",
    "Expanded",
    "FittedBox",
    "FractionallySizedBox",
    "IntrinsicHeight",
    "InstrinsicWidth",
    "LimitedBox",
    "Offstage",
    "OverflowBox",
    "Padding",
    "SizedBox",
    "SizedOverflowBox",
    "Transform"
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Single Child Layout Widget")),
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemBuilder: (context, index) {
          return ElevatedButton(
              onPressed: () => {

              },
              child: Text(singleChildContainer.elementAt(index)));
        },
        itemCount: singleChildContainer.length,
      ),
    );
  }
}
