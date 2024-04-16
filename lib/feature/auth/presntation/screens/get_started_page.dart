// ignore_for_file: no_leading_underscores_for_local_identifiers, must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../config/Theme/theme.dart';
import '../../../../config/animation/get_started_word_animation.dart';

class GetStarted extends StatefulWidget {
  late bool isboarding;
  GetStarted({super.key, required this.isboarding});

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
    final selectedPageNotifier = ValueNotifier(currentIndex);

    List title = [
      "Boost your\nproductivity",
      "Your messages,\nall in one place",
      "Collaborate in\nreal time",
      "Collaborate in\nreal time",
    ];
    List sliders = [
      {
        // "title": ,
        "subtitle":
            "Buy Your robot to assist, support and protect you all the time",
        "imgUrl":
            "https://lh3.googleusercontent.com/pw/ABLVV86IckF4wjz5MbtaAvvvrHNEBuHWuZbQyvisM9lk78gRTMRx3UXiR5mAcg10LP0qS2lRCi91rUC-gZYasBVMkpucJoNSVNyC7s9mXGu-fPGh9kE8-JTsVNUUAYpfp6Bz7ROAuzRQRzDBJS0-qukH0cIf=w583-h875-s-no-gm?authuser=0",
      },
      {
        // "title":
        "subtitle":
            "Chose your ships in this madness era and get a tour in the wide galaxies",
        "imgUrl":
            "https://lh3.googleusercontent.com/pw/ABLVV85v3uSAMcwfDf8tOBFu5ppyVCJ4kHoPDTKj7kyMHwY1j3hmPjdKClp8RV6SEyqdOOuZARF3Vv7GmLBYK7NVZPt_ZCIqrfDU34JTSgNnRV12DjTV4vyynau-ObcczRaRcxT6Jx9f8LN6uZiF1SdHeZdQ=w583-h875-s-no-gm?authuser=0",
      },
      {
        // "title":
        "subtitle":
            "Be aware about your safety and get best weapon to protect your self",
        "imgUrl":
            "https://lh3.googleusercontent.com/pw/ABLVV856PwgaZko6O4yBJmUhBITfL56wO98rcymAOTsmAQjdfZevzkZFN8ryptzDaTGqKx_YxGxiN9mGpoVckrigtaO662zzlovsJyZg-PnAPsYHhFuYDZifCxKDCtCd9Y0AXIfvIzA0LvTnTU9vPZyis8Hy=w583-h875-s-no-gm?authuser=0",
      },
      {
        // "title":
        "subtitle":
            "Prepare yourself to the big dangerous war like it never was before",
        "imgUrl":
            "https://lh3.googleusercontent.com/pw/ABLVV85wPQWm0bHRJW6gibTdrQTrs0oVzsbNnHFHdrq4YlpFUia08hqH7-C7Z_WlWrPA2s9a3-wl_uhsD84xz_QH0rmjZ9XhfRsX8KWHARCOzgUsWMFJW5hKsNcwBLyaiVABsKnaHuM7rJYLMhO0bEu_uvt-=w583-h875-s-no-gm?authuser=0",
      }
    ];
    return SafeArea(
      child: Scaffold(
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
                                height:
                                    MediaQuery.of(context).size.height * 0.6,
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
                      child: ValueListenableBuilder<int>(
                        valueListenable: selectedPageNotifier,
                        builder: (context, value, child) {
                          return BackgroundWording(
                            key: UniqueKey(),
                            title: title[value],
                            duration: const Duration(milliseconds: 1000),
                          );
                        },
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
                        setState(() {
                          widget.isboarding = false;
                        });
                        //   currentIndex == sliders.length;
                        //   setState(() {
                        //     currentIndex++;
                        //   });
                        //   _controller.nextPage(
                        //       duration: const Duration(milliseconds: 300),
                        //       curve: Curves.linear);
                        // },
                        ////////
                        // Navigator.pushNamed(context, '/authpage');
                        ///////
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
      ),
    );
  }
}
