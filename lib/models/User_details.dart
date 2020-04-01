import 'package:flutter/foundation.dart';

class UserDetails with ChangeNotifier{
  String name = 'purle';
  List<String> _currentContacts = ['0658199250','0761256030',];
  List<String> _previousContacts = ['0822091910','1301039131','09210910291' ];

  List<String> _currentAddress = ['Kopano residence, \n29 Woolsack Dr, \nRosebank, \nCape Town, \n0770,'];
  List<String> _previousAddress = ['P.O box 101, \nThoyandou, \n0950', 'Centurion, \nmavuso street, \nhouse 301,'];

int get currentContactslength{
  return _currentContacts.length;
}

int get previousContactslength{
  return _previousContacts.length;
}

int get currentAddresslength{
  return _currentAddress.length;
}

int get previousAddresslength{
  return _previousAddress.length;
}

List get ccontacts{
  return _currentContacts;
}

List get pcontacts{
  return _previousContacts;
}

List get caddress{
  return _currentAddress;
}

List get paddress{
  return _previousAddress;
}



}