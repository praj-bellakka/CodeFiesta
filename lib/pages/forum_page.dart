import 'package:codefiesta_app/pages/friends_page.dart';
import 'package:codefiesta_app/pages/navBar.dart';
import 'package:codefiesta_app/pages/places_page.dart';
import 'package:codefiesta_app/pages/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForumPage extends StatefulWidget {

  @override
  _ForumPage createState() => _ForumPage();
}

class _ForumPage extends State<ForumPage> {
  //keeps track of the current page displayed
  int selectedPage = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Hi", style: TextStyle(color:Colors.black))
        )
      ),
    );
  }
}
