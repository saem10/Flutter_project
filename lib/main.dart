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
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.asset('images/mountain.jpg'),
            GestureDetector(
              //gesture use fore text button
              onTap: (){
                print('Hello world');

              },
              onLongPress: (){},
              onDoubleTap: (){},
              child: Text('Hello',
              style: TextStyle(fontSize: 50),
              ),
            ),
            InkWell(
              //gesture use fore text button
              onTap: (){
                print('Hello world');

              },
              borderRadius: BorderRadius.circular(10),
              onLongPress: (){},
              onDoubleTap: (){},
              child: Text('Hello',
                style: TextStyle(fontSize: 50),
              ),
            )


          ],
        ),
      ),


    );
  }
}


