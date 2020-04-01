import 'package:flutter/material.dart';
import '../screens/user_details_screen.dart';

class HomeLayout2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void selectCategory(BuildContext ctx) {
      Navigator.of(ctx).pushNamed(
        '/user_details',
        arguments: { 'title' : 'Your Contacts'}
      );
    }

    return InkWell(
       onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    
                    'https://images.techhive.com/images/article/2015/12/google-phone-100632323-large.jpg',
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.black54,
              child: Row(
                children: <Widget>[
                  Row(children: <Widget>[
                    Text(
                      'Your contacts',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 170),
                    Icon(
                      Icons.add,
                      color: Colors.green,
                    ),
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeLayout3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    void selectCategory(BuildContext ctx) {
      Navigator.of(ctx).pushNamed(
        '/user_details',
        arguments: { 'title' : 'Your Address'}
      );
      }

    return InkWell(
      onTap: () => selectCategory(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvnR27oCEG3jE3iskMGYtluUhA3XV-rzSFgXoo_kM_U5g7i6Q&s',
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.black54,
              child: Row(
                children: <Widget>[
                  Row(children: <Widget>[
                    Text(
                      'Your adress',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 200),
                    Icon(
                      Icons.add,
                      color: Colors.green,
                    ),
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
