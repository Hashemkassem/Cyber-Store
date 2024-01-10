// ignore_for_file: must_be_immutable

import 'package:cyber_store/config/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBotton extends StatelessWidget {
  MyBotton({super.key, required this.onTap, required this.text});
  void Function() onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.019),
        decoration: BoxDecoration(
            color: orangOpacityColor5, borderRadius: BorderRadius.circular(40)),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.exo2(
                color: whiteOpacityColor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
