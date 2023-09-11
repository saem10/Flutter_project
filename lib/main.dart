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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title: Text('Saem')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 190,
              height: 90,
              //color: Colors.indigo,
              // decoration er time a color decoration er modde nite hobe
              margin: EdgeInsets.all(20),
              //padding: EdgeInsets.all(10),
              //padding: EdgeInsets.only(top: 15, bottom: 5,),
              padding: EdgeInsets.symmetric(vertical:10,horizontal: 20 ),

              decoration: BoxDecoration(
                color: Colors.indigo,
                border: Border.all(color: Colors.black,width: 1),
                //borderRadius: BorderRadius.circular(10),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                //shape: BoxShape.circle


              ),
              child: Text("Saem",style: TextStyle(color: Colors.white70,
                  fontSize: 40),),
              alignment: Alignment.center,

            ),
            Container(
              child: ElevatedButton(
                //onHover: , use foe website
                //when cursor touch the baton change the color
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      textStyle: TextStyle(fontSize: 30,
                          fontWeight:FontWeight.w500  ),
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),
                  onLongPress: (){
                    print('Email delete');
                  },
                  onPressed: (){
                    print('Email has been send');
                    print('Resend email');
                  }, child: Text('Send Email')
              ),
            ),
            TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.red,
                    textStyle: TextStyle(fontSize: 25)

                ),
                onLongPress: (){
                  print('Long press');
                },
                onPressed: () {
                  print('Resend email');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Resend'),
                    ),
                  ),
                )),


            IconButton(onPressed: (){}, icon: Icon (Icons.add)),
            OutlinedButton(
                onLongPress: (){
                  print('Long press on outline button');
                },
                onPressed: (){}, child:Text('Outline button') ),
            TextField(
              style: TextStyle(
                color: Colors.deepOrangeAccent,
              ),
              decoration: InputDecoration(
                  fillColor: Colors.green[400],
                  filled: true,
                  hintText: 'Enter your Email address',
                  hintStyle: TextStyle(
                      color: Colors.white70
                  ),
                  suffixIcon: Icon(Icons.email_outlined,
                    color: Colors.white70,
                  ),
                  label: Text('User Name'),
                  labelStyle: TextStyle(
                      color: Colors.white70
                  )

              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              obscureText: true,
              controller: TextEditingController(),
              style: TextStyle(
                color: Colors.deepOrangeAccent,
              ),
              decoration: InputDecoration(
                fillColor: Colors.green[400],
                filled: true,
                hintText: 'Enter your Password',
                hintStyle: TextStyle(
                    color: Colors.white70
                ),
                suffixIcon: Icon(Icons.password,
                  color: Colors.white70,
                ),
                label: Text('Password'),
                labelStyle: TextStyle(
                    color: Colors.white70
                ),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange)
                ),

              ),
            ),



          ],
        ),
      ),
    );
  }
}
