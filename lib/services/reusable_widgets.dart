import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableTitleWidget extends StatelessWidget {
  final title;
  final color;
  final double fontsize;
  ReusableTitleWidget({this.title, this.color, this.fontsize});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 20),
      alignment: Alignment.centerLeft,
      child: Text(
        '$title',
        style: GoogleFonts.montserrat(
            fontSize: fontsize, fontWeight: FontWeight.w800, color: color),
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
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.35,
      //margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Text(
        '$title',
        style: GoogleFonts.montserrat(
            fontSize: 15, fontWeight: FontWeight.w800, color: Colors.black),
      ),
    );
  }
}

//creates small box with a header
class ReusableBoxWidget extends StatelessWidget {
  final header;
  final subtitle;
  final double fontsize;
  const ReusableBoxWidget({this.header, this.subtitle, this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.4,
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
