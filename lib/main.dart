
import 'package:flutter/material.dart';

void main() {
  // give me some widget
  runApp(MyApp());
}

// Hot reload => ctl + s
// Hot restart => ctl + shift + \

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      title: 'Ostad app',
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Home'),
        leading: Icon(
          Icons.add_business,
          color: Colors.white,
          size: 32,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white, size: 32),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('This is mod 5 Assignment',
                  style: TextStyle(fontSize: 25, color: Colors.black)),
            ],
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: 'My',
                    style: TextStyle(fontSize: 30, color: Colors.red)),
                TextSpan(text: ' phone', style: TextStyle(color: Colors.blue)),
                TextSpan(
                    text: ' name',
                    style: TextStyle(fontSize: 20, color: Colors.purple)),
                TextSpan(
                    text: ' is Iphone 12',
                    style: TextStyle(fontSize: 30, color: Colors.orangeAccent)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}