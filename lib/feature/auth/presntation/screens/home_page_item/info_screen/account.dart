import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../../../config/Theme/theme.dart';
import '../../../../../../config/animation/fadeanimation.dart';
import '../../../../data/source/data.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: balckOpacityColor,
        child: SafeArea(
          child: MyAnimation(
            index: 4,
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          'images/9.png',
                        ),
                      ),
                      color: orangOpacityColor3,
                      shape: BoxShape.circle),
                  // child: Icon(
                  //   CocoIconBold.User,
                  //   size: MediaQuery.of(context).size.height * 0.3,
                  //   color: Colors.white.withOpacity(0.5),
                  // ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GlowText(
                          shop.email.toUpperCase(),
                          style: GoogleFonts.exo2(
                            color: whiteOpacityColor,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: orangOpacityColor5,
                        borderRadius: BorderRadius.circular(20)),
                    // width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height * 0.08,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Account',
                            style: GoogleFonts.exo2(
                                color: Colors.white, fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '+963 934284086',
                                style: GoogleFonts.exo2(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              //   SizedBox(
                              //     height: MediaQuery.of(context).size.height *
                              //         0.008,
                              //   ),
                              //   const Text('Tap to change phone number',
                              //       style: TextStyle(
                              //           color: Colors.white, fontSize: 1))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: orangOpacityColor5,
                        borderRadius: BorderRadius.circular(20)),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('@hashemKa',
                                    style: GoogleFonts.exo2(
                                        color: Colors.white, fontSize: 22)),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.008,
                                ),
                                Text('Username',
                                    style: GoogleFonts.exo2(
                                        color: Colors.white, fontSize: 16))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: orangOpacityColor5,
                        borderRadius: BorderRadius.circular(20)),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Bio',
                                    style: GoogleFonts.exo2(
                                        color: Colors.white, fontSize: 22)),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.008,
                                ),
                                Text(
                                  'Any Bio you like',
                                  style: GoogleFonts.exo2(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
