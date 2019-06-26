// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'package:flutter/material.dart';

import 'package:flutter_daily/demos/flutter_channel.dart';
import 'package:flutter_daily/demos/increment.dart';

void main() {
  runApp(MaterialApp(
      home: DemoList(),
      routes: {
        "IncrementPage" :(context)=>IncrementPage(),
        "PlatformChannel" :(context)=>PlatformChannel(),
      },
    ));
}

class DemoList extends StatefulWidget {

  @override
  _DemoListState createState() => _DemoListState();
  
}

class _DemoListState extends State<DemoList> {
  List<Widget> widgets = <Widget>[];
  List titles = ["IncrementPage","PlatformChannel"];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < titles.length; i++) {
      widgets.add(getRow(titles[i]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: ListView(children: widgets, itemExtent: 60,),
    );
  }

  Widget getRow(String title) {
    return GestureDetector(
        child: Container(
          color: Colors.green,
          child: Padding(
            padding: EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[Text("Row $title"),],
            )
        ),
      ),
      onTap: () {
        print('row $title');
        Navigator.pushNamed(context, "$title");
        // Navigator.push( context,
        //    new MaterialPageRoute(builder: (context) {
        //           return new IncrementPage();
        //      }));
          },
    );
  }
}
