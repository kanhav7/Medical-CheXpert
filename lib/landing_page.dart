import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [],
      // ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(15, 75,15,15),
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
            IntrinsicHeight(
              child: Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF90CDF9),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          //backgroundImage: AssetImage('images/mc_notext_logo.png'),

                          backgroundColor: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
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
            )
          ],
        ),
      ),
    );
  }
}


