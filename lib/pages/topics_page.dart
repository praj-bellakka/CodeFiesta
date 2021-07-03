import 'dart:math';

import 'package:codefiesta_app/services/reusable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class TopicsPage extends StatefulWidget {
  final pageName;
  
  const TopicsPage({Key key, this.pageName}) : super(key: key);
  @override
  _TopicsPage createState() => _TopicsPage();
}

class _TopicsPage extends State<TopicsPage> {
  var displayedList = sampleList;
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
                      title: widget.pageName, fontsize: 40, color: Colors.white),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(children: [
                        InkWell(
                          onTap: () {
                            // setState(() {
                            //   displayedList = listItemsSample;
                            // });
                          },
                          child: ReusableClickedTagWidget(title: 'Most Recent', color: 0xFFef9f40),
                        ),
                        SizedBox(width: 15),
                        InkWell(
                          onTap: () {},
                          child: ReusableTagWidget(title: 'Trending', color: 0xFFef9f40),
                        ),
                        SizedBox(width: 15),
                        InkWell(
                          onTap: () {},
                          child: ReusableTagWidget(title: 'Top', color: 0xFFef9f40),
                        ),
                      ]),
                    ),
                  ),

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

                  SizedBox(height: 10,)
                ],
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: displayedList.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 8.0,
                    margin: new EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 6.0),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      
                      child: ListTile(
                        leading: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 40,
                            minHeight: 40,
                            maxWidth: 80,
                            maxHeight: 80,
                          ),
                          child: Image.asset(sampleList[index].path, fit: BoxFit.cover,),
                        ),
                        title: Text(displayedList[index].name,
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: Text('${displayedList[index].views} views',
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            )),
                        onTap: () {},
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

class Posts {
  final String name;
  final int views;
  final path;
  Posts(this.name, this.views, this.path);
}

Random _random = Random();
List<Posts> sampleList = [
  Posts(loremIpsum(words: 4), _random.nextInt(70000).toInt(), 'assets/person1.PNG'),
  Posts(loremIpsum(words: 4), _random.nextInt(70000).toInt(), 'assets/person2.PNG'),
  Posts(loremIpsum(words: 4), _random.nextInt(70000).toInt(), 'assets/person3.PNG'),
  Posts(loremIpsum(words: 4), _random.nextInt(70000).toInt(), 'assets/person1.PNG'),
  Posts(loremIpsum(words: 4), _random.nextInt(70000).toInt(), 'assets/person4.PNG'),
  Posts(loremIpsum(words: 4), _random.nextInt(70000).toInt(), 'assets/person5.PNG'),
  Posts(loremIpsum(words: 4), _random.nextInt(70000).toInt(), 'assets/person6.PNG'),
];
