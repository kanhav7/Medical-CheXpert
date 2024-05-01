import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_chexpert/patient_apointments.dart';
import 'package:medical_chexpert/constants.dart';
import 'package:medical_chexpert/patient_profile_page.dart';
import 'ExtractedWidgets/column_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar:
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
                        'Your Profile',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 20
                        ),
                      ),
                      DrawerButton(
                        style: ButtonStyle(
                        ),

                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                      color: kLogoLightBlue,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage('images/manphoto.png'),
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shivansh Gupta',
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
                                    '25 years old',
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
                      ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )
                              ),
                              backgroundColor: MaterialStatePropertyAll(kLogoLightBlue),
                              textStyle: MaterialStatePropertyAll(
                                GoogleFonts.poppins(
                                    color: Colors.white
                                ),
                              )
                          ),
                          child: Text(
                            'Edit Profile',
                            style: GoogleFonts.poppins(
                                color: Colors.white
                            ),
                          )
                      )
                    ],
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.all(15),
                    child: Text(
                      'Mood Progress',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                    )
                ),
                Container(
                  height: 320,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: kBackgroundColour,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Image(
                    image: AssetImage('images/graph.jpeg'),
                    fit: BoxFit.cover,

                  )
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.only(right: 15),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      )
                                  ),
                                  backgroundColor: MaterialStatePropertyAll(kLogoLightBlue),
                                  textStyle: MaterialStatePropertyAll(
                                    GoogleFonts.poppins(
                                        color: Colors.white
                                    ),
                                  )
                              ),
                              child: Text(
                                'Help',
                                style: GoogleFonts.poppins(
                                    color: Colors.white
                                ),
                              )
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.only(left: 15),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      )
                                  ),
                                  backgroundColor: MaterialStatePropertyAll(kLogoLightBlue),
                                  textStyle: MaterialStatePropertyAll(
                                    GoogleFonts.poppins(
                                        color: Colors.white
                                    ),
                                  )
                              ),
                              child: Text(
                                'Rate us',
                                style: GoogleFonts.poppins(
                                    color: Colors.white
                                ),
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


