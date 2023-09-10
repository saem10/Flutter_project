import 'package:flutter/material.dart';

void main() {
  runApp(
    //  App entry point
    //  display kore sob function

   /*   MaterialApp(
        // widget jar mode onek function ace
        // ja dia app Interior design kora jay
           home: Scaffold(
        // Scaffold widget is part of the Flutter framework
        // and is typically used as the top-level widget in a Flutter app.
        // AppBar,body,FloatingActionButton
           body: Center(
             child:Text('Hello world') ,
                ),
               ),
              ),
   */

      MyApp()

  ); // RunApp
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
   return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Text('Hello screen'),
      ),
     ),
   );
  }
}
