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

        

    body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hello World',
              style: TextStyle(fontSize: 40),
              ),
              Text('Hello World',
              style: TextStyle(fontSize: 40),
              ),
              Icon(Icons.account_circle,size: 70,),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
              //  crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Text('Hello World  ',style: TextStyle(fontSize: 30 ) ),
                  Text('Hello World',style: TextStyle(fontSize: 30 ) ),

               ],
              ),
              Image.network('https://e0.pxfuel.com/wallpapers/448/142/desktop-wallpaper-cool-messi-pics-messi-aesthetic.jpg'),
              Image.asset('images/mountain.jpg'),
              //  Image.asset('images/mountain.jpg',width: 50,height: 50,
              //  fit: BoxFit.cover, fit: BoxFit.fill,
              //  fit: BoxFit.contain, fit: BoxFit.scaleDown),
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
                        text: ' is Iphone 15 pro',
                        style: TextStyle(fontSize: 30, color: Colors.orangeAccent)),
                  ],
                ),
              ),






            ],
          ),
        )
    );
  }
}
