import 'package:codefiesta_app/pages/navBar.dart';
import 'package:codefiesta_app/pages/topics_page.dart';
import 'package:codefiesta_app/services/reusable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPassportPage extends StatefulWidget {
  @override
  _MyPassportPage createState() => _MyPassportPage();
}

class _MyPassportPage extends State<MyPassportPage> {
  //keeps track of the current page displayed
  var displayedList = listItemsPassport;
  @override
  Widget build(BuildContext context) {
    print(listItemsPassport.length);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => NavPage()),
                ModalRoute.withName('/'));
          },
        ),
      ),
      body: Column(
      children: [
        ColoredBox(
          color: Colors.red,
          child: Column(
            children: [
              ReusableTitleWidget(title: "My Passport", fontsize: 40, color: Colors.white),
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
                      child: Image.asset(listItemsPassport[index].path, fit: BoxFit.cover,),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.keyboard_arrow_right_outlined,),
                      onPressed: () {
                        setState(() {
                          listItemsPassport[index].myTag =
                              !listItemsPassport[index].myTag;
                        });
                      },
                    ),
                    title: Text(displayedList[index].name,
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                    subtitle:
                        Text('${displayedList[index].posts.toString()} items',
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            )),
                    onTap: () {
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

List<ForumItems> listItemsPassport = [
  ForumItems('Personal information', 30, true, 'assets/personal-information.png'),
  ForumItems('Digital Passport', 1, false, 'assets/passport.png'),
  ForumItems('Visa', 5, false, 'assets/airplane.png'),
  ForumItems('Travel Documents', 34, false, 'assets/file.png'),
  ForumItems('Contact', 130, false, 'assets/contact.png'),
  ForumItems('Driving license', 1, false, 'assets/rent-a-car.png'),
];
