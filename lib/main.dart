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
          child:
          /*ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('item number $index'),
              );
             }),*/
          ListView.separated(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('item number $index'),
              );
            },
            separatorBuilder: (context,index){
              return Column(
                children: [
                  Text(index.toString()),
                  Divider(),
                ],
              );
            },
          ),
        )
    );
  }
}


