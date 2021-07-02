import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class ReusableTitleWidget extends StatelessWidget {
  final title;
  final color;
  final double fontsize;
  ReusableTitleWidget({this.title, this.color, this.fontsize});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
      child: Text(
        '$title',
        style: GoogleFonts.montserrat(
            fontSize: fontsize, fontWeight: FontWeight.w800, color: color),
      ),
    );
  }
}

class ReusableSubTitleWidget extends StatelessWidget {
  final title;
  final color;
  final double fontsize;
  ReusableSubTitleWidget({this.title, this.color, this.fontsize});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              '$title',
              style: GoogleFonts.montserrat(
                  fontSize: fontsize, fontWeight: FontWeight.w800, color: color),
            ),
          ),

          SizedBox(width: 20,),

          Icon(
              Icons.keyboard_arrow_right_outlined,
              size: 35
          ),
        ],
      ),
    );
  }
}

class ReusableTagWidget extends StatelessWidget {
  final title;
  //final icon;
  ReusableTagWidget({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 100, maxWidth: 200),
      //height: MediaQuery.of(context).size.height * 0.05,
      //width: MediaQuery.of(context).size.width * 0.35,
      //margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Color(0xFF164396),
      ),
      child: Text(
        '$title',
        style: GoogleFonts.montserrat(
            fontSize: 15, fontWeight: FontWeight.w800, color: Colors.white),
      ),
    );
  }
}

class ReusableClickedTagWidget extends StatelessWidget {
  final title;
  //final icon;
  ReusableClickedTagWidget({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 100, maxWidth: 200),
      //height: MediaQuery.of(context).size.height * 0.05,
      //width: MediaQuery.of(context).size.width * 0.35,
      //margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Colors.white,
      ),
      child: Text(
        '$title',
        style: GoogleFonts.montserrat(
            fontSize: 15, fontWeight: FontWeight.w800, color: Color(0xFF164396)),
      ),
    );
  }
}

class ReusableDarkTagWidget extends StatelessWidget {
  final title;
  //final icon;
  ReusableDarkTagWidget({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 10, maxWidth: 200),
      //height: MediaQuery.of(context).size.height * 0.05,
      //width: MediaQuery.of(context).size.width * 0.35,
      //margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Colors.grey,
      ),
      child: Text(
        '$title',
        style: GoogleFonts.montserrat(
            fontSize: 13, fontWeight: FontWeight.w800, color: Colors.black),
      ),
    );
  }
}

class ReusableLightTagWidget extends StatelessWidget {
  final title;
  //final icon;
  ReusableLightTagWidget({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 10, maxWidth: 200),
      //height: MediaQuery.of(context).size.height * 0.05,
      //width: MediaQuery.of(context).size.width * 0.35,
      //margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Colors.black12,
      ),
      child: Text(
        '$title',
        style: GoogleFonts.montserrat(
            fontSize: 13, fontWeight: FontWeight.w800, color: Colors.black),
      ),
    );
  }
}

class ReusableColouredTagWidget extends StatelessWidget {
  final title;
  final color;
  //final icon;
  ReusableColouredTagWidget({this.title, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      constraints: BoxConstraints(minWidth: 0, maxWidth: MediaQuery.of(context).size.width * 0.85),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: color,
      ),
      child: Text(
        '$title',
        style: GoogleFonts.montserrat(
            fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
      ),
    );
  }
}

class ReusableColouredInvertedTagWidget extends StatelessWidget {
  final title;
  final borderColour;
  //final icon;
  ReusableColouredInvertedTagWidget({this.title, this.borderColour});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      constraints: BoxConstraints(minWidth: 0, maxWidth: MediaQuery.of(context).size.width * 0.85),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        border: Border.all(color: borderColour),
        color: Colors.transparent
      ),
      child: Text(
        '$title',
        style: GoogleFonts.montserrat(
            fontSize: 13, fontWeight: FontWeight.w500, color: borderColour),
      ),
    );
  }
}


//creates small box with a header
class ReusableBoxWidget extends StatelessWidget {
  final header;
  final subtitle;
  final double fontsize;
  final String path;
  const ReusableBoxWidget({this.header, this.subtitle, this.fontsize, this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.5,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    path
                  ),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 5,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              padding: EdgeInsets.all(8),
          ),

