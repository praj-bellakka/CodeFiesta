import 'package:codefiesta_app/pages/set_up_profile_page3.dart';
import 'package:codefiesta_app/services/reusable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//screen 2 - moving to another country
class SettingUpProfile2 extends StatefulWidget {
  /*method 1 = Preparing to move out of SG
    method 2 = Already moved out of SG*/
  final int method;
  const SettingUpProfile2({this.method});

  @override
  _SettingUpProfile2 createState() => _SettingUpProfile2();
}

class _SettingUpProfile2 extends State<SettingUpProfile2> {
  static final List<String> items = [
    'Select a country',
    'United Kingdom',
    'USA',
    'Japan',
    'Germany',
    'France',
    'South Korea'
  ];
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
              title: "We're so excited for you!",
              fontsize: 20,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            ReusableDescriptionWidget(description: widget.method == 1 ? "Where did you move to?" : "Where are you going to?"),
            SizedBox(height: 10),
            //// I am based in... Dropdown
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
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
              child: DropdownButtonHideUnderline(
                child: ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton(
                    value: countryBasedIn == ''
                        ? 'Select a country'
                        : countryBasedIn,
                    style: GoogleFonts.montserrat(color: Colors.white),
                    items: items.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          "$value",
                          style: TextStyle(color: Colors.grey),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) => setState(() {
                      this.countryBasedIn = value;
                    }),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            ReusableDescriptionWidget(
                description:
                    "For HomeAway to recommend\nrelevant events held by the embassy\nin your country, we want to know if\nyou are studying or working."),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingUpProfile3(useType: 'Student', country: countryBasedIn, movingStatus: widget.method,)));
              },
              child: ReusableBigButtonWidget(
                  title: 'Studying', color: Colors.orange),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingUpProfile3(useType: 'Work', country: countryBasedIn, movingStatus: widget.method)));
              },
              child: ReusableBigButtonWidget(
                  title: 'Working', color: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
