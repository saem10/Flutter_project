import 'package:flutter/material.dart';

/// MediaQuery

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
     body: Column(
       children: [
         /// Ratio = width : height
         /*AspectRatio(
           aspectRatio: 16/9,
           child: Container(
             color: Colors.redAccent,
             child: Image.asset('images/mountain.jpg',
               fit:BoxFit.cover,),

           ),
         ),*/
         Container(
           width: 100,
           height: 100,
           color:Color(0xFF045044),
           child: FractionallySizedBox(
             widthFactor: 0.5,
             heightFactor: 0.5,
             child: Container(
               decoration: BoxDecoration(
                 color: Colors.red,
                 borderRadius: BorderRadius.circular(25)

               ),
               //color: Colors.red,
             ),
           ),
         ),

         /*SizedBox(
           width: MediaQuery.of(context).size.width/10,
           height: MediaQuery.of(context).size.height/10,
           child: Container(
             color: Colors.red,
           ),
         )*/
       ],
     ),
    );
  }
}