          SizedBox(height: 10,),
          Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    // alignment: Alignment.bottomLeft,
                    child: Text(
                      header,
                      style: GoogleFonts.montserrat(
                          fontSize: fontsize,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  Align(
                    // alignment: Alignment.bottomLeft,
                    child: Text(
                      subtitle,
                      style: GoogleFonts.montserrat(
                          fontSize: fontsize - 2,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500]),
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}

//Friends PopUP Modal

class ReusablePopupFriendsWidget extends StatelessWidget {
  final name;
  final tags;

  const ReusablePopupFriendsWidget({this.name, this.tags});

  @override
  Widget build(BuildContext context) {
    return Container(
      //backgroundColor: Colors.transparent,
      child: Center(
        child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.9,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
                //IconButton(onPressed: () {  },
                children: [
                  ReusableTitleWidget(
                      title: name, color: Colors.black, fontsize: 30.0),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(loremIpsum(words: 20, initWithLorem: true),
                        style: GoogleFonts.montserrat(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: tags.length,
                          padding: EdgeInsets.all(10),
                          itemBuilder: (context, index) {
                            return Container(
                                width: 100,
                                height: 30,
                                margin: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey[700]),
                                child: Text(tags[index],
                                    style: GoogleFonts.montserrat(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                    textAlign: TextAlign.center));
                          })),
                  SizedBox(height: 20),
                  Container(
                      margin: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextButton(
                        onPressed: () {
                          print('added as friend');
                          Navigator.pop(context, 'true');
                        },
                        child: Text("Add as friend",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18)),
                      )),
                ])),
      ),
    );
  }
}

class ReusableBigBoxWidget extends StatelessWidget {
  final header;
  final subtitle;
  final double fontsize;
  const ReusableBigBoxWidget({this.header, this.subtitle, this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 175,
        width: 175,
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 5,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                header,
                style: GoogleFonts.montserrat(
                    fontSize: fontsize,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                subtitle,
                style: GoogleFonts.montserrat(
                    fontSize: fontsize - 2,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[500]),
              ),
            )
          ],
        ));
  }
}

class ReusableDescriptionWidget extends StatelessWidget {
  final description;
  ReusableDescriptionWidget({this.description});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
      child: Text(
        '$description',
        style: GoogleFonts.montserrat(
            fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.black),
      ),
    );
  }
}

class ReusableBigButtonWidget extends StatelessWidget {
  final title;
  final color;
  const ReusableBigButtonWidget({this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.8,
        height: 60,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Text(title,
            style: GoogleFonts.montserrat(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18)));
  }
}
class ReusableSmallBoxWidget extends StatelessWidget {
   final header;
   final subtitle;
   final double fontsize;
   final String path;
   const ReusableSmallBoxWidget({this.header, this.subtitle, this.fontsize, this.path});

   @override
   Widget build(BuildContext context) {
     return Container(
       child: Column(
         children: [
           Container(
               height: 175,
               width: 150,
               margin: EdgeInsets.symmetric(horizontal: 10),
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage(
                     path
                 ),
                 fit: BoxFit.fill,
               ),
               borderRadius: BorderRadius.all(Radius.circular(20)),
               color: Colors.white,
               boxShadow: [
                 BoxShadow(
                   color: Colors.black38,
                   blurRadius: 5,
                   offset: const Offset(0, 5),
                 ),
               ],
             ),
               padding: EdgeInsets.all(8),
           ),

           Container(
               child: Column(
                 children: [
                   Align(
                     alignment: Alignment.centerLeft,
                     child: Text(
                       header,
                       style: GoogleFonts.montserrat(
                           fontSize: fontsize,
                           fontWeight: FontWeight.w700,
                           color: Colors.black),
                     ),
                   ),
                   Align(
                     alignment: Alignment.centerLeft,
                     child: Text(
                       subtitle,
                       style: GoogleFonts.montserrat(
                           fontSize: fontsize - 2,
                           fontWeight: FontWeight.w500,
                           color: Colors.grey[500]),
                     ),
                   )
                 ],
               )
           )
         ],
       ),
     );
   }
 }

class ReusableMediumBoxWidget extends StatelessWidget {
  final header;
  final subtitle;
  final double fontsize;
  final String path;
  const ReusableMediumBoxWidget({this.header, this.subtitle, this.fontsize, this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 175,
            width: 175,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    path
                ),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 5,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            padding: EdgeInsets.all(8),
          ),

          Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      header,
                      style: GoogleFonts.montserrat(
                          fontSize: fontsize,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      subtitle,
                      style: GoogleFonts.montserrat(
                          fontSize: fontsize - 2,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500]),
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
