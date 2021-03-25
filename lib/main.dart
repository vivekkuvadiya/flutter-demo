import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var text = "change me!";
  var i = 0;

  @override
  void initState() {
    // call when class create..
    super.initState();
  }

  @override
  void dispose() {
    // call when destroy
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateFull Widgets"),
      ),
      body: Center(
        child: Text(
          text + " " + i.toString(),
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          i++;
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
