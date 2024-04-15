import 'package:flutter/material.dart';
import 'text_field.dart';
import 'package:dob_input_field/dob_input_field.dart';
import 'gender_containers.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender{
  male,
  female,
  other
}

var selectedGender;
class DoctorRegistrationPage extends StatefulWidget {
  const DoctorRegistrationPage({super.key});
  @override
  State<DoctorRegistrationPage> createState() => _DoctorRegistrationPageState();
}

class _DoctorRegistrationPageState extends State<DoctorRegistrationPage> {

  String dropdownValue = kDropDownItems.first;
  @override
  Widget build(BuildContext context) {

    print(selectedGender);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFE9EAf6),
          appBar: AppBar(
            title: Text('DOCTOR REGISTRATION'),
            backgroundColor: kLogoDarkBlue,
          ),
          body: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(
                  height: 1400
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 2,
                    child: Image(
                        image: AssetImage('images/MC_Logo.png'),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Form(
                        child: Column(
                          children: [

                            Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(top: 30),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.white,
                                      boxShadow: [kBoxShadow]
                                  ),
                                  margin: EdgeInsets.fromLTRB(22.5, 22.5, 22.5, 15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: ContainerTextField(
                                          labelText: 'Name:',
                                        ),
                                      ),
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
                                      Expanded(
                                        child: ContainerTextField(
                                          labelText: 'E-mail:',
                                        ),
                                      ),
                                      Expanded(
                                        child: ContainerTextField(
                                          labelText: 'Phone No.:',
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(horizontal: 15),
                                          child: DOBInputField(
                                            firstDate: DateTime(1900),
                                            lastDate: DateTime.now(),
                                            showLabel: true,
                                            dateFormatType: DateFormatType.DDMMYYYY,
                                            fieldLabelText: 'Date of Birth:',
                                            autovalidateMode: AutovalidateMode.always,
                                            inputDecoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(width: 1.0, color: Colors.black),
                                                  borderRadius: BorderRadius.circular(15)
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ContainerTextField(
                                          labelText: 'Qualification:',
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(horizontal: 15),
                                          child: DropdownButtonFormField(
                                              items: kSpecialList.map((specialty) => DropdownMenuItem<String>(
                                                value: specialty,
                                                child: Text(specialty),
                                              )).toList(),
                                              onChanged: (value) {
                                                print(value);
                                              },
                                            menuMaxHeight: 300,
                                            hint: Text("Specialisation: "),
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderSide: BorderSide(width: 1.0, color: Colors.black),
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(15, 0, 15, 20),
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15),
                                                  )
                                                ),
                                                backgroundColor: MaterialStatePropertyAll(kLogoDarkBlue),
                                                textStyle: MaterialStatePropertyAll(
                                                  TextStyle(
                                                    color: Colors.white
                                                  ),
                                                )
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Icon(
                                                    FontAwesomeIcons.file
                                                  ),
                                                  Text(
                                                    'Upload ID',
                                                    style: TextStyle(
                                                      color: Colors.white
                                                    ),
                                                  )
                                                ],
                                              )
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            )
                          ],
                        )
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                              child: GenderContainer(
                                genderIcon: FontAwesomeIcons.mars,
                                buttonText: 'MALE',
                                onTap: () {
                                  setState(() {
                                    selectedGender = Gender.male;
                                  });
                                },
                                genderColour: selectedGender == Gender.male ? kActiveContainerColour : kInactiveContainerColour,
                                genderContentColour: selectedGender == Gender.male ? kActiveIconColour : kInactiveIconColour,
                              )
                          ),
                          Expanded(
                              child: GenderContainer(
                                genderIcon: FontAwesomeIcons.venus,
                                buttonText: 'FEMALE',
                                onTap: () {
                                  setState(() {
                                    selectedGender = Gender.female;
                                  });
                                },
                                genderColour: selectedGender == Gender.female ? kActiveContainerColour : kInactiveContainerColour,
                                genderContentColour: selectedGender == Gender.female ? kActiveIconColour : kInactiveIconColour,
                              )
                          ),
                          Expanded(
                              child: GenderContainer(
                                genderIcon: FontAwesomeIcons.transgender,
                                buttonText: 'OTHER',
                                onTap: () {
                                  setState(() {
                                    selectedGender = Gender.other;
                                  });
                                },
                                genderColour: selectedGender == Gender.other ? kActiveContainerColour : kInactiveContainerColour,
                                genderContentColour: selectedGender == Gender.other ? kActiveIconColour : kInactiveIconColour,
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    //flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [kBoxShadow],
                          color: Color(0xFF0249B7),
                        ),
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 15),
                        child: TextButton(
                          child: Text(
                            'SUBMIT',
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
      ),
    );
  }
}



