
import 'package:codefiesta_app/pages/interest_page.dart';
import 'package:codefiesta_app/services/reusable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {

  @override
  _FriendsPage createState() => _FriendsPage();
}
// true -- Events , false -- Interest Groups
bool tag = true;
int subtag = 1;

class _FriendsPage extends State<FriendsPage> {
  //keeps track of the current page displayed
  @override
  Widget build(BuildContext context) {
    if (tag)
      {
        ///////////EVENTS///////////
        return Scaffold(
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(height: 50),
                  // Title
                  ReusableTitleWidget(title: "Events", fontsize: 40, color: Colors.black),
                  // Tags
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Row(children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              tag = true;
                            });
                          },
                          child: ReusableClickedTagWidget(title: 'Events',),
                        ),
                        SizedBox(width: 10), //Spacing between tags
                        InkWell(
                          onTap: () {
                            setState(() {
                              tag = false;
                            });
                          },
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

                  SizedBox(height: 30),
                  // Sub-Title 1
                  Row(children: [
                    ReusableTitleWidget(title: "By The Embassy", fontsize: 20, color: Colors.black,),
                    SizedBox(width: 20),
                    Icon(
                        Icons.keyboard_arrow_right_outlined,
                        size: 35
                    ),
                  ],
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Row(children: [
                        ReusableBoxWidget(
                          header: "National Day",
                          subtitle: "Come in red and white and...",
                          fontsize: 16,
                        ),
                        ReusableBoxWidget(
                          header: "Monthly Gathering",
                          subtitle: "New to the community and...",
                          fontsize: 16,
                        ),
                        ReusableBoxWidget(
                          header: "Expats Expedition",
                          subtitle: "Networking with fellow Singaporeans...",
                          fontsize: 16,
                        ),
                      ]),
                    ),
                  ),

                  SizedBox(height: 30),
                  // Sub-Title 2
                  Row(children: [
                    ReusableTitleWidget(title: "Online From SG", fontsize: 20, color: Colors.black,),
                    SizedBox(width: 20),
                    Icon(
                        Icons.keyboard_arrow_right_outlined,
                        size: 35
                    ),
                  ],
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Row(children: [
                        ReusableBoxWidget(
                          header: "National Day",
                          subtitle: "Come in red and white and...",
                          fontsize: 16,
                        ),
                        ReusableBoxWidget(
                          header: "Cook Together",
                          subtitle: "Come together and cook some of Singapore's famous...",
                          fontsize: 16,
                        ),
                        ReusableBoxWidget(
                          header: "Netflix Watch Party",
                          subtitle: "Tired and looking for a break? Come join...",
                          fontsize: 16,
                        ),
                      ]),
                    ),
                  ),

                  SizedBox(height: 30),
                  // Sub-Title 3
                  Row(children: [
                    ReusableTitleWidget(title: "Networking", fontsize: 20, color: Colors.black,),
                    SizedBox(width: 20),
                    Icon(
                        Icons.keyboard_arrow_right_outlined,
                        size: 35
                    ),
                  ],
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Row(children: [
                        ReusableBoxWidget(
                          header: "Upcoming Entrepreneurs",
                          subtitle: "Get to know other aspiring entrepreneurs...",
                          fontsize: 16,
                        ),
                        ReusableBoxWidget(
                          header: "Casual Dining",
                          subtitle: "Just want to get to know other people? Come...",
                          fontsize: 16,
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            )
        );
      }
      else
        {
          ///////////INTEREST GROUPS///////////
          return Scaffold(
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    // Title
                    ReusableTitleWidget(title: "Interest Groups", fontsize: 40, color: Colors.black),

                    // Tags
                    Container(
                        padding: EdgeInsets.all(10),
                        child: Row(children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                tag = true;
                              });
                            },
                            child: ReusableTagWidget(title: 'Events',),
                          ),
                          SizedBox(width: 10), //Spacing between tags
                          InkWell(
                            onTap: () {
                              setState(() {
                                tag = false;
                              });
                            },
                            child: ReusableClickedTagWidget(title: "Interest Groups",),
                          ),
                        ],)
                    ),

                    SizedBox(height: 10),
                    // Interest Groups tags
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Container(
                          padding: EdgeInsets.all(10),
                          child: Row(children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  subtag = 1;
                                });
                              },
                              child: subtag == 1 ? ReusableClickedTagWidget(title: 'My Interests') : ReusableTagWidget(title: 'My Interests'),
                            ),
                            SizedBox(width: 10), //Spacing between tags
                            InkWell(
                              onTap: () {
                                setState(() {
                                  subtag = 2;
                                });
                              },
                              child: subtag == 2 ? ReusableClickedTagWidget(title: 'Featured') : ReusableTagWidget(title: 'Featured'),
                            ),
                            SizedBox(width: 10), //Spacing between tags
                            InkWell(
                              onTap: () {
                                setState(() {
                                  subtag = 3;
                                });
                              },
                              child: subtag == 3 ? ReusableClickedTagWidget(title: 'Most Active') : ReusableTagWidget(title: 'Most Active'),
                            ),
                            SizedBox(width: 10), //Spacing between tags
                            InkWell(
                              onTap: () {
                                setState(() {
                                  subtag = 4;
                                });
                              },
                              child: subtag == 4 ? ReusableClickedTagWidget(title: 'Newest') : ReusableTagWidget(title: 'Newest'),
                            )
                          ],)
                      ),
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

                    SizedBox(height: 30),
                    // Sub-Title 1
                    Row(children: [
                      ReusableTitleWidget(title: "My Groups", fontsize: 20, color: Colors.black,),
                      SizedBox(width: 20),
                      Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 35
                      ),
                      SizedBox(width: 160),
                      Icon(
                        Icons.add_box,
                        size: 35
                      )
                    ],
                    ),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: Row(children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => InterestPage())
                              );
                            },
                            child: ReusableBoxWidget(
                              header: "Pottery Lovers",
                              subtitle: "",
                              fontsize: 16,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => InterestPage())
                              );
                            },
                            child: ReusableBoxWidget(
                              header: "Daily Jogs",
                              subtitle: "",
                              fontsize: 16,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => InterestPage())
                              );
                            },
                            child: ReusableBoxWidget(
                              header: "Singapore Coders",
                              subtitle: "",
                              fontsize: 16,
                            ),
                          ),
                        ]),
                      ),
                    ),

                    SizedBox(height: 10),
                    // Sub-Title 2
                    ReusableTitleWidget(title: "You Might Be Interested In", fontsize: 20, color: Colors.black,),
                    Row(children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => InterestPage())
                          );
                        },
                        child: ReusableBigBoxWidget(
                          header: "Golfing",
                          subtitle: "Break a sweat...",
                          fontsize: 16,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => InterestPage())
                          );
                        },
                        child: ReusableBigBoxWidget(
                          header: "Fishing Funs",
                          subtitle: "Catch a big one...",
                          fontsize: 16,
                        ),
                      ),
                    ]),
                    SizedBox(height: 10,),
                    Row(children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => InterestPage())
                          );
                        },
                        child: ReusableBigBoxWidget(
                          header: "Casino Trips",
                          subtitle: "Try your luck...",
                          fontsize: 16,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => InterestPage())
                          );
                        },
                        child: ReusableBigBoxWidget(
                          header: "Italian Cooking",
                          subtitle: "Cook your own carbonara today...",
                          fontsize: 16,
                        ),
                      ),
                    ]),

                    SizedBox(height: 10),
                    Icon(
                      Icons.arrow_drop_down_circle,
                      size: 50,
                    ),
                  ],
                ),
              )
          );
        }
  }
}

