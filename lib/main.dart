import 'package:flutter/material.dart';

import 'changer.dart';

void main() => runApp(myApp());

class myApp extends StatefulWidget {
  @override
  myAppState createState() => myAppState();
}

class myAppState extends State<myApp> {
  var defaultColor;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Colour changer",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: new AppBar(
          title: Text("Theme Changer"),
        ),
        body: Changer(),
      ),
    );
  }
}
