import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_chexpert/constants.dart';
import 'package:medical_chexpert/login_page.dart';
import 'package:medical_chexpert/patient_registration_page.dart';
import 'doctor_registration_page.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: TopCurveIn(),
                    child: Container(
                      //margin: EdgeInsets.only(bottom: 15),
                      color: kLogoLightBlue,
                    ),
                  ),
                  ClipPath(
                    clipper: TopCurveOut(),
                    child: Container(
                      //margin: EdgeInsets.only(bottom: 15),
                      color: kLogoDarkBlue,

                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [kBoxShadow],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image(
                    image: AssetImage('images/MC_Logo.png'),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PatientRegistrationPage()));
                      },
                      child: Text(
                        'PATIENT',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(2),
                        backgroundColor: MaterialStatePropertyAll(kLogoDarkBlue),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(15)
                                )
                            )
                        ),
                          side: MaterialStatePropertyAll(
                              BorderSide(
                                  color: kLogoLightBlue,
                                  width: 3
                              )
                          )
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(30, 15, 30, 45),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'docRegister');
                      },
                      child: Text(
                        'DOCTOR',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      style: ButtonStyle(
                          elevation: MaterialStatePropertyAll(2),
                          backgroundColor: MaterialStatePropertyAll(kLogoDarkBlue),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(15)
                                  )
                              )
                          ),
                          side: MaterialStatePropertyAll(
                              BorderSide(
                                  color: kLogoLightBlue,
                                  width: 3
                              )
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
      ),
    );
  }
}



class TopCurveIn extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height*0.75);

    path.quadraticBezierTo(
        size.width*0.25,
        size.height*0.5,
        size.width*0.5,
        size.height*0.75
    );

    path.quadraticBezierTo(
        size.width*0.75,
        size.height,
        size.width,
        size.height*0.75
    );

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class TopCurveOut extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height*0.67);

    path.quadraticBezierTo(
        size.width*0.25,
        size.height*0.42,
        size.width*0.5,
        size.height*0.67
    );

    path.quadraticBezierTo(
        size.width*0.75,
        size.height*0.92,
        size.width,
        size.height*0.67
    );

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
