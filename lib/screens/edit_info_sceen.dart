import 'package:flutter/material.dart';

class EditInforScreen extends StatefulWidget {
  static const routeName = '/edit-contacts';
  @override
  _EditInforScreenState createState() => _EditInforScreenState();
}

class _EditInforScreenState extends State<EditInforScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Contacts'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone Number'),
                textInputAction: TextInputAction.next,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
