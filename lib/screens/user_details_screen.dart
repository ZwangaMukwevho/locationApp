import 'package:flutter/material.dart';
import '../models/User_details.dart';
import '../widgets/details.dart' ;

class UserDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userdetails = new UserDetails();
    // Exctracting route arguments
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: Column(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(15),
              child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Current Contacts'),
                      Spacer(),
                      Chip(
                        label: Text(
                          '${userdetails.currentContactslength.toStringAsFixed(0)}',
                          style: TextStyle(
                            color:
                                Theme.of(context).primaryTextTheme.title.color,
                          ),
                        ),
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                    ],
                  )),
            ),
            SizedBox(height: 5),
            Expanded(
              child: ListView.builder(
                itemCount: userdetails.currentContactslength,
                itemBuilder: (ctx,i) => Details(userdetails.ccontacts[i]),
              ),
            ),
            SizedBox(height:15), 
                Card(
              margin: EdgeInsets.all(15),
              child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Previous Contacts'),
                      Spacer(),
                      Chip(
                        label: Text(
                          '${userdetails.previousContactslength.toStringAsFixed(0)}',
                          style: TextStyle(
                            color:
                                Theme.of(context).primaryTextTheme.title.color,
                          ),
                        ),
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                    ],
                  )),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: userdetails.previousContactslength,
                itemBuilder: (ctx,i) => Details(userdetails.pcontacts[i]),
              ),
            ),
             SizedBox(height:5)

          ],
        ));
  }
}
