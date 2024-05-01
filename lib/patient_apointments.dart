import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_chexpert/constants.dart';
import 'ExtractedWidgets/column_button.dart';

class ApointmentsPage extends StatefulWidget {
  const ApointmentsPage({super.key});
  @override
  State<ApointmentsPage> createState() => _ApointmentsPageState();
}

class _ApointmentsPageState extends State<ApointmentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15, 0,15,15),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Appointments',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 20
                        ),
                      ),
                      Image(
                          image: AssetImage('images/mc_notext_logo.png')
                      )
                    ],
                  ),
                ),
                Container(
                  height: 75,
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: kBackgroundColour,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.calendarCheck,
                          color: kLogoDarkBlue,
                        ),
                        SizedBox(width: 15),
                        Text(
                          'Book an appointment',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: kLogoDarkBlue,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  )
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.all(15),
                    child: Text(
                      'Upcoming Appointments',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                    )
                ),
                DoctorCard(
                  docName: 'Dr. Nisha Sharma',
                  appointmentDate: 'Wednesday, May 15, 2024',
                  docField: 'Pediatrics',
                  imagePath: 'images/doctor 1.png',
                ),
                DoctorCard(
                  docName: 'Dr. Aarav Patel',
                  appointmentDate: 'Friday, May 24, 2024',
                  docField: 'Cardiology',
                  imagePath: 'images/doctor 2.png',
                ),
                DoctorCard(
                  docName: 'Dr. Vikram Singh',
                  appointmentDate: 'Sunday, June 2, 2024',
                  docField: 'Orthopedics',
                  imagePath: 'images/doctor 3.png',
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.all(15),
                    child: Text(
                      'Past Appointments',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                    )
                ),
                DoctorCard(
                  docName: 'Dr. Priya Patel',
                  appointmentDate: 'Saturday, April 27, 2024',
                  docField: 'Psychologist',
                  imagePath: 'images/doctor 4.png',
                ),
                DoctorCard(
                  docName: 'Dr. Mahesh Agarwal',
                  appointmentDate: 'Tuesday, March 19, 2024',
                  docField: 'Neurologist',
                  imagePath: 'images/doctor 5.png',
                ),
                DoctorCard(
                  docName: 'Dr. Priya Patel',
                  appointmentDate: 'Monday, February 17, 2024',
                  docField: 'Psychologist',
                  imagePath: 'images/doctor 4.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
   DoctorCard({
     required this.docField, required this.docName, required this.appointmentDate, required this.imagePath
  });

  String docName;
  String appointmentDate;
  String docField;
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
          color: kLogoLightBlue,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(imagePath),
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        docName,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        docField,
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.white
                        ),
                      )
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: () {

                },
                icon: Icon(
                  Icons.navigate_next,
                  size: 40,
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            height: 0.3,
            color: Color(0xFFFE9EAF6),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Icon(
                Icons.calendar_month,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                appointmentDate,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}


