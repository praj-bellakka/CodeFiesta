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
        backgroundColor: Color(0xFF164396),
        elevation: 0,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ColoredBox(
              color: Color(0xFF164396),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("      Joined on 27 Jun 2021", style: TextStyle(color: Colors.white),),
                  ReusableTitleWidget(title: "Lorem ipsum sit amet", color: Colors.white, fontsize: 25,),
                  Text("      Created by John Smith", style: TextStyle(color: Colors.white),),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10, right: 20),
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in enim consequat, condimentum massa id, convallis sapien. Fusce mauris orci, gravida eu aliquet sed, semper nec lacus. Lorem ipsum dolor sit amet,", style: TextStyle(color: Colors.white),),
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      SizedBox(width: 20),
                      CircleAvatar(backgroundImage:
                      AssetImage(
                          'assets/therock.jpg'
                      ),
                        radius: 23,
                      ),

                      SizedBox(width: 10,),

                      Text('+ 63 others', style: TextStyle(color: Colors.white),),

                      SizedBox(width: 80,),


                      ReusableDarkTagWidget(title: "View Members",)
                    ],),

                  SizedBox(height: 20),
                ],
              ),
            ),




            // Meetup 1
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/ig2.jpg'
                    ), fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 5),
                  Row(
                    children: [
                      ReusableTitleWidget(title: "Next Meetup", color: Colors.white, fontsize: 25),
                      SizedBox(width: 70),
                      Text("30 July 2021", style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.account_circle, size: 50, color: Colors.white,),
                      Text("+ 2 Others ", style: TextStyle(color: Colors.white),)
                    ],
                  )
                ],
              ),
            ),

            // Meetup 2
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/ig1.jpg'
                    ), fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 5),
                  Row(
                    children: [
                      ReusableTitleWidget(title: "Next Meetup", color: Colors.white, fontsize: 25),
                      SizedBox(width: 70),
                      Text("3 Aug 2021", style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.account_circle, size: 50, color: Colors.white,),
                      Text("+ 5 Others ", style: TextStyle(color: Colors.white),)
                    ],
                  )
                ],
              ),
            ),

            // Meetup 3
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/ig3.jpg'
                    ), fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 5),
                  Row(
                    children: [
                      ReusableTitleWidget(title: "Next Meetup", color: Colors.white, fontsize: 25),
                      SizedBox(width: 70),
                      Text("12 Aug 2021", style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.account_circle, size: 50, color: Colors.white,),
                      Text("+ 10 Others ", style: TextStyle(color: Colors.white),)
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