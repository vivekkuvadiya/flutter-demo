import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.cyan,
    ),
    title: "Input Filed",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Filed"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name != null ? "$name" : "-"),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              maxLength: 10,
              decoration: InputDecoration(hintText: "Username",
              prefixIcon: Icon(Icons.verified_user)),
              style: TextStyle(fontSize: 25.0, color: Colors.deepPurple),
              onChanged: (text) {
                if (text != "") {
                  name = text;
                }else{
                  name = null;
                }
              },
            ),
          ),
          MaterialButton(
            onPressed: () {
              setText();
            },
            color: Colors.pink,
            child: Text(
              "Press",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  setText() {
    setState(() {});
  }
}
