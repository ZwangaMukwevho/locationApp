import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Hello Zwanga'),

            // Avoids adding a back button to the drawer
            automaticallyImplyLeading: false,
          ),

          // Horizontal line
          Divider(),
          ListTile(
            leading: Icon(Icons.add_call),
            title: Text('Add contact'),
            onTap:() {
             // Navigator.of(context).pushReplacementNamed('/');
            }
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.add_location),
            title: Text('Add address'),
            onTap:() {
              //Navigator.of(context).pushReplacementNamed(OrdersScreen.routeName);
            }
          ),
        ],
      ),
    );
  }
}
