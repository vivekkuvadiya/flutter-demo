import 'package:flutter/material.dart';

import 'main.dart';

class DrinkDetails extends StatelessWidget {
  final drink;

  const DrinkDetails({Key key, @required this.drink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(colors: [myColor,Colors.orange])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
          appBar: new AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: new Text("${drink["strDrink"]}"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: drink["idDrink"],
                  child: CircleAvatar(
                    radius: 150.0,
                    backgroundImage: NetworkImage(drink["strDrinkThumb"]),
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(
                  "${drink["idDrink"]}",
                  style: new TextStyle(
                      color: Colors.white,
                      fontFamily: "FiraCode",
                      fontWeight: FontWeight.w300,
                      fontSize: 15.0),
                ),
                SizedBox(height: 30.0,),
                Text(
                  "${drink["strDrink"]}",
                  style: new TextStyle(
                      color: Colors.white,
                      fontFamily: "FiraCode",
                      fontWeight: FontWeight.w400,
                      fontSize: 20.0),
                ),
              ],
            ),
          )),
    );
  }
}
