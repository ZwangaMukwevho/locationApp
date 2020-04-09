import 'package:flutter/material.dart';

class UserAddItem extends StatelessWidget {
  final String number;
  final String date;

  UserAddItem(this.number, this.date);
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(number),
        leading: CircleAvatar(
          backgroundColor: Colors.green,
        ),
        trailing: Container(
          width: 100,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: (){},
                color: Theme.of(context).primaryColor,
              ),
              IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {},
              color: Theme.of(context).errorColor,
              )
            ],
          ),
        ));
  }
}
