// ignore_for_file: file_names, sized_box_for_whitespace
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cyber_store/feature/auth/data/models/models.dart';
import 'package:cyber_store/feature/auth/presntation/screens/home_page_item/robotDateliesl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../../../../config/animation/fadeanimation.dart';
import '../../../data/source/data.dart';
import '../../widget/itemsdetails.dart';

class ShipsPage extends StatefulWidget {
  const ShipsPage({super.key});

  @override
  State<ShipsPage> createState() => _ShipsPageState();
}

class _ShipsPageState extends State<ShipsPage> {
  int showedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final earth = shop.earthShips;
    final space = shop.spaceShips;
    final plane = shop.planes;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.black),
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height * 1.6,
            width: MediaQuery.of(context).size.width,
            child: MyAnimation(
              index: 4,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
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
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: Text(
                          "Chose Your",
                          style: GoogleFonts.exo2(
                              color: Colors.white, fontSize: 24),
                        ),
                      ),
                      Text(
                        "Ship",
                        style: GoogleFonts.exo2(
                            color: Colors.orange,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  middleRow('Ships', 'images/26.png', context),
                  topText('EARTH SHIPS'),
                  shipList(context, earth),
                  topText('SPACE SHIPS'),
                  // robotTypeList(jobsRobot)
                  shipList(context, space),
                  topText('PLANES'),
                  shipList(context, plane)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container shipList(BuildContext context, List<Cyberproduct> shiplist) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.43,
      child: CarouselSlider.builder(
        // physics: const BouncingScrollPhysics(),
        // shrinkWrap: true,
        itemCount: shiplist.length,
        // scrollDirection: Axis.horizontal,
        options: CarouselOptions(
          height: 400,
          enlargeCenterPage: true,
          viewportFraction: 0.55,
          initialPage: showedIndex,
          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
          autoPlay: true,
        ),
        itemBuilder: (context, index, realIndex) {
          return RobotItems(
              bigimage: shiplist[index].bigImage,
              information: shiplist[index].information,
              id: shiplist[index].id,
              image: shiplist[index].image,
              subinfo: shiplist[index].subinfo,
              name: shiplist[index].name);
        },
      ),
    );
  }
}
