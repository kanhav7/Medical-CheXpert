import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'doctor_registration_page.dart';
import 'patient_registration_page.dart';
import 'constants.dart';

class WrapperPage extends StatefulWidget {
  @override
  _WrapperPageState createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  int _selectedIndex = 1; // Default to patient form, index can be 0 for doctor
  List<Widget> _forms = [DoctorRegistrationPage(), PatientRegistrationPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kLogoDarkBlue,
        title: Text(
            'REGISTRATION',
          style: GoogleFonts.poppins(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ToggleButtons(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                      'Doctor',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                      'Patient',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
              isSelected: [_selectedIndex == 0, _selectedIndex == 1],
              onPressed: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              borderRadius: BorderRadius.circular(8),
              selectedBorderColor: kLogoLightBlue,
              selectedColor: Colors.white,
              fillColor: kLogoDarkBlue,
              focusColor: kLogoLightBlue,
              splashColor: kLogoLightBlue,
              color: Colors.white,
              constraints: BoxConstraints(
                minHeight: 36,
                minWidth: 120,
              ),
            ),
          ),
        ),
      ),
      body: _forms[_selectedIndex],
    );
  }
}

