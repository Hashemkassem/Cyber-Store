// ignore_for_file: camel_case_types

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
// import 'package:google_fonts/google_fonts.dart';

class cryptoCard extends StatelessWidget {
  const cryptoCard({
    super.key,
    required this.image,
    required this.name,
  });
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.height * 0.01),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.orange.withOpacity(0.5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AvatarGlow(
              endRadius: 30,
              child: Image.asset(
                image,
                height: 40,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  '\$12,000',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Image.asset('images/chart.png',
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.width * 0.16,
                width: MediaQuery.of(context).size.width * 0.4),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '0.1903BTC',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 8,
                ),
                GlowText(
                  '+2.35%',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
