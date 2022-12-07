import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_prj/form.dart';
import 'package:flutter_form_prj/text_demo.dart';

import 'layout/layout_list_demo.dart';
import 'layout/multi_child_list_demo.dart';
import 'layout/silver_child_list_demo.dart';
import 'layout/single_child_list_demo.dart';

class HomePageCntr extends StatelessWidget {

    static var SCREEN_TEXT="/textScreen";
    static var SCREEN_LAYOUT="/layoutScreen";
    static var SCREEN_LAYOUT_SINGLE="/singleChild";
    static var SCREEN_LAYOUT_MULTI="/multiChild";
    static var SCREEN_LAYOUT_SILVER="/silverChild";

    var routesList= {
      '/': (context) => HomePage(),
      SCREEN_TEXT:(context)=> TextDemo(),
      SCREEN_LAYOUT:(context)=> LayoutTypeDemo(),
      SCREEN_LAYOUT_SINGLE: (context) => SingleChildListDemo(),
      SCREEN_LAYOUT_MULTI: (context) => MutliChildListDemo(),
      SCREEN_LAYOUT_SILVER: (context) => SilverChildListDemo(),
    };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Home Page",
      initialRoute: '/',
      routes: routesList,
    );
  }
}

class HomePage extends StatelessWidget {
  var screenMap = [
    {"key": "Text", "screen": "/textScreen"},{"key": "Layout", "screen": "/layoutScreen"},
  ];

  var onKeyPressed =
      (item, context) => {print(item), Navigator.pushNamed(context, item)};

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: ListView.builder(
          padding: EdgeInsets.all(6.0),
          itemBuilder: (context, index) {
            return ElevatedButton(
              // onPressed: () => onKeyPressed(screenMap[index]["screen"],context),
              onPressed: ()=>{
                onKeyPressed(screenMap[index]["screen"],context)
              },
              child: Text(screenMap[index]["key"]!),
            );
          },
          itemCount: screenMap.length),
    );
  }
}
