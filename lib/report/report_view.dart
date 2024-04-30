import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_chexpert/constants.dart';

class ReportViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              'Report View',
            style: GoogleFonts.poppins(
              fontSize: 25,
              fontWeight: FontWeight.w900
            ),
          ),
          backgroundColor: kLogoDarkBlue,
        ),
        body: Center(
          child: InteractiveViewer(
            child: Container(
              child: Image(
                image: AssetImage(
                  'images/report_sample.jpeg',
                ),
              ),
            ),
          ),
        ));
  }
}