import 'package:codefiesta_app/pages/navBar.dart';
import 'package:codefiesta_app/services/dataModels.dart';
import 'package:codefiesta_app/services/reusable_widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//screen 2 - moving to another country
class SettingUpProfile4 extends StatefulWidget {
  final String useType; // either work or studying
  final String stayingType;
  final String country;
  final int movingStatus;

  const SettingUpProfile4(
      {this.useType, this.stayingType, this.country, this.movingStatus});

  @override
  _SettingUpProfile4 createState() => _SettingUpProfile4();
}

class _SettingUpProfile4 extends State<SettingUpProfile4> {
  final dbRef = FirebaseDatabase.instance.reference().child('user');
  final FirebaseAuth _auth = FirebaseAuth.instance;
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
              title: "Sounds awesome!",
              fontsize: 20,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            ReusableDescriptionWidget(
                description:
                    "Last but not least, what are some\nof your interests? Don’t worry, you’ll \nbe able to edit this in the future!"),
            SizedBox(height: 20),
            ReusableTitleWidget(
              title: "Choose up to 4 options!",
              fontsize: 15,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 15),
                AddTagWidgets(
                  index: 0,
                ),
                SizedBox(width: 5),
                AddTagWidgets(
                  index: 1,
                ),
                SizedBox(width: 5),
                AddTagWidgets(
                  index: 2,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 15),
                AddTagWidgets(
                  index: 4,
                ),
                SizedBox(width: 5),
                AddTagWidgets(
                  index: 5,
                ),
                SizedBox(width: 5),
                AddTagWidgets(
                  index: 6,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 15),
                AddTagWidgets(
                  index: 7,
                ),
                SizedBox(width: 5),
                AddTagWidgets(
                  index: 8,
                ),
                SizedBox(width: 5),
                AddTagWidgets(
                  index: 9,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 15),
                AddTagWidgets(
                  index: 10,
                ),
                SizedBox(width: 5),
                AddTagWidgets(
                  index: 11,
                ),
                SizedBox(width: 5),
              ],
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () async {
                print(chosenTags);
                //create profile model
                UserDetails _userDetails = UserDetails(
                    useType: widget.useType,
                    stayingType: widget.stayingType,
                    chosenTags: chosenTags,
                    country: widget.country,
                    movingStatus: widget.movingStatus);

                //upload to firebase database
                await dbRef
                    .child(_auth.currentUser.uid.toString())
                    .child('Profile')
                    .set(_userDetails.toJson());
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => NavPage()),
                    ModalRoute.withName('/'));
                // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingUpProfile4(useType: widget.useType, stayingType: 'Living With Family',)));
              },
              child:
                  ReusableBigButtonWidget(title: 'Done!', color: Colors.purple),
            ),
          ],
        ),
      ),
    );
  }
}

/* widget to automate adding tags */
class AddTagWidgets extends StatefulWidget {
  final index;

  const AddTagWidgets({this.index});
  @override
  _AddTagWidgets createState() => _AddTagWidgets();
}

class _AddTagWidgets extends State<AddTagWidgets> {
  bool showInverted = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            showInverted = !showInverted;
          });
          chosenTags.contains(tagItems[widget.index])
              ? chosenTags.remove(tagItems[widget.index])
              : chosenTags.add(tagItems[widget.index]);
        },
        child: chosenTags.contains(tagItems[widget.index])
            ? ReusableColouredTagWidget(
                color: Colors.purple, title: tagItems[widget.index])
            : ReusableColouredInvertedTagWidget(
                borderColour: Colors.purple, title: tagItems[widget.index]));
  }
}

//list of tags
final List<String> tagItems = [
  'Sports',
  'Photography',
  'Tech & Coding',
  'Cooking',
  'Baking',
  'Board Games',
  'Art',
  'Blogging',
  'Volunteering',
  'Gaming',
  'Music',
  'Movies'
];

//list of chosen tags
List<String> chosenTags = [];
