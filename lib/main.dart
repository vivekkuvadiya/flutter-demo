import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Calculator App",
      theme: ThemeData(primarySwatch: Colors.green),
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    ));

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int firstNum;
  int secNum;
  String textToDisplay = "";
  String res;
  String operatorPerform;

  void btnClicked(String val) {
    if (val == "C") {
      textToDisplay = "";
      firstNum = 0;
      secNum = 0;
      res = "";
    } else if (val == "+" || val == "-" || val == "x" || val == "/") {
      firstNum = int.parse(textToDisplay);
      res = "";
      operatorPerform = val;
    } else if (val == "=") {
      secNum = int.parse(textToDisplay);
      if (operatorPerform == "+") {
        res = (firstNum + secNum).toString();
      }
      if (operatorPerform == "-") {
        res = (firstNum - secNum).toString();
      }
      if (operatorPerform == "x") {
        res = (firstNum * secNum).toString();
      }
      if (operatorPerform == "/") {
        res = (firstNum ~/ secNum).toString();
      }
    } else {
      res = int.parse(textToDisplay + val).toString();
    }

    setState(() {
      textToDisplay = res;
    });
  }

  Widget customButton(String val) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () => btnClicked(val),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            "$val",
            style: TextStyle(fontSize: 25.0),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator App"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  "$textToDisplay",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              children: [
                customButton("7"),
                customButton("8"),
                customButton("9"),
                customButton("x")
              ],
            ),
            Row(
              children: [
                customButton("4"),
                customButton("5"),
                customButton("6"),
                customButton("-")
              ],
            ),
            Row(
              children: [
                customButton("1"),
                customButton("2"),
                customButton("3"),
                customButton("+")
              ],
            ),
            Row(
              children: [
                customButton("C"),
                customButton("0"),
                customButton("="),
                customButton("/")
              ],
            )
          ],
        ),
      ),
    );
  }
}
