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
         /*Container(
           width: MediaQuery.sizeOf(context).width,
           height: MediaQuery.sizeOf(context).width,
           color:Color(0xFF045044),
           child: FractionallySizedBox(
             widthFactor: 0.5,
             heightFactor: 0.5,
             child:Container(
               color: Colors.red,

               ),
               //color: Colors.red,
             ),
           ),*/


         /*SizedBox(
           width: MediaQuery.of(context).size.width/10,
           height: MediaQuery.of(context).size.height/10,
           child: Container(
             color: Colors.red,
           ),
         )*/

         Flexible(
           fit: FlexFit.loose,
           flex: 2,
           child: Container(
             color: Colors.green,
             width: MediaQuery.sizeOf(context).width,
           ),
         ),
         Flexible(
           fit: FlexFit.tight,
           flex: 3,
           child: Container(
             color: Colors.redAccent,
             width: MediaQuery.sizeOf(context).width,
           ),
         ),
         Flexible(
           child: Row(
             children: [
               Flexible(
                 fit: FlexFit.tight,
                 flex: 2,
                 child: Container(
                   color: Colors.indigo,
                   width: MediaQuery.sizeOf(context).width,
                 ),
               ),
               Flexible(
                 fit: FlexFit.tight,
                 flex: 2,
                 child: Container(
                   color: Colors.blueAccent,
                   width: MediaQuery.sizeOf(context).width,
                 ),
               ),
             ],
           ),
         ),
         Flexible(
           fit: FlexFit.tight,
           flex: 5,
           child: Container(
             color: Colors.teal,
             width: MediaQuery.sizeOf(context).width,
           ),
         ),
         Expanded(
           flex: 2,
           child: Container(
             color: Colors.deepOrange,
             width: MediaQuery.sizeOf(context).width,
           ),
         ),
         Expanded(
           flex: 2,
           child: SizedBox(
             width: 100,
             height: 50,
             child: FittedBox(
               child: Text('Hello my name is Saem'),
             ),
           ),
         ),


       ],
     ),
    );
  }
}