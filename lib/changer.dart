import 'package:flutter/material.dart';
import 'dart:math';



class Changer extends StatefulWidget {
  @override
  ChangerState createState() => ChangerState();
}

class ChangerState extends State<Changer> {
  var defaultColor = Colors.white;

  colour_method() {
    var colours = [
      Colors.white,
      Colors.black,
      Colors.blue,
      Colors.cyan,
      Colors.deepPurpleAccent,
      Colors.lightBlueAccent,
      Colors.orangeAccent,
      Colors.purpleAccent,
      Colors.amber,
      Colors.indigoAccent,
      Colors.lime
    ];

    var random = Random().nextInt(colours.length);

    setState(() {
      defaultColor = colours[random];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: defaultColor,
        child: Center(
          child: RaisedButton(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Change Theme",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            color: defaultColor,
            elevation: 10,
            onPressed: () {
              colour_method();
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
          ),
        ));
  }
}
