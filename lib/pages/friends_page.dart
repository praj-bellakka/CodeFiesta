
import 'package:codefiesta_app/services/reusable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {

  @override
  _EventsPage createState() => _EventsPage();
}

class _EventsPage extends State<EventsPage> {
  //keeps track of the current page displayed
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          // Title
          ReusableTitleWidget(title: "Events", fontsize: 40, color: Colors.black),
          // Tags
          Container(
            padding: EdgeInsets.all(10),
            child: Row(children: [
                InkWell(
                  child: ReusableTagWidget(title: 'Events',),
                ),
                SizedBox(width: 10), //Spacing between tags
                InkWell(
                  child: ReusableTagWidget(title: "Interest Groups",),
                ),
              ],)
          ),

          SizedBox(height: 10),
          // Search Bar
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
                onTap: () {},
                readOnly: true,
                decoration: InputDecoration(
                  labelText: "What are you looking for?",
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                )),
          ),

        ],
    ));
  }
}

