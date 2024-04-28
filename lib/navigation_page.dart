import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_chexpert/constants.dart';
import 'package:medical_chexpert/login_page.dart';
import 'package:medical_chexpert/patient_registration_page.dart';
import 'doctor_registration_page.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/welcome_background.png'),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [kBoxShadow],
                borderRadius: BorderRadius.circular(15)
              ),
              child: Image(
                  image: AssetImage('images/MC_Logo.png'),
                height: 250,
                width: 250,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              width: 200,
              height: 75,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PatientRegistrationPage()));
                },
                child: Text(
                  'Patient',
                  style: GoogleFonts.poppins(
                      color: Colors.black
                  ),
                ),
                style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(2),
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(15)
                          )
                      )
                  ),


                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 200,
              height: 75,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorRegistrationPage()));
                },
                child: Text(
                  'Doctor',
                  style: GoogleFonts.poppins(
                      color: Colors.black
                  ),
                ),
                style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(2),
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(15)
                          )
                      )
                  ),


                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
