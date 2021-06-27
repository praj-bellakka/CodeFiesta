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
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            ReusableTitleWidget(
                title: widget.pageName, fontsize: 40, color: Colors.black),
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
                    child: ReusableTagWidget(title: 'Most Recent'),
                  ),
                  SizedBox(width: 15),
                  InkWell(
                    onTap: () {},
                    child: ReusableTagWidget(title: 'Trending'),
                  ),
                  SizedBox(width: 15),
                  InkWell(
                    onTap: () {},
                    child: ReusableTagWidget(title: 'Top'),
                  ),
                ]),
              ),
            ),
            TextField(
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
            Expanded(
              child: ListView.builder(
                itemCount: displayedList.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 8.0,
                    margin: new EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 6.0),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: ListTile(
                        leading: Text('${index + 1}',
                            style: GoogleFonts.montserrat(
                                fontSize: 34, color: Colors.black)),
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
  Posts(this.name, this.views);
}

Random _random = Random();
List<Posts> sampleList = [
  Posts(loremIpsum(words: 4), _random.nextInt(70000).toInt()),
  Posts(loremIpsum(words: 4), _random.nextInt(70000).toInt()),
  Posts(loremIpsum(words: 4), _random.nextInt(70000).toInt()),
  Posts(loremIpsum(words: 4), _random.nextInt(70000).toInt()),
  Posts(loremIpsum(words: 4), _random.nextInt(70000).toInt()),
  Posts(loremIpsum(words: 4), _random.nextInt(70000).toInt()),
  Posts(loremIpsum(words: 4), _random.nextInt(70000).toInt()),
];
