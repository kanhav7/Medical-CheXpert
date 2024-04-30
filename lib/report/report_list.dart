import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_chexpert/constants.dart';
import 'report_view.dart';
import 'report_year.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReportListPage extends StatefulWidget {
  const ReportListPage({super.key});

  @override
  State<ReportListPage> createState() => _ReportListPageState();
}

class _ReportListPageState extends State<ReportListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(15),
        child: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              FontAwesomeIcons.chevronLeft,
                              weight: 50,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            child: Text(
                              '2021  Reports',
                              style: GoogleFonts.poppins(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900
                              ),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                            FontAwesomeIcons.magnifyingGlass
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  ReportListContainer(
                    doctor: 'Dr. Abhay Acharya',
                    reportTitle: 'Visit Summary for 05/02/21',
                  ),
                  ReportListContainer(
                    doctor: 'Dr. Sunita Patil',
                    reportTitle: 'Comprehensive Health Checkup Results',
                  ),
                  ReportListContainer(
                    doctor: 'Dr. Rajesh Kumar',
                    reportTitle: 'Blood Test Analysis Report',
                  ),
                  ReportListContainer(
                    doctor: 'Dr. Sunita Patil',
                    reportTitle: 'Regular Check-Up Notes',
                  ),



                ],
              ),
          ),
        ),
      ),
    );
  }
}

class ReportListContainer extends StatelessWidget {
  ReportListContainer({
    required this.reportTitle, required this.doctor
  });

  String doctor;
  String reportTitle;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        margin: EdgeInsets.all(15),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, 'reportView');
          },
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(kBackgroundColour),
              shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  )
              ),
              padding: MaterialStatePropertyAll(EdgeInsets.all(15))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  doctor,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    color: Color(0xFF0448b4),
                    fontWeight: FontWeight.bold
                  )
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                height: 2,
                color: Colors.grey.shade600,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                  reportTitle,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: kLogoRed,
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}