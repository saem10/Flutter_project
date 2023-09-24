import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.home),
        middle: Text('Home'),
        trailing: CupertinoSwitch(
          onChanged: (onChange) {},
          value: true,
        ),
        backgroundColor: Colors.green,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Saem Hasan'),
            Text('Saem Hasan'),
            Text('Saem Hasan'),
            Text('Saem Hasan'),
            Text('Saem Hasan'),
            Text('Saem Hasan'),
            CupertinoButton(child: Text('Saem'), onPressed: (){} ),
            CupertinoButton.filled(child: Text('Saem'), onPressed: (){} ),
            CupertinoTextField(),
            CupertinoTabBar(items: [
              BottomNavigationBarItem(label:'Mir' ,icon: Icon(CupertinoIcons.home)),
              BottomNavigationBarItem(label: 'Saem',icon: Icon(CupertinoIcons.home)),
              BottomNavigationBarItem(label: 'Hasan',icon: Icon(CupertinoIcons.home)),
            ])
            
          ],
        ),
      ),
    );
  }
}
