import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MainActivity(),
  ));
}

class MainActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
      ),
      body: Center(
        child: Text(
          "Center Text",
          style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.blueAccent,
              fontSize: 50.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Vivek Kuvadiya"),
              accountEmail: Text("vivekkuvadiya98@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Text("V"),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Image.network(
                "https://i.stack.imgur.com/bUsqG.png",
                width: 50,
                height: 100,
              ),
              title: Text("Flutter"),
              subtitle: Text("Learning Flutter"),
              trailing: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
