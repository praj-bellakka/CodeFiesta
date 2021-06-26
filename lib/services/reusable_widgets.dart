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
