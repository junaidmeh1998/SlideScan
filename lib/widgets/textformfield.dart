import 'package:flutter/material.dart';

class textformfield extends StatelessWidget {
  final controller;
  final String hinttext;
  final String labeltext;
  final bool obscureText;

  textformfield(
      {super.key,
      required this.controller,
      required this.hinttext,
      required this.obscureText,
      required this.labeltext});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          labelText: labeltext,
          hintText: hinttext,
          filled: true,
          fillColor: Colors.blue,
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          labelStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
