import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './screens/user_details_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.deepOrange,
      ),
      darkTheme: ThemeData.dark(),
      home: HomeScreen(),
      routes: {
        '/user_details': (ctx) => UserDetailsScreen(),
        '/user_details2': (ctx) => UserDetailsScreen2(),
      },
    );
  }
}

