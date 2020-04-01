import 'package:flutter/foundation.dart';

class UserDetails with ChangeNotifier{
  String name = 'purle';
  List<String> _currentContacts = ['0658199250','0761256030',];
  List<String> _previousContacts = ['0822091910','1301039131','09210910291' ];

  List<String> _currentAddress = ['Kopano residence \n , 29 Woolsack Dr \n , Rosebank \n , Cape Town \n , 0770 \n'];
  List<String> _previousAddress = [];

int get currentContactslength{
  return _currentContacts.length;
}

int get previousContactslength{
  return _previousContacts.length;
}

List get ccontacts{
  return _currentContacts;
}

List get pcontacts{
  return _previousContacts;
}



}