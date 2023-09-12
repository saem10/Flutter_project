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
         //child: SingleChildScrollView(

           child: ListView(
             //ListView
            //scrollDirection: Axis.vertical,
            children: [
              Divider(
                height: 40,
              ),
              ListTile(
                title: Text('User name'),
                subtitle: Text('user@email.com'),
                leading: Icon(Icons.add_business),
                trailing: Column(
                  children: [
                    Icon(Icons.add),
                    Icon(Icons.add),
                  ],
                ),

                onTap: (){
                  print('tap');
                },
              ),
               Divider(
                 height: 8,
                 thickness: 1,
                 color: Colors.green,
                 endIndent: 15,
                 indent: 15,
               ),
              ListTile(
                title: Text('User name'),
                subtitle: Text('user@email.com'),
                leading: Icon(Icons.add_business),
                trailing: Icon(Icons.add),
                onTap: (){
                  print('tap');
                },
              ),

              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),
              Text('data',style: TextStyle(fontSize:20),),

            ],

      ),
        // ),
       ),
    );
  }
}


