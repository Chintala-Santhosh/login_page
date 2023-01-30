import 'package:flutter/material.dart';
import 'package:login_page/FavoritePage/FavouritesMain.dart';
import 'package:login_page/SearchPage/SearchPage.dart';

import 'HomePage/HomePage.dart';

import 'ProfilePage/Profile.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
      home: IstharaApp(),
    ));

class IstharaApp extends StatefulWidget {
  const IstharaApp({Key? key}) : super(key: key);
  @override
  State<IstharaApp> createState() {
    return _IstharaAppState();
  }
}

class _IstharaAppState extends State<IstharaApp> {
  int _Pages = 0;
  static List<Widget> PageSelect = <Widget>[
   HomePage(),
    SearchPage(),
    FavouritesMain(),
    Profile1(),
  ];

  void _onTapItem(int index) {
    setState(() {
      _Pages = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageSelect.elementAt(_Pages),
      bottomNavigationBar: BottomNavigationBar(

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: "Home",

              icon: Icon(Icons.home_outlined),
              backgroundColor: Colors.cyanAccent),
          BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search_outlined),
              backgroundColor: Colors.cyanAccent),
          BottomNavigationBarItem(
              label: "Favorite",
              icon: Icon(Icons.favorite_outline),
              backgroundColor: Colors.cyanAccent),
          BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person_outline),
              backgroundColor: Colors.cyanAccent),
        ],

        type: BottomNavigationBarType.fixed,
        currentIndex: _Pages,
        iconSize: 30,
        onTap: _onTapItem,
        selectedItemColor: Colors.pinkAccent,
      )
    );
  }
}
