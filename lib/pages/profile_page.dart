import 'package:codefiesta_app/pages/friends_page.dart';
import 'package:codefiesta_app/pages/navBar.dart';
import 'package:codefiesta_app/pages/places_page.dart';
import 'package:codefiesta_app/services/dataModels.dart';
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
          ColoredBox(
            color: Color(0xFF58136e),
            child: Column(
              children: [
                ////////// PROFILE DETAILS
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text("   " + localUserProfile["firstName"] + " " +  localUserProfile["lastName"], style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w800, color: Colors.white),),
                      ),
                    ),

                    SizedBox(width: 10),
                    Text(
                      "New York, NY",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    SizedBox(width: 50),
                    Icon(Icons.edit, size: 35, color: Colors.white,),
                  ],
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    CircleAvatar(backgroundImage:
                    AssetImage(
                        'assets/therock.jpg'
                    ),
                      radius: 50,
                    ),
                    Column(
                      children: [
                        Container(
                          constraints: BoxConstraints(minWidth: 100, maxWidth: 200),
                          child: Text(
                              "I am " + localUserProfile["firstName"] + " " +  localUserProfile["lastName"] + " and I love CodeFiesta! My other hobbies are drawing and cooking!", style: TextStyle(fontSize: 12, color: Colors.white)),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            ReusableColouredTagWidget(
                              title: "Student",
                              color: Color(0xFFb969d5),
                            ),
                            SizedBox(width: 5),
                            ReusableColouredTagWidget(
                              title: "Living Alone",
                              color: Color(0xFFb969d5),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            ReusableColouredTagWidget(
                              title: "Sports",
                              color: Color(0xFF8e1ab5),
                            ),
                            SizedBox(width: 5),
                            ReusableColouredTagWidget(
                              title: "Photography",
                              color: Color(0xFF8e1ab5),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            ReusableColouredTagWidget(
                              title: "Art",
                              color: Color(0xFF8e1ab5),
                            ),
                            SizedBox(width: 5),
                            ReusableColouredTagWidget(
                              title: "Reading",
                              color: Color(0xFF8e1ab5),
                            ),
                            SizedBox(width: 5),
                            ReusableColouredTagWidget(
                              title: "Cook",
                              color: Color(0xFF8e1ab5),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),

                SizedBox(height: 10),

              ],
            ),
          ),



          ////////// COMMENTS
          // Comment 1
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black45)),
            child: Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(backgroundImage:
                AssetImage(
                    'assets/therock.jpg'
                ),
                  radius: 25,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Text(localUserProfile["firstName"] + " " +  localUserProfile["lastName"]),
                        SizedBox(width: 20),
                        Text("3 hr ago")
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
                      child: Text(
                          "Hey dudette! Just want to say I had a blast with you that day! Looking forward to seeing you again!"),
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
                color: Colors.white,
                border: Border.all(color: Colors.black45)),
            child: Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(backgroundImage:
                AssetImage(
                    'assets/therock.jpg'
                ),
                  radius: 25,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Text(localUserProfile["firstName"] + " " +  localUserProfile["lastName"]),
                        SizedBox(width: 20),
                        Text("4 hr ago")
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
                      child: Text(
                          "Hey dudette! Just want to say I had a blast with you that day! Looking forward to seeing you again!"),
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
                color: Colors.white,
                border: Border.all(color: Colors.black45)),
            child: Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(backgroundImage:
                AssetImage(
                    'assets/therock.jpg'
                ),
                  radius: 25,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Text(localUserProfile["firstName"] + " " +  localUserProfile["lastName"]),
                        SizedBox(width: 20),
                        Text("6 hr ago")
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
                      child: Text(
                          "Hey dude! Just want to say I had a blast with you that day! Looking forward to seeing you again!"),
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
                color: Colors.white,
                border: Border.all(color: Colors.black45)),
            child: Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(backgroundImage:
                AssetImage(
                    'assets/therock.jpg'
                ),
                  radius: 25,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Text(localUserProfile["firstName"] + " " +  localUserProfile["lastName"]),
                        SizedBox(width: 20),
                        Text("13 hr ago")
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
                      child: Text(
                          "Hey dude! Just want to say I had a blast with you that day! Looking forward to seeing you again!"),
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
