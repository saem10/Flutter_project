import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
   Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Switch(value: true, onChanged: (bool value){}),
          ElevatedButton(onPressed: (){
            showDialog(
              barrierDismissible: false,
              context: context, builder: (context)=>AlertDialog(
              title: Text('Alert'),
              content: Text('You are in danger'),
              actions: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('Cancle')),
                TextButton(onPressed: (){
                  // Action
                }, child: Text('ok')),
              ],
            ),
            );
          }, child: Text('Show dialog'),),
          ElevatedButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationName: 'Chete',
                  applicationVersion: '0.0.1',
                );
              },
              child: Text('show about')),
          ElevatedButton(onPressed: (){
            showModalBottomSheet(
                isDismissible: true,
                barrierColor: Colors.blueGrey ,
                backgroundColor: Colors.grey.shade100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12),
                  )
                ),
                context: context, builder: (context){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Center(
                    child: Text('This is bottom sheet'),
                  ),
                ],),
              );
            });
          }, child: Text('show bottom sheet'))
        ],
      ),
    );
  }
}

