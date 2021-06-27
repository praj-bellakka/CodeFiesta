import 'package:codefiesta_app/pages/friends_page.dart';
import 'package:codefiesta_app/pages/navBar.dart';
import 'package:codefiesta_app/pages/places_page.dart';
import 'package:codefiesta_app/services/reusable_widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'forum_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ////////// PROFILE DETAILS
          SizedBox(height: 50),
          Row(
            children: [
              ReusableTitleWidget(
                  title: "John Smith", fontsize: 30, color: Colors.black),
              SizedBox(width: 10),
              Text(
                "New York, NY",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(width: 50),
              Icon(Icons.edit, size: 35),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 10),
              Icon(Icons.account_circle, size: 130),
              Column(
                children: [
                  Container(
                    constraints: BoxConstraints(minWidth: 100, maxWidth: 200),
                    child: Text(
                        "I am John Smith and I love CodeFiesta! My other hobbies are drawing and cooking!"),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      ReusableLightTagWidget(
                        title: "Student",
                      ),
                      SizedBox(width: 5),
                      ReusableLightTagWidget(
                        title: "Living Alone",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      ReusableDarkTagWidget(
                        title: "Sports",
                      ),
                      SizedBox(width: 5),
                      ReusableDarkTagWidget(
                        title: "Photography",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      ReusableDarkTagWidget(
                        title: "Art",
                      ),
                      SizedBox(width: 5),
                      ReusableDarkTagWidget(
                        title: "Reading",
                      ),
                      SizedBox(width: 5),
                      ReusableDarkTagWidget(
                        title: "Cook",
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),

          SizedBox(height: 10),
          ////////// COMMENTS
          // Comment 1
          Container(
            decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(color: Colors.black45)),
            child: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.account_circle, size: 50),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Text("Sarah Smith"),
                        SizedBox(width: 20),
                        Text("3 hr ago")
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
                      child: Text(
                          "Hey John! Just want to say I had a blast with you that day! Looking forward to seeing you again!"),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 220),
                        Text("18 Likes"),
                        Icon(Icons.favorite, color: Colors.red)
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),

          //Comment 2
          Container(
            decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(color: Colors.black45)),
            child: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.account_circle, size: 50),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Text("Dave Smith"),
                        SizedBox(width: 20),
                        Text("4 hr ago")
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
                      child: Text(
                          "Hey John! Just want to say I had a blast with you that day! Looking forward to seeing you again!"),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 220),
                        Text("27 Likes"),
                        Icon(Icons.favorite, color: Colors.red)
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),

          // Comment 3
          Container(
            decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(color: Colors.black45)),
            child: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.account_circle, size: 50),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Text("Sean Smith"),
                        SizedBox(width: 20),
                        Text("6 hr ago")
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
                      child: Text(
                          "Hey John! Just want to say I had a blast with you that day! Looking forward to seeing you again!"),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 220),
                        Text("5 Likes"),
                        Icon(Icons.favorite, color: Colors.red)
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),

          // Comment 4
          Container(
            decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(color: Colors.black45)),
            child: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.account_circle, size: 50),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Text("Ash Smith"),
                        SizedBox(width: 20),
                        Text("13 hr ago")
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
                      child: Text(
                          "Hey John! Just want to say I had a blast with you that day! Looking forward to seeing you again!"),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 220),
                        Text("2 Likes"),
                        Icon(Icons.favorite, color: Colors.red)
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),

          SizedBox(height: 10),

          ////////// LOGOUT
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    final FirebaseAuth _auth = FirebaseAuth.instance;
                    setState(() {
                      _auth.signOut();
                    });
                  },
                  child: Row(
                    children: [
                      Icon(Icons.logout_outlined),
                      Text("Log Out",
                          style: GoogleFonts.montserrat(
                              fontSize: 20, fontWeight: FontWeight.w800))
                    ],
                  )),
            ],
          ),

          SizedBox(height: 15)
        ],
      ),
    ));
  }
}
