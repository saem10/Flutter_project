import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter AppBar Example',
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100, // Adjust the height as needed
          elevation: 10, // Adjust the elevation as needed
          leading: Icon(Icons.add_business),
          title: Text(
            'Home',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20, // Adjust the font size as needed
              fontWeight: FontWeight.bold, // Optional, adjust as needed
            ),
          ),
          centerTitle: true, // Center the title horizontally
          actions: [
            Icon(Icons.search),
          ],
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('This is mod 5 Assignment'),
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'My ',
                      style: TextStyle(color: Colors.red),
                    ),
                    TextSpan(
                      text: 'phone ',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(
                      text: 'name ',
                      style: TextStyle(color: Colors.purple),
                    ),
                    TextSpan(
                      text: 'Your phone name',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
