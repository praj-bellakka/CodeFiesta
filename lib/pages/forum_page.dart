import 'package:codefiesta_app/pages/topics_page.dart';
import 'package:codefiesta_app/services/reusable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForumPage extends StatefulWidget {
  @override
  _ForumPage createState() => _ForumPage();
}

class _ForumPage extends State<ForumPage> {
  //keeps track of the current page displayed
  int selectedPage = 1;
  var displayedList = listItemsSample;
  @override
  Widget build(BuildContext context) {
    print(listItemsSample.length);
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 60),
        ReusableTitleWidget(title: "Forum", fontsize: 40, color: Colors.black),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Row(children: [
              InkWell(
                onTap: () {
                  setState(() {
                    displayedList = listItemsSample;
                  });
                },
                child: ReusableTagWidget(title: 'Featured Topics'),
              ),
              SizedBox(width: 15),
              InkWell(
                onTap: () {
                  setState(() {
                    displayedList =
                        listItemsSample.where((i) => i.myTag == true).toList();
                  });
                },
                child: ReusableTagWidget(title: 'My Interests'),
              ),
              SizedBox(width: 15),
              InkWell(
                onTap: () {
                  setState(() {
                    displayedList = listItemsSample
                        .where((i) => i.name == 'Football')
                        .toList();
                  });
                },
                child: ReusableTagWidget(title: 'Sports'),
              ),
            ]),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: displayedList.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 8.0,
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: ListTile(
                    leading: Icon(Icons.luggage),
                    trailing: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          listItemsSample[index].myTag =
                              !listItemsSample[index].myTag;
                        });
                      },
                    ),
                    title: Text(displayedList[index].name,
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                    subtitle:
                        Text('${displayedList[index].posts.toString()} replies',
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            )),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => TopicsPage(pageName:'${displayedList[index].name}'))
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ));
  }
}

class ForumItems {
  final String name;
  final int posts;
  bool myTag;
  ForumItems(this.name, this.posts, this.myTag);
}

List<ForumItems> listItemsSample = [
  ForumItems('Work', 30, true),
  ForumItems('Covid-19', 330, false),
  ForumItems('Celebrity drama', 999, false),
  ForumItems('Stock trends', 78, false),
  ForumItems('School', 130, false),
  ForumItems('Football', 930, false),
  ForumItems('Crime', 303, false),
  ForumItems('Singapore Stuffs', 320, true),
];
