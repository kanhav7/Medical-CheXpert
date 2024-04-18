import 'package:flutter/material.dart';
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
      home: WelcomePage(),
    );
  }
}
