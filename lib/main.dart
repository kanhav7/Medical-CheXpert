import 'package:flutter/material.dart';
import 'package:medical_chexpert/patient_apointments.dart';
import 'package:medical_chexpert/patient_bottom.dart';
import 'package:medical_chexpert/doctor_registration_page.dart';
import 'package:medical_chexpert/patient_landing_page.dart';
import 'package:medical_chexpert/login_page.dart';
import 'package:medical_chexpert/patient_registration_page.dart';
import 'package:medical_chexpert/report/report_list.dart';
import 'package:medical_chexpert/report/report_view.dart';
import 'package:medical_chexpert/report/report_year.dart';
//import 'package:medical_chexpert/tester.dart';
import 'package:medical_chexpert/welcome_page.dart';
import 'package:medical_chexpert/wrapper_page.dart';
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
      debugShowCheckedModeBanner: false,
      initialRoute: 'wrapper',
      routes: {
        'welcome': (context) => WelcomePage(),
        'navigator': (context) => NavigationPage(),
        'login': (context) => LoginPage(),
        'docRegister': (context) => DoctorRegistrationPage(),
        'patRegister': (context) => PatientRegistrationPage(),
        'landing': (context) => PatientLandingPage(),
        'apointments': (context) => ApointmentsPage(),
        'bottomNav': (context) => BottomNavigator(),
        'reportYear': (context) => ReportYearPage(),
        'reportList': (context) => ReportListPage(),
        'reportView': (context) => ReportViewPage(),
        'wrapper': (context) => WrapperPage()
        //'tester': (context) => Tester()
      },
    );
  }
}
