import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_chexpert/constants.dart';
import 'package:medical_chexpert/login_page.dart';
import 'package:medical_chexpert/patient_registration_page.dart';
import 'doctor_registration_page.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                        image: AssetImage('images/MC_Logo.png'),
                    ),
                    Text(
                      'Connect. Consult. Cure.',
                      style: GoogleFonts.poppins(),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: BottomCurveIn(
                    ),
                    child: Container(
                      //margin: EdgeInsets.only(bottom: 15),
                      color: kLogoLightBlue,
                    ),
                  ),
                  ClipPath(
                    clipper: BottomCurveOut(),
                    child: Container(
                      //margin: EdgeInsets.only(bottom: 15),
                      color: kLogoDarkBlue,

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

class BottomCurveIn extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(0, size.height*0.25);

    path.quadraticBezierTo(
        size.width*0.25,
        0,
        size.width*0.5,
        size.height*0.25
    );

    path.quadraticBezierTo(
        size.width*0.75,
        size.height*0.5,
        size.width,
        size.height*0.25
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();


    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}


class BottomCurveOut extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(0, size.height*0.33);

    path.quadraticBezierTo(
        size.width*0.25,
        size.height*0.08,
        size.width*0.5,
        size.height*0.33
    );

    path.quadraticBezierTo(
        size.width*0.75,
        size.height*0.58,
        size.width,
        size.height*0.33
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();


    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}
