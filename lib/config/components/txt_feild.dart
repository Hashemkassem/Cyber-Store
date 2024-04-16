import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      required this.hinttext,
      required this.obscureText,
      required this.controller});
  final String hinttext;
  final bool obscureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: hinttext,
          fillColor: Colors.orange.withOpacity(0.5),
          filled: true,
          hintStyle: GoogleFonts.exo2(color: Colors.white),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.grey.shade200)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange.withOpacity(0.5),
            ),
            borderRadius: BorderRadius.circular(30),
          )),
    );
  }
}
