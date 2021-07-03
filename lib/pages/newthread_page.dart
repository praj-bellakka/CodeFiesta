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

class NewThreadPage extends StatefulWidget {
  @override
  _NewThreadPage createState() => _NewThreadPage();
}

class _NewThreadPage extends State<NewThreadPage> {
  //keeps track of the current page displayed
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Color(0xFFef9f40),
        elevation: 0,
      ),

      body: Column(
        children: [
          ColoredBox(
            color: Color(0xFFef9f40),
            child: Column(
              children: [
                ReusableTitleWidget(
                  title: 'New Thread', fontsize: 40, color: Colors.white,
                ),
                SizedBox(height: 10),
              ],
            )
          ),

          SizedBox(height: 10,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30, top: 30, right: 10),
                child: CircleAvatar(backgroundImage:
                  AssetImage(
                    'assets/therock.jpg'
                  ),
                  radius: 25,
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(localUserProfile["firstName"] + " " +  localUserProfile["lastName"],
                    style: TextStyle(fontWeight: FontWeight.bold)),

                  SizedBox(height: 5),
                  SizedBox(
                    height: 40,
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Title'
                      ),
                    ),
                  ),

                  SizedBox(height: 5),

                  SizedBox(
                    height: 40,
                    width: 280,
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'What would you like to say?'
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),

                  Container(
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFef9f40),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Text('Post',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18)))
                ],
              )
            ],
          )




        ],
      )

    );
  }
}