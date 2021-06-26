import 'package:codefiesta_app/services/reusable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          ReusableTitleWidget(title: "Singapore Global \nNetwork", fontsize: 35, color: Colors.black),
          SizedBox(height:10),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 25,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: TextField(
              onTap: ()  {},
              readOnly: true,
              decoration: InputDecoration(
                labelText: "What are you looking for?",
                contentPadding:
                  EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              )
            ),
          ),

        ],
      ),
    );
  }
}
