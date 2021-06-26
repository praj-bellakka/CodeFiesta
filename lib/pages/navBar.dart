import 'package:codefiesta_app/pages/forum_page.dart';
import 'package:codefiesta_app/pages/friends_page.dart';
import 'package:codefiesta_app/pages/home_page.dart';
import 'package:codefiesta_app/pages/places_page.dart';
import 'package:codefiesta_app/pages/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavPage extends StatefulWidget {
  @override
  _NavPage createState() => _NavPage();
}

class _NavPage extends State<NavPage> {
  //keeps track of the current page displayed
  int selectedPage = 0;
  //List of pages
  final _pageOptions = [
    Home(),
    ForumPage(),
    PlacesPage(),
    FriendsPage(),
    ProfilePage()
  ];

  void _onItemTap(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("App"),
      // ),
      body: _pageOptions.elementAt(selectedPage),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Forum',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Near Me',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.child_friendly),
            label: 'Meets',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.black,
          ),
        ],
        currentIndex: selectedPage,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTap,
      ),
    );
  }
}
