import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../models/contacts.dart';
import '../widgets/user_add_item.dart';


class AddContacts extends StatelessWidget {
  static const routeName = '/add-contacts';

  @override
  Widget build(BuildContext context) {
    // Setting up a listener
    final contactsData = Provider.of<Contacts>(context);

    return Scaffold(
      appBar: AppBar(
        // Adding const assures that the text is not rebuild each time the widget is rebuild due to addition of a new contact
        title: const Text('Manage contacts'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
               Navigator.of(context).pushNamed('/edit-contacts');
            },
          ),
        ],
      ),
      body: Padding(
          padding: EdgeInsets.all(8),
          child: ListView.builder(
            itemCount: contactsData.items.length,
            itemBuilder: (_, i) => UserAddItem(
                contactsData.items[i].number, contactsData.items[i].date),
          ),
          ),
    );
  }
}
