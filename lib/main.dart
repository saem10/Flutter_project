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
        leading: Icon(Icons.add_business,size: 30,color: Colors.black),
        title: Text('Home'),
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
