import 'package:flutter/material.dart';
import 'dart:math';
import 'changer.dart';

void main() => runApp(myApp());

class myApp extends StatefulWidget {
  @override
  myAppState createState() => myAppState();
}

class myAppState extends State<myApp> {
  var defaultColor;

  appBarColor(String defaultColor) {
    setState(() {
      this.defaultColor = Colors.red;
    });
  }

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
