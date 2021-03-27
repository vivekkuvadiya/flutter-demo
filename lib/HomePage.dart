import 'dart:convert';
import 'package:demo/DrinkDetails.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var api = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail";
  var res, drinks;

  @override
  void initState() {
    // call when app is start.
    super.initState();

    fatchData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(colors: [myColor,Colors.orange ])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: Text("Cocktail App"),backgroundColor: Colors.transparent, elevation: 0.0),
          body: Center(
              child: res != null
                  ? ListView.builder(
                      itemCount: drinks.length,
                      itemBuilder: (context, index) {
                        var drink = drinks[index];
                        return ListTile(
                          leading: Hero(
                            tag: drink["idDrink"],
                            child: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(drink["strDrinkThumb"]),
                            ),
                          ),
                          title: Text(
                            "${drink["strDrink"]}",
                            style: new TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 20.0),
                          ),
                          subtitle: Text(
                            "${drink["idDrink"]}",
                            style: new TextStyle(
                                color: Colors.white,
                                fontFamily: "FiraCode",
                                fontWeight: FontWeight.w300,
                                fontSize: 15.0),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DrinkDetails(drink: drink),
                                  fullscreenDialog: false),
                            );
                          },
                        );
                      },
                    )
                  : CircularProgressIndicator())),
    );
  }

  fatchData() async {
    res = await http.get(Uri.parse(api));
    drinks = jsonDecode(res.body)["drinks"];
    print(drinks.toString());
    setState(() {});
  }
}
