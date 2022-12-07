import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_prj/home_page.dart';
import 'package:flutter_form_prj/layout/silver_child_list_demo.dart';
import 'package:flutter_form_prj/layout/single_child_list_demo.dart';

import 'multi_child_list_demo.dart';

class LayoutTypeDemo extends StatelessWidget {
  var layoutList = [
    "Single-Child Layout Widgets",
    "Multi-child layout widgets",
    "Silver Widgets"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutListRenderCls();
    // return MaterialApp(
    // initialRoute: '/',
    // routes: {
    //   "/": (context) => LayoutListRenderCls(),
    //   "/singleChild": (context) => SingleChildListDemo(),
    //   "/multiChild": (context) => MutliChildListDemo(),
    //   "/silverChild": (context) => SilverChildListDemo(),
    // },
    // );
  }
}

class LayoutListRenderCls extends StatelessWidget {
  var layoutList = [
    "Single-Child Layout Widgets",
    "Multi-child layout widgets",
    "Silver Widgets"
  ];

  var btnOnPush = (context, index) {
    if (index == 0) {
      Navigator.pushNamed(context, HomePageCntr.SCREEN_LAYOUT_SINGLE);
    } else if (index == 1) {
      Navigator.pushNamed(context, HomePageCntr.SCREEN_LAYOUT_MULTI);
    } else if (index == 2) {
      Navigator.pushNamed(context, HomePageCntr.SCREEN_LAYOUT_SILVER);
    }
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Layout Types")),
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemBuilder: (context, index) {
          return ElevatedButton(
              child: Text(layoutList[index]),
              onPressed: ()=> btnOnPush(context, index));
              // onPressed: btnOnPush(context, index));
        },
        itemCount: layoutList.length,
      ),
    );
  }
}
