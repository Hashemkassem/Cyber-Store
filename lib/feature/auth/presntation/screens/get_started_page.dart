// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../config/Theme/theme.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  late PageController _controller;
  double offset = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    _controller.addListener(() {
      setState(() {
        offset = _controller.page ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    List sliders = [
      {
        "title": "Boost your\nproductivity",
        "subtitle":
            "Buy Your robot to assist, support and protect you all the time",
        "imgUrl":
            "https://lh3.googleusercontent.com/pw/ABLVV85-8nDV78eFohHntXnpO4sHS-AnMWze17J1pjnclIluKWLluIRXK4TqlTZhqMSFcSqR5yEvGVtFdN0iYkMLKjw-Pvi17G_7pvaNDbVRXeS9EZOGgLcI-HbNaQAVnSufRZN_4eexiyNRiph8HMwPM1UB=w875-h875-s-no-gm?authuser=0",
      },
      {
        "title": "Your messages,\nall in one place",
        "subtitle":
            "Chose your ships in this madness era and get a tour in the wide galaxies",
        "imgUrl":
            "https://lh3.googleusercontent.com/pw/ABLVV87rjnJHb-mqSRM6_83RsTcaXd89TWbPNI2Dx2FlTpBIgPUo42ZVSIV8Be0wCsAXiLvh2z3bYCH__Uj4KOmA8J3Mh_InMvAtt9JyfbEg2o_CmaaLgmV3TfY5f0DmbQc-uFRFJI7P2CGMx785sX98LVz2=w875-h875-s-no-gm?authuser=0",
      },
      {
        "title": "Collaborate in\nreal time",
        "subtitle":
            "Be aware about your safety and get best weapon to protect your self",
        "imgUrl":
            "https://lh3.googleusercontent.com/pw/ABLVV85lgR28v1-JKBbiSjH3wE8oHsDzFnbwKUrfVzBdYBANuxxcG5ej5Ssw5X4nfFPXwVC10y0BzXoiiytLb4VFMzKKs16ha4YhPR6R-4dm6u9fndzCdoCoBH5inh3ZisNByiJaj_JPOgYsdndGHQ-_Piam=w875-h875-s-no-gm?authuser=0",
      },
      {
        "title": "Collaborate in\nreal time",
        "subtitle":
            "Prepare yourself to the big dangerous war like it never was before",
        "imgUrl":
            "https://lh3.googleusercontent.com/pw/ABLVV87f01j1QGuUUhXFAh5BL5R_4YB40OX5FrkzyTfUgeqqLi3siKOIoPZM3ys2NQsjuEHnHCNCFV5SKTnY8YR4csETfjyVpPaSA2iAYKCFhm2sPASO5G_6eOK_Io6doLjQrPp_MW88d97MnVk6ShvkmZ2N=w875-h875-s-no-gm?authuser=0",
      }
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.black,
        margin: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: sliders
                    .map(
                      (curruntIndec) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.only(right: 15.0),
                        width: 50.0,
                        height: 4.0,
                        decoration: BoxDecoration(
                          color: currentIndex == sliders.indexOf(curruntIndec)
                              ? kActiveIndicatorColor
                              : kInactiveIndicatorColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: PageView.builder(
                      physics: const ClampingScrollPhysics(),
                      controller: _controller,
                      // onPageChanged: (index) {
                      //   setState(() {
                      //     currentIndex = index;
                      //   });
                      // },
                      itemCount: sliders.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height * 0.6,
                              child: CachedNetworkImage(
                                imageUrl: sliders[index]["imgUrl"],
                                fit: BoxFit.cover,
                                imageBuilder: (context, imageProvider) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          alignment: Alignment(
                                            -offset.abs(),
                                            0,
                                          ),
                                          image: imageProvider),
                                      // borderRadius:
                                      // BorderRadius.circular(20)
                                    ),
                                    alignment: Alignment.center,
                                  );
                                },
                                errorWidget: (context, url, error) {
                                  return const CircularProgressIndicator();
                                },
                              ),
                              // decoration: BoxDecoration(
                              //   image: DecorationImage(
                              //     fit: BoxFit.contain,
                              //     image: AssetImage(sliders[i]["imgUrl"]),
                              //   ),
                              // ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      sliders[currentIndex]["title"],
                      style: GoogleFonts.exo2(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 38.0,
                        height: 1.30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  sliders[currentIndex]["subtitle"],
                  style: GoogleFonts.exo2(color: whiteOpacityColor),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.60,
                  child: MaterialButton(
                    elevation: 3.0,
                    highlightElevation: 0.0,
                    color: kButtonColor,
                    onPressed: () {
                      //   currentIndex == sliders.length;
                      //   //     ? () {
                      //   setState(() {
                      //     currentIndex++;
                      //   });
                      //   _controller.nextPage(
                      //       duration: const Duration(milliseconds: 300),
                      //       curve: Curves.linear);
                      // },

                      Navigator.pushNamed(context, '/authpage');

                      // currentIndex == sliders.length - 1
                      //     ? () => Navigator.pushNamed(
                      //         context, '/homepage')
                      //     : () {
                      //         setState(() {
                      //           currentIndex = currentIndex + 1;
                      //         });
                      //         _controller.nextPage(
                      //             duration: const Duration(
                      //                 milliseconds: 300),
                      //             curve: Curves.linear);
                    },
                    padding: const EdgeInsets.symmetric(vertical: 23.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: const Text(
                      "GET STARTED",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
