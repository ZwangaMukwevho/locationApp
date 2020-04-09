import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/home_screen.dart';
import './screens/user_details_screen.dart';
import './screens/add_contact.dart';
import './screens/edit_info_sceen.dart';
import './models/contacts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Contacts()),
      ],
      child: MaterialApp(
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
          '/add-contact': (ctx) => AddContacts(),
          '/edit-contacts': (ctx) => EditInforScreen(),
        },
      ),
    );
  }
}
