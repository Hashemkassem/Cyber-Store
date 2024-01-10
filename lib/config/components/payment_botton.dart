// ignore_for_file: unused_local_variable

import 'package:cyber_store/feature/auth/data/source/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../Theme/theme.dart';

class PaymentBotton extends StatelessWidget {
  final IconData icon;
  final String text;
  const PaymentBotton({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final robotlist = shop.jobsRobot;
    return GestureDetector(
      onTap: () => showModalBottomSheet(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          backgroundColor: const Color.fromARGB(255, 150, 91, 1),
          context: context,
          builder: (contxt) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Sign this Message?',
                        style: GoogleFonts.exo2(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.03),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 4),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Image.asset(
                                'images/MetaMask.png',
                                fit: BoxFit.cover,
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'http://metamask.io',
                                  style: GoogleFonts.exo2(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.024),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 4),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Image.asset(
                                'images/4.png',
                                fit: BoxFit.cover,
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Account',
                                      style: GoogleFonts.exo2(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.024),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'hashem',
                                      style: GoogleFonts.exo2(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.024),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60)),
                              side:
                                  const BorderSide(color: Colors.red, width: 2),
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.099,
                                  vertical: 20),
                              foregroundColor: Colors.red),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Cancel',
                            style: GoogleFonts.exo2(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60)),
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.1,
                                  vertical: 20),
                              foregroundColor: Colors.black,
                              backgroundColor: orangOpacityColor),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Confirm',
                            style: GoogleFonts.exo2(color: Colors.white),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 50,
            width: 50,
            child: Icon(
              icon,
              size: 30,
              color: Colors.orange,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.01,
          ),
          Text(
            text,
            style: GoogleFonts.exo2(color: Colors.white),
          )
        ],
      ),
    );
  }
}
