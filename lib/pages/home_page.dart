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
    'I am based in...',
    'United Kingdom',
    'USA',
    'Japan',
    'Germany',
    'France',
    'South Korea'
  ];
  static final List<String> occupation = [
    'I am...',
    'New',
    'Old'
  ];
  String country = items.first;
  String stat = occupation.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ////////// RED SECTION
              ColoredBox(
                color: Color(0xFFCB3720),
                child: Column(
                  children: [
                    SizedBox(height: 70),
                    ReusableTitleWidget(
                        title: "Home",
                        fontsize: 35,
                        color: Colors.white),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        //// I am... Dropdown
                        Container(
                          width: 120,
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

                          child: DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                              child: DropdownButton(
                                value: stat,
                                style: GoogleFonts.montserrat(color: Colors.white),
                                items: occupation.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      "$value",
                                      style: TextStyle(color: Colors.grey),
                                      textAlign: TextAlign.center,
                                    ),
                                  );
                                }).toList(),
                                onChanged: (value) => setState(() {
                                  this.stat = value;
                                }),
                              ),
                            ),
                          ),
                        ),

                        //// I am based in... Dropdown
                        Container(
                          width: 230,
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
                          child: DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                              child: DropdownButton(
                                value: country,
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
                                  this.country = value;
                                }),
                              ),
                            ),
                          ),
                        )
                      ],
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
                    SizedBox(height: 20),
                  ],
                ),
              ),

              ////////// GREY SECTION
              ColoredBox(
                color: Color(0xFFf0f0f0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      height: 200,
                      width: 360,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/homebanner.jpg'),
                          fit: BoxFit.fill,
                        ),
                        border: Border.all(color: Color(0xFFE0EBF2)),
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
                    ),

                    //// Buttons
                    Row(
                      children: [

                        // Covid-19
                        Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 30),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/medical-mask.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  border: Border.all(color: Color(0xFFE0EBF2)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 25, top: 5, bottom: 15),
                                child: Text("Covid-19"),
                              ),
                            ],
                          ),
                        ),

                        //Family
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/village.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  border: Border.all(color: Color(0xFFE0EBF2)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5, bottom: 15),
                                child: Text("Family"),
                              ),
                            ],
                          ),
                        ),

                        // Get Funded
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/business.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  border: Border.all(color: Color(0xFFE0EBF2)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5, bottom: 15),
                                child: Text("Get Funded"),
                              ),
                            ],
                          ),
                        ),

                        // Videos
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/camcorder.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  border: Border.all(color: Color(0xFFE0EBF2)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5, bottom: 15),
                                child: Text("Videos"),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),

              ////////// WHITE SECTION
              ColoredBox(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 20,),
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
                  ],
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
        )
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
