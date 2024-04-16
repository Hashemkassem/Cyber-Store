// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:cyber_store/feature/auth/data/source/data.dart';
import 'package:cyber_store/feature/auth/data/models/models.dart';
import 'package:cyber_store/feature/auth/presntation/widget/itemsdetails.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../../config/animation/fadeanimation.dart';

class RobotDetails extends StatefulWidget {
  const RobotDetails({super.key});

  @override
  State<RobotDetails> createState() => _RobotDetailsState();
}

class _RobotDetailsState extends State<RobotDetails> {
  int showedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final safty = shop.saftyRobot;
    final jobs = shop.jobsRobot;
    final care = shop.careRobot;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.black),
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height * 1.8,
            width: MediaQuery.of(context).size.width,
            child: MyAnimation(
              index: 4,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context, '/');
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.orange,
                          )),
                      const SizedBox(
                        width: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: Text(
                          "Chose Your",
                          style: GoogleFonts.exo2(
                              color: Colors.white, fontSize: 24),
                        ),
                      ),
                      Text(
                        "Robot",
                        style: GoogleFonts.exo2(
                            color: Colors.orange,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  middleRow('Robot', 'images/9.png', context),
                  topText('SAFTY ROBOT'),
                  robotList(context, safty),
                  topText('JOBS ROBOT'),
                  // robotTypeList(jobsRobot)
                  robotList(context, jobs),
                  topText('MEDICALE CARE ROBOT'),
                  robotList(context, care),
                  //robotList(context, Cart)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container robotList(BuildContext context, List<Cyberproduct> robotlist) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.43,
      child: CarouselSlider.builder(
        // physics: const BouncingScrollPhysics(),
        // shrinkWrap: true,
        itemCount: robotlist.length,
        // scrollDirection: Axis.horizontal,
        options: CarouselOptions(
          autoPlayInterval: const Duration(seconds: 2),
          autoPlayAnimationDuration: const Duration(milliseconds: 600),
          height: 400,
          enlargeCenterPage: true,
          viewportFraction: 0.55,
          initialPage: showedIndex,
          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
          autoPlay: true,
        ),
        itemBuilder: (context, index, realIndex) {
          return RobotItems(
            item: robotlist[index],
          );
        },
      ),
    );
  }
}

Widget middleRow(String element, String image, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      // width: double.infinity,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // verticalDirection: VerticalDirection.down,
                // mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Text("Find your $element easly",
                      style: GoogleFonts.exo2(color: Colors.white, fontSize: 18)
                      // const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "The most important thing in the CYBER ERA",
                    style: TextStyle(color: Colors.orange, fontSize: 14),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   width: MediaQuery.of(context).size.width * 0.1,
            // ),
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 90,
              child: Image.asset(image),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget topText(String title) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GlowText(
            title,
            style: GoogleFonts.exo2(fontSize: 20, color: Colors.white),
          ),
          Text(
            'View all',
            style: GoogleFonts.exo2(
              decoration: TextDecoration.underline,
              decorationThickness: 1,
              decorationColor: Colors.orange,
              fontSize: 16,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    ),
  );
}
