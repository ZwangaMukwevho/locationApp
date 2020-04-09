import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'contact.dart';

class Contacts with ChangeNotifier {
  List<Contact> _items = [
    Contact(
      id: 'p1',
      date: '03-02-2020',
      number: '0658199250',
    ),
    Contact(
      id: 'p2',
      date: '03-02-2020',
      number: '0761256040',
    ),
  ];

  List<Contact> get items {
    // if(_showFavoritesOnly){
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();

    // }
    return [..._items];
  }

  Contact findById(String number) {
    return _items.firstWhere((prod) => prod.number == number);
  }

  // void addProduct(Product product){
  //   final newProduct = Product(title: product.title, description:product.description,
  //     price: product.price,
  //     imageUrl: product.imageUrl);
 
  //}
  notifyListeners();
}
