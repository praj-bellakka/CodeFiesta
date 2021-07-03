import 'package:codefiesta_app/pages/explanation_page.dart';
import 'package:codefiesta_app/pages/onbarding_pages.dart';
import 'package:codefiesta_app/pages/register_page.dart';
import 'package:codefiesta_app/pages/set_up_profile_page2.dart';
import 'package:codefiesta_app/services/reusable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class SettingUpProfile1 extends StatefulWidget {
  final lastName;

  const SettingUpProfile1({Key key, this.lastName}) : super(key: key);
  @override
  _SettingUpProfile1 createState() => _SettingUpProfile1();
}

class _SettingUpProfile1 extends State<SettingUpProfile1> {
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
              title: 'Welcome to HomeAway, ${widget.lastName}!',
              fontsize: 20,
              color: Colors.black,
            ),
            SizedBox(height:30),
            ReusableDescriptionWidget(
              description: "We’d love to get to know more\n about you in order to personalise \nyour HomeAway experience."),
            SizedBox(height:20),
            ReusableDescriptionWidget(
              description: ("Let’s start with the basics.\n Which option best describes you?\n")),
            SizedBox(height:20),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingUpProfile2(method: 1)));
              },
              child: ReusableBigButtonWidget(title: 'Preparing to move out of SG', color: Colors.red),
            ),
                        SizedBox(height:20),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingUpProfile2(method: 2)));
              },
              child: ReusableBigButtonWidget(title: 'Already moved out of SG', color: Colors.red),
            ),
            SizedBox(height:20),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingUpProfile2(method: 3)));
              },
              child: ReusableBigButtonWidget(title: "I'm still exploring my options", color: Colors.red),
            ),

          ],
        ),
      ),

    );
  }
}
