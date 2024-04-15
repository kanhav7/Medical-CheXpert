import 'package:flutter/material.dart';
import 'scroll_registration_page.dart';
import 'temp_navigate.dart';


void main() {
  runApp(MedicalChexpert());
}

class MedicalChexpert extends StatelessWidget {
  const MedicalChexpert({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TempNavigate(),
    );
  }
}
