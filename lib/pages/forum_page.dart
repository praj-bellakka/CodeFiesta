import 'package:codefiesta_app/pages/friends_page.dart';
import 'package:codefiesta_app/pages/navBar.dart';
import 'package:codefiesta_app/pages/places_page.dart';
import 'package:codefiesta_app/pages/profile_page.dart';
import 'package:codefiesta_app/services/reusable_widgets.dart';
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
      body: Column(
        children: [
          SizedBox(height: 50),
          ReusableTitleWidget(title: "Forum", fontsize: 40, color: Colors.black),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Row(children: [
                InkWell(
                  onTap: () async {

                  },
                  child: ReusableTagWidget(title: 'Featured Topics'),
                ),
                InkWell(
                  onTap: () async {

                  },
                  child: ReusableTagWidget(title: 'My Intersts'),
                ),
                InkWell(
                  onTap: () async {

                  },
                  child: ReusableTagWidget(title: 'Sports'),
                ),

              ]),

            ),
          ),
          // ListView.builder(
          //   itemCount: listItemsSample.length,
          //   itemBuilder: (context, index) {
          //     return ListTile(
          //       title: Text(listItemsSample[index]),
          //     );
          //   },
          // ),


          
        ],
    ));
  }
}

final listItemsSample = ['Albania', 'Andorra', 'Armenia', 'Austria', 
    'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
    'Croatia'];
