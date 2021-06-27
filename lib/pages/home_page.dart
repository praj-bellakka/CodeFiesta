import 'package:codefiesta_app/services/reusable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  static final List<String> items = [
    'United Kingdom',
    'USA',
    'Japan',
    'Germany',
    'France',
    'South Korea'
  ];
  String country = items.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          ReusableTitleWidget(
              title: "Singapore Global \nNetwork",
              fontsize: 35,
              color: Colors.black),
          SizedBox(height: 10),
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
          SizedBox(height: 20),
          Row(
            children: [
            ReusableTitleWidget(title: 'I am based in:   ', fontsize: 20, color: Colors.black,),
            DropdownButton(
              value: country,
              style: GoogleFonts.montserrat(color: Colors.white),
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    "$value",
                    style: TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
              hint: Text('I am based in...',
                  style: GoogleFonts.montserrat(
                      color: Colors.black, fontWeight: FontWeight.w500)),
              onChanged: (value) => setState(() {
                this.country = value;
              }),
            ),
            ],
          ),
          
          ReusableTitleWidget(
              title: "Guides", fontsize: 20, color: Colors.black),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Row(children: [
                ReusableBoxWidget(
                  header: "How to Survive in $country",
                  subtitle: "5 ways you will have the time of your life!",
                  fontsize: 16,
                ),
                ReusableBoxWidget(
                  header: "Sightseeing tips",
                  subtitle: "Nice places to visit in $country",
                  fontsize: 16,
                ),
                ReusableBoxWidget(
                  header: "Hidden Gems in $country",
                  subtitle: "Find out places in $country that you can't believe exists!",
                  fontsize: 16,
                ),
              ]),
            ),
          ),
          SizedBox(height: 20),
          ReusableTitleWidget(
              title: "Useful Links", fontsize: 20, color: Colors.black),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Row(children: [
                InkWell(
                  onTap: () async {
                    //await _launchURL('https://www.google.com');
                    launch("https://www.mindef.gov.sg");
                    print("pressed");
                  },
                  child: ReusableBoxWidget(
                    header: "MINDEF",
                    subtitle: "you can never escape",
                    fontsize: 16,
                  ),
                ),
                InkWell(
                  onTap: () async {
                    print("pressed");
                    launch("https://mfa.gov.sg");
                  },
                  child: ReusableBoxWidget(
                    header: "SG Embassy",
                    subtitle: "Important",
                    fontsize: 16,
                  ),
                ),
                InkWell(
                  onTap: () async {
                    print("pressed");
                    launch("https://www.bbc.com/");
                  },
                  child: ReusableBoxWidget(
                    header: "BBC News",
                    subtitle: "Find out the latest news in $country",
                    fontsize: 16,
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}
