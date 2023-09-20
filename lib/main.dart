import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.green,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 100,vertical: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),),
            elevation: 20,
            textStyle: TextStyle(
              fontSize: 16,
              letterSpacing: 0.5,
              wordSpacing: 1.5,
            )
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: TextStyle(fontSize: 16,
            ),
            foregroundColor:Colors.deepOrange
          ),
        ),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.teal,
            elevation: 100,
            shadowColor: Colors.deepOrange),
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 18),
          bodyLarge: TextStyle(fontSize: 30),
        ),

      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode:ThemeMode.light,

    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello World'),
            Text('Hello World',style: Theme.of(context).textTheme.bodyLarge,),
            TextButton(onPressed: (){}, child:Text('Tap here'),),
            ElevatedButton(onPressed: (){}, child: Text('tap here'),),
            ElevatedButton(onPressed: (){}, child: Text('tap here'),),
          ],
        ),
      ),
    );
  }
}
