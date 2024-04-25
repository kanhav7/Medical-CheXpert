import 'package:flutter/material.dart';
import 'package:medical_chexpert/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ColumnButton extends StatelessWidget {
  ColumnButton({
    required this.buttonIcon, required this.bottomText
  });

  IconData buttonIcon;
  String bottomText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilledButton(
            onPressed: () {

            },
            style: FilledButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: kBackgroundColour,
                padding: EdgeInsets.all(25)
            ),
            child: Icon(
              buttonIcon,
              color: kLogoDarkBlue,
            )
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          bottomText,
          style: GoogleFonts.poppins(
              fontSize: 15,
              color: Colors.grey.shade500
          ),
        )
      ],
    );
  }
}
