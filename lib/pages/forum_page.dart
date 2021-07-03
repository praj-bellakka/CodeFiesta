import 'package:codefiesta_app/pages/topics_page.dart';
import 'package:codefiesta_app/services/reusable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForumPage extends StatefulWidget {
  @override
  _ForumPage createState() => _ForumPage();
}

int tag = 1;

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
        ColoredBox(
          color: Color(0xFFef9f40),
          child: Column(
            children: [
              SizedBox(height: 60),
              ReusableTitleWidget(title: "Forum", fontsize: 40, color: Colors.white),

              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          tag = 1;
                          displayedList = listItemsSample;
                        });
                      },
                      child: tag == 1 ? ReusableClickedTagWidget(title: 'Featured Topics', color: 0xFFef9f40) : ReusableTagWidget(title: 'Featured Topics', color: 0xFFef9f40,),
                    ),
                    SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        setState(() {
                          tag = 2;
                          displayedList =
                              listItemsSample.where((i) => i.myTag == true).toList();
                        });
                      },
                      child: tag == 2 ? ReusableClickedTagWidget(title: 'My Interests', color: 0xFFef9f40) : ReusableTagWidget(title: 'My Interests', color: 0xFFef9f40,),
                    ),
                    SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        setState(() {
                          tag = 3;
                          displayedList = listItemsSample
                              .where((i) => i.name == 'Football')
                              .toList();
                        });
                      },
                      child: tag == 3 ? ReusableClickedTagWidget(title: 'Sports', color: 0xFFef9f40) : ReusableTagWidget(title: 'Sports', color: 0xFFef9f40),
                    ),
                  ]),
                ),
              ),

              SizedBox(height: 10)
            ],
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: ListTile(
                    // leading: Icon(Icons.luggage),
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 40,
                        minHeight: 40,
                        maxWidth: 80,
                        maxHeight: 80,
                      ),
                      child: Image.asset(listItemsSample[index].path, fit: BoxFit.cover,),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.keyboard_arrow_right_outlined,),
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
  final path;
  ForumItems(this.name, this.posts, this.myTag, this.path);
}

List<ForumItems> listItemsSample = [
  ForumItems('Work', 30, true, 'assets/work.png'),
  ForumItems('Covid-19', 330, false, 'assets/medical-mask.png'),
  ForumItems('Home', 999, false, 'assets/village.png'),
  ForumItems('Car', 78, false, 'assets/rent-a-car.png'),
  ForumItems('Immigration', 130, false, 'assets/passport.png'),
  ForumItems('Graduation', 930, false, 'assets/graduate.png'),
  ForumItems('Travel', 303, false, 'assets/airplane.png'),
];
