// ignore_for_file: file_names, duplicate_ignore
// ignore_for_file: file_names, sized_box_for_whitespace
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:cyber_store/config/components/glassContainer.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../config/Theme/theme.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomepageScreeen extends StatefulWidget {
  const HomepageScreeen({super.key});

  @override
  State<HomepageScreeen> createState() => _HomepageScreeenState();
}

class _HomepageScreeenState extends State<HomepageScreeen> {
  bool isboarding = true;
  int currentIndex = 0;
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

  List sliders = [
    {
      "title": "Boost your\nproductivity",
      "subtitle":
          "Buy Your robot to assist, support and protect you all the time",
      "imgUrl":
          "https://lh3.googleusercontent.com/pw/ABLVV86IckF4wjz5MbtaAvvvrHNEBuHWuZbQyvisM9lk78gRTMRx3UXiR5mAcg10LP0qS2lRCi91rUC-gZYasBVMkpucJoNSVNyC7s9mXGu-fPGh9kE8-JTsVNUUAYpfp6Bz7ROAuzRQRzDBJS0-qukH0cIf=w583-h875-s-no-gm?authuser=0",
    },
    {
      "title": "Your messages,\nall in one place",
      "subtitle":
          "Chose your ships in this madness era and get a tour in the wide galaxies",
      "imgUrl":
          "https://lh3.googleusercontent.com/pw/ABLVV85v3uSAMcwfDf8tOBFu5ppyVCJ4kHoPDTKj7kyMHwY1j3hmPjdKClp8RV6SEyqdOOuZARF3Vv7GmLBYK7NVZPt_ZCIqrfDU34JTSgNnRV12DjTV4vyynau-ObcczRaRcxT6Jx9f8LN6uZiF1SdHeZdQ=w583-h875-s-no-gm?authuser=0",
    },
    {
      "title": "Collaborate in\nreal time",
      "subtitle":
          "Be aware about your safety and get best weapon to protect your self",
      "imgUrl":
          "https://lh3.googleusercontent.com/pw/ABLVV856PwgaZko6O4yBJmUhBITfL56wO98rcymAOTsmAQjdfZevzkZFN8ryptzDaTGqKx_YxGxiN9mGpoVckrigtaO662zzlovsJyZg-PnAPsYHhFuYDZifCxKDCtCd9Y0AXIfvIzA0LvTnTU9vPZyis8Hy=w583-h875-s-no-gm?authuser=0",
    },
    {
      "title": "Collaborate in\nreal time",
      "subtitle":
          "Prepare yourself to the big dangerous war like it never was before",
      "imgUrl":
          "https://lh3.googleusercontent.com/pw/ABLVV85wPQWm0bHRJW6gibTdrQTrs0oVzsbNnHFHdrq4YlpFUia08hqH7-C7Z_WlWrPA2s9a3-wl_uhsD84xz_QH0rmjZ9XhfRsX8KWHARCOzgUsWMFJW5hKsNcwBLyaiVABsKnaHuM7rJYLMhO0bEu_uvt-=w583-h875-s-no-gm?authuser=0",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: isboarding
            ? Container(
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
                                  color: currentIndex ==
                                          sliders.indexOf(curruntIndec)
                                      ? kActiveIndicatorColor
                                      : kInactiveIndicatorColor,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Stack(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.75,
                            child: PageView.builder(
                              physics: const ClampingScrollPhysics(),
                              controller: _controller,
                              onPageChanged: (index) {
                                setState(() {
                                  currentIndex = index;
                                });
                              },
                              itemCount: sliders.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.72,
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
                                            ),
                                            alignment: Alignment.center,
                                          );
                                        },
                                        errorWidget: (context, url, error) {
                                          return const CircularProgressIndicator();
                                        },
                                      ),
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
                      const SizedBox(
                        height: 20,
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
                              setState(() {
                                isboarding = false;
                              });
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
              )
            : Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'images/1.png',
                    ),
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 16, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 22,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Hello, ",
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white,

