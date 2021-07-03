
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

                  ColoredBox(
                    color: Color(0xFF164396),
                    child: Column(
                      children: [
                        SizedBox(height: 50),
                        // Title
                        ReusableTitleWidget(title: "Events", fontsize: 40, color: Colors.white),

                        Container(
                            padding: EdgeInsets.all(10),
                            child: Row(children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    tag = true;
                                  });
                                },
                                child: ReusableClickedTagWidget(title: 'Events', color: 0xFF164396),
                              ),
                              SizedBox(width: 10), //Spacing between tags
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    tag = false;
                                  });
                                },
                                child: ReusableTagWidget(title: "Interest Groups", color: 0xFF164396,),
                              ),
                            ],)
                        ),

                        SizedBox(height: 10),

                        //// Searchbar
                        Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: TextField(
                              onTap: () {},
                              readOnly: true,
                              decoration: InputDecoration(
                                labelText: "What are you looking for?",
                                contentPadding: EdgeInsets.fromLTRB(20.0, 7.0, 20.0, 7.0),
                                prefixIcon: Icon(Icons.search),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              )),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),


                  SizedBox(height: 30),
                  // Sub-Title 1
                  ReusableSubTitleWidget(title: "By The Embassy", fontsize: 20, color: Colors.black,),

                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Row(children: [
                        ReusableSmallBoxWidget(
                          header: "National Day",
                          subtitle: "Come in red and white and...",
                          fontsize: 16,
                          path: 'assets/event1.jpg'
                        ),
                        ReusableSmallBoxWidget(
                          header: "Monthly Gathering",
                          subtitle: "New to the community and...",
                          fontsize: 16,
                            path: 'assets/event2.jpg'
                        ),
                        ReusableSmallBoxWidget(
                          header: "Expats Expedition",
                          subtitle: "Networking with fellow Si...",
                          fontsize: 16,
                          path: 'assets/event3.jpg'
                        ),
                      ]),
                    ),
                  ),

                  SizedBox(height: 30),
                  // Sub-Title 2
                  ReusableSubTitleWidget(title: "Online From SG", fontsize: 20, color: Colors.black,),

                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Row(children: [
                        ReusableSmallBoxWidget(
                          header: "National Day",
                          subtitle: "Come in red and white and...",
                          fontsize: 16,
                          path: 'assets/event4.jpg'
                        ),
                        ReusableSmallBoxWidget(
                          header: "Cook Together",
                          subtitle: "Come together and cook...",
                          fontsize: 16,
                            path: 'assets/cooking.jpg'
                        ),
                        ReusableSmallBoxWidget(
                          header: "Netflix Watch Party",
                          subtitle: "Tired and looking for...",
                          fontsize: 16,
                            path: 'assets/netflix.jpg'
                        ),
                      ]),
                    ),
                  ),

                  SizedBox(height: 30),
                  // Sub-Title 3
                    ReusableSubTitleWidget(title: "Networking", fontsize: 20, color: Colors.black,),

                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Row(children: [
                        ReusableSmallBoxWidget(
                          header: "Upcoming Entrepreneurs",
                          subtitle: "Get to know other asp...",
                          fontsize: 16,
                          path: 'assets/home5.jpg',
                        ),
                        ReusableSmallBoxWidget(
                          header: "Casual Dining",
                          subtitle: "Just want to get...",
                          fontsize: 16,
                          path: 'assets/casual-dining.jpg',
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

                    ColoredBox(
                      color: Color(0xFF164396),
                      child: Column(
                        children: [
                          SizedBox(height: 50),
                          // Title
                          ReusableTitleWidget(title: "Interest Groups", fontsize: 40, color: Colors.white),

                          Container(
                              padding: EdgeInsets.all(10),
                              child: Row(children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      tag = true;
                                    });
                                  },
                                  child: ReusableTagWidget(title: 'Events', color: 0xFF164396),
                                ),
                                SizedBox(width: 10), //Spacing between tags
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      tag = false;
                                    });
                                  },
                                  child: ReusableClickedTagWidget(title: "Interest Groups", color: 0xFF164396),
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
                                    child: subtag == 1 ? ReusableClickedTagWidget(title: 'My Interests', color: 0xFF164396) : ReusableTagWidget(title: 'My Interests', color: 0xFF164396),
                                  ),
                                  SizedBox(width: 10), //Spacing between tags
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        subtag = 2;
                                      });
                                    },
                                    child: subtag == 2 ? ReusableClickedTagWidget(title: 'Featured', color: 0xFF164396) : ReusableTagWidget(title: 'Featured', color: 0xFF164396),
                                  ),
                                  SizedBox(width: 10), //Spacing between tags
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        subtag = 3;
                                      });
                                    },
                                    child: subtag == 3 ? ReusableClickedTagWidget(title: 'Most Active', color: 0xFF164396) : ReusableTagWidget(title: 'Most Active', color: 0xFF164396),
                                  ),
                                  SizedBox(width: 10), //Spacing between tags
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        subtag = 4;
                                      });
                                    },
                                    child: subtag == 4 ? ReusableClickedTagWidget(title: 'Newest', color: 0xFF164396) : ReusableTagWidget(title: 'Newest', color: 0xFF164396),
                                  )
                                ],)
                            ),
                          ),

                          SizedBox(height: 10),
                          // Search Bar
                          Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: TextField(
                                onTap: () {},
                                readOnly: true,
                                decoration: InputDecoration(
                                  labelText: "What are you looking for?",
                                  contentPadding: EdgeInsets.fromLTRB(20.0, 7.0, 20.0, 7.0),
                                  prefixIcon: Icon(Icons.search),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                )),
                          ),
                          SizedBox(height: 20,)
                        ],
                      ),
                    ),

                    SizedBox(height: 30),
                    // Sub-Title 1
                    Row(
                      children: [
                        ReusableSubTitleWidget(title: "Your Groups", fontsize: 20, color: Colors.black,),
                        SizedBox(width: 90),

                        InkWell(
                          onTap: () {
                            setState(() {
                              // Insert Func here
                            });
                          },
                          child: Text(
                            '+ New Group'
                          ),
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
                            child: ReusableSmallBoxWidget(
                              header: "Pottery Lovers",
                              subtitle: "",
                              fontsize: 16,
                              path: 'assets/ig1.jpg',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => InterestPage())
                              );
                            },
                            child: ReusableSmallBoxWidget(
                              header: "Daily Jogs",
                              subtitle: "",
                              fontsize: 16,
                              path: 'assets/ig2.jpg',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => InterestPage())
                              );
                            },
                            child: ReusableSmallBoxWidget(
                              header: "Singapore Coders",
                              subtitle: "",
                              fontsize: 16,
                              path: 'assets/ig3.jpg',
                            ),
                          ),
                        ]),
                      ),
                    ),

                    SizedBox(height: 10),
                    // Sub-Title 2
                    ReusableSubTitleWidget(title: "You Might Be Interested In", fontsize: 20, color: Colors.black,),
                    Row(children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => InterestPage())
                          );
                        },
                        child: ReusableMediumBoxWidget(
                          header: "Golfing",
                          subtitle: "Break a sweat...",
                          fontsize: 16,
                          path: 'assets/golfing.jpg',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => InterestPage())
                          );
                        },
                        child: ReusableMediumBoxWidget(
                          header: "Fishing Funs",
                          subtitle: "Catch a big one...",
                          fontsize: 16,
                          path: 'assets/fishing.jpg',
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
                        child: ReusableMediumBoxWidget(
                          header: "Casino Trips",
                          subtitle: "Try your luck...",
                          fontsize: 16,
                          path: 'assets/casino.jpg',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => InterestPage())
                          );
                        },
                        child: ReusableMediumBoxWidget(
                          header: "Italian Cooking",
                          subtitle: "Cook your own ca...",
                          fontsize: 16,
                          path: 'assets/italian-cooking.jpg',
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

