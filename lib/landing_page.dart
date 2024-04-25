import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_chexpert/constants.dart';
import 'ExtractedWidgets/column_button.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 15,
        iconSize: 20,
        selectedItemColor: kLogoDarkBlue,
        unselectedItemColor: Colors.grey.shade500,

        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.calendar),
            label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              label: ''
          ),
        ],
      ),
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello,',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                              color: Colors.grey.shade600,

                            ),
                          ),
                          Text(
                            'James',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 20
                            ),
                          )
                        ],
                      ),
                      Image(
                          image: AssetImage('images/mc_notext_logo.png')
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                    color: kLogoDarkBlue,
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
                                //backgroundImage: AssetImage('images/mc_notext_logo.png'),

                                backgroundColor: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'James D\'Souza',
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
                            'Sunday, 25th',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12
                            ),
                          )
                        ],
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
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for health issue',
                      hintStyle: GoogleFonts.poppins(
                        color: Colors.grey.shade500,
                        fontSize: 15
                      ),
                      icon: Icon(FontAwesomeIcons.magnifyingGlass, color: kLogoDarkBlue,),
                      border: InputBorder.none
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  height: 102,
                  //color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnButton(
                        buttonIcon: FontAwesomeIcons.virusCovid,
                        bottomText: 'Diseases',
                      ),
                      ColumnButton(
                        buttonIcon: FontAwesomeIcons.stethoscope,
                        bottomText: 'Doctor',
                      ),
                      ColumnButton(
                        buttonIcon: FontAwesomeIcons.pills,
                        bottomText: 'Medicine',
                      ),
                      ColumnButton(
                        buttonIcon: FontAwesomeIcons.solidBuilding,
                        bottomText: 'Hospital',
                      ),
                    ],
                  )
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.all(15),
                  child: Text(
                    'Near Doctor',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  )
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(15),
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                                //backgroundImage: AssetImage('images/mc_notext_logo.png'),

                                backgroundColor: kBackgroundColour,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dr. Joseph McCarthy',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'ENT Specialist',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.grey.shade500
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Text(
                            '1.2 KM',
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Colors.grey.shade500
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        height: 0.3,
                        color: Colors.grey.shade300,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.clock,
                                color: kLogoRed,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Open at 17.00',
                                style: GoogleFonts.poppins(
                                    color: kLogoRed,
                                    fontSize: 12
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.solidStar,
                                color: kLogoLightBlue,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '4.8 (120 Reviews)',
                                style: GoogleFonts.poppins(
                                    color: kLogoLightBlue,
                                    fontSize: 12
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



