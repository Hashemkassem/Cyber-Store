// ignore_for_file: must_be_immutable

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleLogin extends StatelessWidget {
  void Function() onTap;
  final String text;
  final String image;
  GoogleLogin(
      {super.key,
      required this.text,
      required this.onTap,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.orange.withOpacity(0.5),
            borderRadius: BorderRadius.circular(40)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AvatarGlow(
                endRadius: 20,
                child: Image.asset(
                  image,
                  height: 30,
                ),
              ),
              Text(
                text,
                style: GoogleFonts.exo2(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