                                        //fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Text(
                                      " Hashem",
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Explor Your ",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "CYBER Tools",
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(40),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/Info');
                                },
                                child: const CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage('images/person.png'),
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.65),
                        child: ListView(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/robotPage');
                                },
                                child: GlassContainer(
                                  // decoration: BoxDecoration(
                                  //     borderRadius: BorderRadius.circular(30),
                                  //     color: Colors.grey.withOpacity(0.3)),
                                  // height: MediaQuery.of(context).size.height * 0.1,
                                  width2:
                                      MediaQuery.of(context).size.width * 0.46,
                                  widget: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, top: 12),
                                          child: Row(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "ROBOTS",
                                                    style: GoogleFonts.exo2(
                                                        color: Colors.white,
                                                        fontSize: 22),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, top: 4),
                                          child: Row(
                                            children: [
                                              Text(
                                                '25 robots',
                                                style: GoogleFonts.exo2(
                                                    color: Colors.orange,
                                                    fontSize: 16),
                                              )
                                            ],
                                          ),
                                        ),
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.257,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.43,
                                                child: Image.asset(
                                                  'images/9.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ])
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/shipspage');
                                },
                                child: GlassContainer(
                                  // decoration: BoxDecoration(
                                  //     borderRadius: BorderRadius.circular(30),
                                  //     color: Colors.grey.withOpacity(0.3)),
                                  // height: MediaQuery.of(context).size.height * 0.1,
                                  width2:
                                      MediaQuery.of(context).size.width * 0.46,
                                  widget: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, top: 12),
                                          child: Row(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "SHIPS",
                                                    style: GoogleFonts.exo2(
                                                        color: Colors.white,
                                                        fontSize: 22),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, top: 4),
                                          child: Row(
                                            children: [
                                              Text(
                                                "13 ships",
                                                style: GoogleFonts.exo2(
                                                    color: Colors.orange,
                                                    fontSize: 16),
                                              )
                                            ],
                                          ),
                                        ),
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.257,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.43,
                                                child: Image.asset(
                                                  'images/26.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ])
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/weponpage');
                                },
                                child: GlassContainer(
                                  // decoration: BoxDecoration(
                                  //     borderRadius: BorderRadius.circular(30),
                                  //     color: Colors.grey.withOpacity(0.3)),
                                  // height: MediaQuery.of(context).size.height * 0.1,
                                  width2:
                                      MediaQuery.of(context).size.width * 0.46,
                                  widget: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, top: 12),
                                          child: Row(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "WEPONS",
                                                    style: GoogleFonts.exo2(
                                                        color: Colors.white,
                                                        fontSize: 22),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, top: 4),
                                          child: Row(
                                            children: [
                                              Text(
                                                "7 wepons",
                                                style: GoogleFonts.exo2(
                                                    color: Colors.orange,
                                                    fontSize: 16),
                                              )
                                            ],
                                          ),
                                        ),
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.257,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.43,
                                                child: Image.asset(
                                                  'images/49.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ])
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          backgroundColor:
                                              Colors.orange.withOpacity(0.8),
                                          title: const Center(
                                              child: Text(
                                            'Comeing Soon',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontStyle: FontStyle.italic),
                                          )),
                                        );
                                      });
                                },
                                child: GlassContainer(
                                  // decoration: BoxDecoration(
                                  //     borderRadius: BorderRadius.circular(30),
                                  //     color: Colors.grey.withOpacity(0.3)),
                                  // height: MediaQuery.of(context).size.height * 0.1,
                                  width2:
                                      MediaQuery.of(context).size.width * 0.46,
                                  widget: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.036,
                                        ),
                                        // ignore: sized_box_for_whitespace
                                        Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.256,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.43,
                                            child: const Icon(
                                              Icons.add_circle_outline,
                                              size: 140,
                                              color: Colors.grey,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ));
  }
}

// Widget taplist(BuildContext context, String title, String lable, String route,
//     String image) {
//   return;
// }
