import 'package:codefiesta_app/services/reusable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InterestPage extends StatefulWidget {

  @override
  _InterestPage createState() => _InterestPage();
}

class _InterestPage extends State<InterestPage> {
  //keeps track of the current page displayed
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

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("      Joined on 27 Jun 2021"),
            ReusableTitleWidget(title: "Lorem ipsum sit amet", color: Colors.black, fontsize: 25,),
            Text("      Created by John Smith"),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in enim consequat, condimentum massa id, convallis sapien. Fusce mauris orci, gravida eu aliquet sed, semper nec lacus. Lorem ipsum dolor sit amet,"),
            ),

            SizedBox(height: 10),

            Row(
              children: [
                SizedBox(width: 15),
                Icon(Icons.account_circle, size: 50,),
                Text("  + 63 others"),
                SizedBox(width: 60),
                ReusableTagWidget(title: "View Members",)
              ],),

            // Meetup 1
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 5),
                  Row(
                    children: [
                      ReusableTitleWidget(title: "Next Meetup", color: Colors.black, fontsize: 25),
                      SizedBox(width: 70),
                      Text("30 July 2021")
                    ],
                  ),
                  SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.account_circle, size: 50,),
                      Text("+ 2 Others ")
                    ],
                  )
                ],
              ),
            ),

            // Meetup 2
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 5),
                  Row(
                    children: [
                      ReusableTitleWidget(title: "Next Meetup", color: Colors.black, fontsize: 25),
                      SizedBox(width: 70),
                      Text("3 Aug 2021")
                    ],
                  ),
                  SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.account_circle, size: 50,),
                      Text("+ 5 Others ")
                    ],
                  )
                ],
              ),
            ),

            // Meetup 3
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 5),
                  Row(
                    children: [
                      ReusableTitleWidget(title: "Next Meetup", color: Colors.black, fontsize: 25),
                      SizedBox(width: 70),
                      Text("12 Aug 2021")
                    ],
                  ),
                  SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.account_circle, size: 50,),
                      Text("+ 28 Others ")
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      )
    );
  }
}