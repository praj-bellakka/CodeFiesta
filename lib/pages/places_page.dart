import 'package:codefiesta_app/pages/friends_page.dart';
import 'package:codefiesta_app/pages/navBar.dart';
import 'package:codefiesta_app/pages/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'forum_page.dart';

class PlacesPage extends StatefulWidget {

  @override
  _PlacesPage createState() => _PlacesPage();
}

class _PlacesPage extends State<PlacesPage> {
  //keeps track of the current page displayed
  int selectedPage = 2;

  //List of pages

  //Sets the page when tapped
  void _onItemTapped(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("HI"),
      ),
    );
  }
}

