import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text('Home'),
          leading: Icon(Icons.add_business,size: 30,color: Colors.black),


          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search,size: 30,color: Colors.black), // Icon on the right
              onPressed: () {
                // Handle the right icon's onPressed event here
              },
            ),
            IconButton(
              icon: Icon(Icons.settings,size: 30,color: Colors.black), // Another icon on the right
              onPressed: () {
                // Handle the right icon's onPressed event here
              },
            ),
          ],



        ),
        body:Column(
          children: [
            Text("Mir Saem Hasan",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text("Mir Saem Hasan",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
              ),
            ),
            Icon(Icons.account_circle,size: 100,color: Colors.tealAccent,),
          ],
        )
    );
  }
}
/*

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          leading: IconButton(
            icon: Icon(Icons.menu), // Icon on the left
            onPressed: () {
              // Handle the left icon's onPressed event here
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search), // Icon on the right
              onPressed: () {
                // Handle the right icon's onPressed event here
              },
            ),
            IconButton(
              icon: Icon(Icons.settings), // Another icon on the right
              onPressed: () {
                // Handle the right icon's onPressed event here
              },
            ),
          ],
        ),
        body: Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}


 */