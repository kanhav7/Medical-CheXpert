import 'dart:ffi';

import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';


class GenderContainer extends StatefulWidget {

  GenderContainer({required this.genderIcon, required this.buttonText, required this.genderColour, required this.onTap, required this.genderContentColour});

  IconData genderIcon;
  String buttonText;
  void Function() onTap;
  Color genderColour;
  Color genderContentColour;

  @override
  State<GenderContainer> createState() => _GenderContainerState();
}

class _GenderContainerState extends State<GenderContainer> {
  bool activated = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.genderIcon,
              color: widget.genderContentColour,
              size: 40,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.buttonText,
              style: TextStyle(
                  color: widget.genderContentColour,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
        height: 200,
        decoration: BoxDecoration(
            color: widget.genderColour,
            borderRadius: BorderRadius.circular(15),
          boxShadow: [kBoxShadow]
        ),
        margin: EdgeInsets.fromLTRB(7.5, 0, 7.5, 0),
      ),
    );
  }
}