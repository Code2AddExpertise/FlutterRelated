import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SilverChildListDemo extends StatelessWidget{

  var silverChildContainer = {
    "CupertinoSilverNavigationBar",
    "CustomScrollView",
    "SilverAppBar",
    "SilverChildBuilderDelegate",
    "SilverChildListDelegate",
    "SilverFixedExtentList",
    "SilverGrid",
    "SliverList",
    "SilverPadding",
    "SilverPersistentHeader",
    "SilverToBoxAdapter"
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Silver Child Layout Widget")),
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemBuilder: (context, index) {
          return ElevatedButton(
              onPressed: () => {

              },
              child: Text(silverChildContainer.elementAt(index)));
        },
        itemCount: silverChildContainer.length,
      ),
    );
  }

}