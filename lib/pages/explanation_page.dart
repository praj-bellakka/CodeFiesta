//This page draws out the layout for each onboarding page

import 'package:codefiesta_app/pages/onbarding_pages.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplanationPage extends StatelessWidget {
  final ExplanationData data;

  ExplanationPage({this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 25, bottom: 15),
          child: Image(image: AssetImage(data.imageSrc)),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: Text(
                data.boldText,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.black
                ),
                textAlign: TextAlign.justify,
              ),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 48),
                child: Text(
                  data.description,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.normal,
                    fontSize: 15.0,
                    color: Colors.black
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
