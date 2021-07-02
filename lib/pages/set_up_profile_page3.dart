import 'package:codefiesta_app/services/reusable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//screen 2 - moving to another country
class SettingUpProfile3 extends StatefulWidget {
  final String useType; // either work or studying
  const SettingUpProfile3({this.useType});

  @override
  _SettingUpProfile3 createState() => _SettingUpProfile3();
}

class _SettingUpProfile3 extends State<SettingUpProfile3> {
  static final List<String> items = [
    'Select a country',
    'United Kingdom',
    'USA',
    'Japan',
    'Germany',
    'France',
    'South Korea'
  ];
  bool _toggled1 = false;
  bool _toggled2 = false;
  bool _toggled3 = false;
  bool _toggled4 = false;

  String countryBasedIn = items.first;


  //welcome screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            ReusableTitleWidget(
              title: "That's great!",
              fontsize: 20,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            ReusableDescriptionWidget(
                description:
                    "We understand that living in a foreign\ncountry isn’t easy. What do you need\nhelp with? Select all that apply."),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                setState(() {
                  _toggled1 = !_toggled1;
                });
              },
              child: _toggled1  
                ?  ReusableColouredTagWidget(
                      color: Colors.green,
                      title: 'Finding useful and reliable information') 
                :  ReusableColouredInvertedTagWidget(
                      borderColour: Colors.green,
                      title: 'Finding useful and reliable information')
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                setState(() {
                  _toggled2 = !_toggled2;
                });
              },
              child: _toggled2  
                ?  ReusableColouredTagWidget(
                      color: Colors.green,
                      title: 'Keeping track of essential information and updates') 
                :  ReusableColouredInvertedTagWidget(
                      borderColour: Colors.green,
                      title: 'Keeping track of essential information and updates')
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                setState(() {
                  _toggled3 = !_toggled3;
                });
              },
              child: _toggled3  
                ?  ReusableColouredTagWidget(
                      color: Colors.green,
                      title: 'Find and join groups with similar interests') 
                :  ReusableColouredInvertedTagWidget(
                      borderColour: Colors.green,
                      title: 'Find and join groups with similar interests')
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                setState(() {
                  _toggled4 = !_toggled4;
                });
              },
              child: _toggled4  
                ?  ReusableColouredTagWidget(
                      color: Colors.green,
                      title: 'Participating in Singaporean events') 
                :  ReusableColouredInvertedTagWidget(
                      borderColour: Colors.green,
                      title: 'Participating in Singaporean events')
            ),

            SizedBox(height: 20),
            ReusableTitleWidget(
              title: "Also, are you alone or will you be...",
              fontsize: 15,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ()));
              },
              child: ReusableBigButtonWidget(
                  title: 'Living Alone', color: Colors.green),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ()));
              },
              child: ReusableBigButtonWidget(
                  title: 'Living With Family', color: Colors.green),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ()));
              },
              child: ReusableBigButtonWidget(
                  title: 'Living With Others', color: Colors.green),
            ),
           
          ],
        ),
      ),
    );
  }
}
