import 'package:codefiesta_app/pages/explanation_page.dart';
import 'package:codefiesta_app/pages/register_page.dart';
import 'package:codefiesta_app/services/reusable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPage createState() => _OnBoardingPage();
}

class _OnBoardingPage extends State<OnBoardingPage> {
  //controller to control the current page
  final _controller = PageController();
  int _currentIndex = 0; //current page

  //Create animated indicator bar
  createCircle({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 90),
      margin: EdgeInsets.only(right: 5),
      height: 5,
      width: _currentIndex == index
          ? 15
          : 5, //make the current indicator 3x bigger than others
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(3)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: explanationData[_currentIndex].backgroundColor,
        child: SafeArea(
            child: Container(
          padding: EdgeInsets.all(16),
          color: explanationData[_currentIndex].backgroundColor,
          alignment: Alignment.center,
          child: Column(children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          child: PageView(
                              scrollDirection: Axis.horizontal,
                              controller: _controller,
                              onPageChanged: (value) {
                                // _painter.changeIndex(value);
                                setState(() {
                                  _currentIndex = value;
                                });
                                // notifyListeners();
                              },
                              children: explanationData
                                  .map((e) => ExplanationPage(data: e))
                                  .toList())),
                      flex: 4),
                  Expanded(
                      flex: 1,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 24),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                      explanationData.length,
                                      (index) => createCircle(index: index)),
                                )),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: _currentIndex ==
                                        explanationData.length - 1
                                    ? [
                                        Expanded(
                                          child: ConstrainedBox(
                                              constraints: BoxConstraints(
                                                maxHeight: 70.0,
                                              ),
                                              child: TextButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Register()),
                                                    );
                                                  },
                                                  child: Container(
                                                      child: Text(
                                                    "Get started",
                                                    style: GoogleFonts
                                                        .montserrat(),
                                                  )))),
                                        )
                                      ]
                                    : [
                                        Row(
                                          children: [
                                            TextButton(
                                                child: Text("Next"),
                                                onPressed: () {
                                                  _controller.nextPage(
                                                      duration: Duration(
                                                          milliseconds: 200),
                                                      curve: Curves.easeInOut);
                                                }),
                                            Container(
                                                alignment: Alignment.center,
                                                child: Icon(Icons.arrow_right,
                                                    color: Colors.white))
                                          ],
                                        )
                                      ])
                          ]))
                ],
              ),
            )
          ]),
        )));
  }
}

//class to hold information for the onboarding screens
class ExplanationData {
  final String boldText;
  final String description;
  final String imageSrc;
  final Color backgroundColor;

  ExplanationData(
      {this.boldText, this.description, this.imageSrc, this.backgroundColor});
}

//list that holds ExplanationData values
//TODO: add real text
final List<ExplanationData> explanationData = [
  ExplanationData(
      boldText:
          "Heading away from home or looking to make Singapore your home?\n",
      description:
          "HomeAway is here to make your move and stay overseas smooth and steady!",
      imageSrc: 'assets/onboard1.png',
      backgroundColor: Colors.white),
  ExplanationData(
      boldText: "Looking for useful and reliable information?",
      description:
          "HomeAway offers guides, resources, and updates tailored to meet your needs based on the country you’re moving to or came from!",
      imageSrc: 'assets/onboard2.png',
      backgroundColor: Colors.white),
  ExplanationData(
      boldText: "Looking for a community?",
      description:
          "Set up your profile and connect with people through joining events, interest groups, or finding people near you!",
      imageSrc: 'assets/onboard3.png',
      backgroundColor: Colors.white),
  ExplanationData(
      boldText: "Looking for answers with that personal touch?",
      description:
          "HomeAway’s forums allow people to share their experiences, provide genuine responses to queries, and so much more!",
      imageSrc: 'assets/onboard4.png',
      backgroundColor: Colors.white),
];
