import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),

    );
  }
}

///Route
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
          Text('Home', style: TextStyle(fontSize: 40),
          ),
            ElevatedButton(onPressed: (){
              // Navigation - Route home -> Route setting
              // Navigator
              // Navigator.typeofNavigation(current location, Destination);
              //Navigation - Push, Pop(Back),Replace,replaceAll,RemoveUntill
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingScreen(),
                  ),
                );
              },
              child: Text('Go to setting'),
            ),
          ],
        ),
      ),
    );
  }
}


/// Route
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('Setting', style: TextStyle(fontSize: 30),),
            ElevatedButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Display(),
                  ),
                );
              },
              child: Text('Display setting'),
            ),
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Home')),
          ],
        ),
      ),
    );
  }
}

//Route
class Display extends StatelessWidget {
  const Display({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display Setting'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Display', style: TextStyle(fontSize: 30),),
            TextButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingScreen(),
                  ));
            },
                child: Text('Go to setting')),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
                child: Text('Home')),
            TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                      (route) => false);
                },
                child: Text('main Home')),
          ],
        ),
      ),
    );
  }
}