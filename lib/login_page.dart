import 'package:flutter/material.dart';
import 'text_field.dart';
import 'package:dob_input_field/dob_input_field.dart';
import 'gender_containers.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9EAF6),
      appBar: AppBar(
        title: Text('LOGIN'),
        backgroundColor: Color(0xFF0249B7),
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints.expand(
              height: 600
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
               flex: 5,
                child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Image(
                              image: AssetImage('images/MC_Logo.png')
                          ),
                        ),
                        Expanded(
                            child: Container(
                              padding: EdgeInsets.only(top: 35),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                  boxShadow: [kBoxShadow]
                              ),
                              margin: EdgeInsets.symmetric(horizontal: 22.5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: ContainerTextField(
                                      labelText: 'Username:',
                                    ),
                                  ),
                                  Expanded(
                                    child: ContainerTextField(
                                      labelText: 'Password:',
                                    ),
                                  ),
                                ],
                              ),
                            )
                        )
                      ],
                    )
                ),
              ),
              SizedBox(height: 40),
              Expanded(
                flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [kBoxShadow],
                      color: Color(0xFF0249B7),
                    ),
                    width: double.infinity,
                    child: TextButton(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30
                        ),
                      ),
                      onPressed: () {
                      },
                    ),
                  )
              )


            ],
          ),
        ),
      )
    );
  }
}