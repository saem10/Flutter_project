import 'package:flutter/material.dart';

/// Constructor
/// CreateState
/// InitState

/// DidChangeDependencies
/// build
/// didUpdateWidget

/// deactive
/// dispose


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  /// 1
 @override
  void initState() {
    // TODO: implement initState
   print('init state');
    super.initState();
  }

  /// 2
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print('Did change dependence');
    super.didChangeDependencies();
  }

  /// 3
  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    // TODO: implement didUpdateWidget
    print('Update');
    super.didUpdateWidget(oldWidget);
  }

  /// 5
  @override
  void deactivate() {
    // TODO: implement deactivate
    print('deactived');
    super.deactivate();
  }

  /// 6
  @override
  void dispose() {
    // TODO: implement dispose
    print('dispose');
    super.dispose();
  }


  /// main (4)
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child:
          Text('$count',style:TextStyle(fontSize: 40),),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          count++;
          setState(() {});
        },
        child: Icon(Icons.add),
      ),

    );
  }
}
