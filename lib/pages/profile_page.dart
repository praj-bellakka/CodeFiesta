import 'package:codefiesta_app/pages/friends_page.dart';
import 'package:codefiesta_app/pages/navBar.dart';
import 'package:codefiesta_app/pages/places_page.dart';
import 'package:codefiesta_app/services/reusable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'forum_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          ReusableTitleWidget(title: "Profile", fontsize: 40, color: Colors.black),
        ],
    ));    
  }
}
