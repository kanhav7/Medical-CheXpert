import 'package:flutter/material.dart';
import 'package:medical_chexpert/constants.dart';

class ReportViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('REPORT VIEW'),
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