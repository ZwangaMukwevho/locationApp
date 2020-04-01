import 'package:flutter/material.dart';
import '../widgets/home_layout_2.dart';
import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: AppDrawer(),
      body: ListView(children: <Widget>[
        HomeLayout2(),
        HomeLayout3(),

      ],),
    );
  }
}
