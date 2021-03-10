import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyAppp());
}

class MyAppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BG Changer',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Background Changer App'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors = [
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.orange,
    Colors.blueGrey,
    Colors.red,
    Colors.yellowAccent,
    Colors.blueAccent,
    Colors.deepPurple,
    Colors.purple,
    Colors.green,
    Colors.lightGreenAccent,
    Colors.lime
  ];

  var currentColor = Colors.white;

  setRandomColor() {
    var rnd = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[rnd];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: RaisedButton(
          color: Colors.black,
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Text('Change it!'),
          onPressed: setRandomColor,
        ),
      ),
    );
  }
}
