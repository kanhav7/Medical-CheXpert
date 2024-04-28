import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'landing_page.dart';
import 'apointments.dart';
import 'profile_page.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int selectedIndex = 0;
  List<Widget> _screens = [
    LandingPage(),
    ApointmentsPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 15,
        iconSize: 20,
        selectedItemColor: kLogoDarkBlue,
        unselectedItemColor: Colors.grey.shade600,
        currentIndex: selectedIndex,
        backgroundColor: Colors.white,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
          print(_screens[selectedIndex]);
        },
        unselectedLabelStyle: GoogleFonts.poppins(),
        selectedLabelStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.house_rounded),
              label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Apointments',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
          ),
        ],
      ),
      body: _screens[selectedIndex],
    );
  }
}
