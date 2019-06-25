// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'package:flutter/material.dart';

// import 'package:flutter_daily/demos/flutter_channel.dart';
// import 'package:flutter_daily/demos/increment.dart';

void main() {

  // runApp(MaterialApp(home: PlatformChannel()));

  // runApp(MaterialApp(home: MyApp()));

  runApp(MaterialApp(home: DemoList()));
}

class DemoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: <Widget>[
            ListTile(title:Text("商品列表")),
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(title: Text("$index"));
                },
                itemCount: 10,
              ),
            ),
          ])
    ); 
  }
}
