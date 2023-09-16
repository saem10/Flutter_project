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
class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> students = [
    'Saem',
    'Hasan',
    'Arup',
    'Kazi',
    'Faruk',
    'Saem',
    'Hasan',
    'Arup',
    'Kazi',
    'Faruk',
  ];
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
          child:ListView.separated(
            itemCount: students.length,
            itemBuilder: (context,index){
            return ListTile(
              onTap: (){
                print('go to details screen');
              },
              title:Text(students[index]),
            );
           },
            separatorBuilder: (context,index){
              return Divider();
            },
          ),


        )
    );
  }
}


