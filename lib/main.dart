import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sample App",
      theme:
          ThemeData(accentColor: Colors.cyan, primarySwatch: Colors.lightBlue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sample App"),
        ),
        body: Center(
          child: Text(
            "This is new Flutter App Project",
            style: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 30.25),
          ),
        ),
      ),
    );
  }
}
