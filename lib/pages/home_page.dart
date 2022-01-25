// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:untitled1/pages/body_index_0/body_0.dart';
import 'package:untitled1/pages/body_index_0/body0.dart';
import 'package:untitled1/pages/body_index_1/explore.dart';
import 'package:untitled1/pages/body_index_2/favorites.dart';
import 'package:untitled1/pages/body_index_3/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Body0(),
    ExplorePage(),
    FavoritePage(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: _widgetOptions.elementAt(_currentIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.blue,
        selectedItemColor: Colors.blue[900],
        onTap: (index) => setState(() => _currentIndex = index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline), label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}
