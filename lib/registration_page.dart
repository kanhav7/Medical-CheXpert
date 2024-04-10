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
class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  String dropdownValue = kDropDownItems.first;
  @override
  Widget build(BuildContext context) {

    print(selectedGender);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('PATIENT REGISTRATION'),
          backgroundColor: Color(0xFF125488),
        ),
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              flex: 4,
              child: Form(
                  child: Column(
                    children: [
                      Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                              boxShadow: [kBoxShadow]
                            ),
                            margin: EdgeInsets.fromLTRB(22.5, 22.5, 22.5, 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(15),
                                  child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(15),
                                            borderSide: BorderSide(
                                                color: Colors.black,
                                                width: 1.0
                                            )
                                        )
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                    value: dropdownValue,
                                    items: kDropDownItems.map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (String? value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        dropdownValue = value!;
                                        print(dropdownValue);
                                      });
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ContainerTextField(
                                    labelText: 'Name:',
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
                                    margin: EdgeInsets.all(15),
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
                margin: EdgeInsets.all(15),
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
              flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [kBoxShadow],
                    color: Color(0xFF125488),
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
        )
      ),
    );
  }
}



