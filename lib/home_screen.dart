import 'package:flutter/material.dart';

/// Stack, Positioned, Align

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.deepOrange,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.tealAccent,
            ),
            Container(
              width: 30,
              height: 30,
              color: Colors.blue,
            ),
            Positioned(
              bottom:10,right:15,
              child: Container(
                width:40,height:40,color:Colors.brown,
              ),
            ),
            Positioned.fill(

              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height:40,width:40,color:Colors.teal,
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}