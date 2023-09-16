import 'package:flutter/material.dart';

void main(){
  runApp(
    MyApp()
  );
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
      ),

      body:
       Scrollbar(
         thickness: 10,
         radius: Radius.circular(8),
                   child: GridView.builder(
                     itemCount: 100,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                     itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Text(index.toString()),
                          Icon(Icons.add_business),
                        ],
                      );
                     },

                   ),

       ),
    );
  }
}


