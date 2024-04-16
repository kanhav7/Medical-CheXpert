import 'package:flutter/material.dart';
import 'package:medical_chexpert/login_page.dart';
import 'package:medical_chexpert/patient_registration_page.dart';
import 'doctor_registration_page.dart';

class TempNavigate extends StatelessWidget {
  const TempNavigate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginDemo()));
                  },
                  child: Text(
                    'Login'
                  )
              ),
              SizedBox(
                height: 50,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PatientRegistrationPage()));
                  },
                  child: Text(
                      'PatRegister'
                  )
              ),
              SizedBox(
                height: 50,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorRegistrationPage()));
                  },
                  child: Text(
                      'DocRegister'
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
