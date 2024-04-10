import 'package:flutter/material.dart';

class ContainerTextField extends StatelessWidget {
  ContainerTextField({required this.labelText});

  String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 1.0, color: Colors.black),
            borderRadius: BorderRadius.circular(15),
          ),
            labelText: labelText,
        ),
      ),
    );
  }
}
