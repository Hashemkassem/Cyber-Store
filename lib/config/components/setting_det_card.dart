import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingDetailsCard extends StatelessWidget {
  final String lable;
  final IconData icon;
  const SettingDetailsCard({
    super.key,
    required this.lable,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.015,
          horizontal: MediaQuery.of(context).size.height * 0.015),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Center(
                        child: Text(
                      'Sorry, I didn\'t do the function :(',
                      style: GoogleFonts.exo2(color: Colors.amber),
                    )),
                  );
                },
              );
            },
            child: Row(children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                height: MediaQuery.of(context).size.height * 0.045,
                width: MediaQuery.of(context).size.height * 0.045,
                child: Icon(
                  icon,
                  size: MediaQuery.of(context).size.height * 0.04,
                  color: Colors.orange,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Text(
                lable,
                style: GoogleFonts.exo2(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.bold),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
