import 'package:flutter/material.dart';
import 'package:medical_chexpert/doctor_registration_page.dart';
import 'package:medical_chexpert/landing_page.dart';
import 'package:medical_chexpert/login_page.dart';
import 'package:medical_chexpert/patient_registration_page.dart';
import 'package:medical_chexpert/welcome_page.dart';
import 'scroll_registration_page.dart';
import 'navigation_page.dart';


void main() {
  runApp(MedicalChexpert());
}

class MedicalChexpert extends StatelessWidget {
  const MedicalChexpert({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'landing',
      routes: {
        'welcome': (context) => WelcomePage(),
        'navigator': (context) => NavigationPage(),
        'login': (context) => LoginPage(),
        'docRegister': (context) => DoctorRegistrationPage(),
        'patRegister': (context) => PatientRegistrationPage(),
        'landing': (context) => LandingPage()
      },
    );
  }
}
