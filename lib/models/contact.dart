import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact with ChangeNotifier{
  final String id;
  final String date;
  final String number;
  
  

  Contact(
      {this.id,
      this.date,
      this.number,
      });
  
}
