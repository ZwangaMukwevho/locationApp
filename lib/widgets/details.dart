import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

var now = new DateTime.now();
var formatter = new DateFormat('yyyy-MM-dd');
String formattedDate = formatter.format(now);

class Details extends StatelessWidget {
  final String info;
  Details(this.info);

  

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(info),
      background: Container(
        color: Theme.of(context).errorColor,
        child: Icon(Icons.delete, color: Colors.white, size: 40),
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
        margin: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
      ),
      direction: DismissDirection.endToStart,
      // Add onDissmissed action here
      child: Card(
        color: Colors.green,
        margin: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
        child: Padding(
            padding: EdgeInsets.all(8),
            child: ListTile(
              title: Text('$info'),
              trailing: Text('$formattedDate'),
            )),
      ),
    );
  }
}
