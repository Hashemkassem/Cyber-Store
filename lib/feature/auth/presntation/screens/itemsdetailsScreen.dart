// ignore_for_file: file_names, sized_box_for_whitespace, prefer_const_constructors_in_immutables, body_might_complete_normally_nullable, unused_local_variable, unused_element
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cyber_store/feature/auth/presntation/widget/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'package:cyber_store/config/Theme/theme.dart';
import 'package:cyber_store/config/animation/fadeanimation.dart';
import 'package:cyber_store/config/components/glassContainer.dart';
import 'package:cyber_store/feature/auth/data/models/models.dart';
import 'package:cyber_store/feature/auth/data/source/data.dart';

class ItemDetails extends StatefulWidget {
  final Cyberproduct item;
  ItemDetails({
    super.key,
    required this.item,
  });
  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  int quantityCount = 0;
  void decrementQuantity() {
    setState(() {
      if (quantityCount > 0) {
        quantityCount--;
      }
    });
  }

  void incrementQuantity() {
    setState(() {
      if (quantityCount > 10) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.orange.withOpacity(0.8),
                title: Center(
                    child: Text(
                  'Out of Bocate',
                  style: TextStyle(
                      color: balckOpacityColor, fontStyle: FontStyle.italic),
                )),
              );
            });
      } else {
        quantityCount++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    IconData icon1 = Icons.star_rounded;
    IconData icon2 = Icons.star_outline;
    bool click = true;
    void switchIcons() {
      setState(() {
        click = !click;
      });
    }

    FutureBuilder<dynamic>? Function()? addToCart() {
      if (quantityCount > 0) {
        final shop = context.read<Shop>();
        shop.addToCart(widget.item, quantityCount, context);
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: balckOpacityColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, '/');
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.orange,
            )),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
          child: Text(
            widget.item.name,
            style: GoogleFonts.exo2(color: Colors.orange, fontSize: 20),
          ),
        ),
        actions: [
          PopupMenuButton(
            iconColor: orangOpacityColor,
            surfaceTintColor: Colors.black,
            color: Colors.white,
            itemBuilder: (context) => [
              PopupMenuItem(
                child: popupitem(Icons.share, 'Share'),
              ),
              PopupMenuItem(
                child: popupitem(Icons.flag_outlined, 'Flag as inappropriate'),
              ),
              PopupMenuItem(
                child: popupitem(Icons.settings, 'Advance setting'),
              ),
            ],
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.black),
        child: SafeArea(
          child: Stack(
            children: [
              MyAnimation(
                index: 4,
                child: ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    // item photo
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: GlassContainer(
                        // high2: MediaQuery.of(context).size.height * 0.75,
                        // width2: MediaQuery.of(context).size.width,
                        widget: Column(
                          children: [
                            SizedBox(
                              //  height:
                              //MediaQuery.of(context).size.height * 0.415,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: CachedNetworkImage(
                                  imageUrl: widget.item.bigImage,
                                  fit: BoxFit.cover,
                                  errorWidget: (context, url, progress) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircularProgressIndicator(
                                        color: whiteOpacityColor,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '2.5',
                                      style: GoogleFonts.exo2(
                                          fontSize: 16,
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'images/bitcoin.png',
                                      fit: BoxFit.cover,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Price',
                                  style: GoogleFonts.exo2(
                                      fontSize: 16,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                              child: VerticalDivider(
                                color: Colors.orange,
                                width: 20,
                                thickness: 1,
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '4.6 ',
                                      style: GoogleFonts.exo2(
                                          fontSize: 16,
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Icon(
                                      Icons.star_rounded,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '1M reviews',
                                  style: GoogleFonts.exo2(
                                      fontSize: 16,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                              child: VerticalDivider(
                                color: Colors.orange,
                                width: 20,
                                thickness: 1,
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '50M +',
                                      style: GoogleFonts.exo2(
                                          fontSize: 16,
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Purchased',
                                  style: GoogleFonts.exo2(
                                      fontSize: 16,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: GlowText(
                        "Description",
                        style: GoogleFonts.exo2(
                            color: orangOpacityColor, height: 2, fontSize: 20),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "${widget.item.name} robot is able to build and control your apartment ,villa ,aprtment or pallas security from theaft,also if you are out of door,${widget.item.name} will follow you where ever you are. ${widget.item.name} can help you to watch and follow your family and protect them.",
                        style: GoogleFonts.exo2(
                            color: whiteOpacityColor, height: 2, fontSize: 18),
                      ),
                    ),
                    // const SizedBox(
                    //   height: 15,
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GlowText(
                            "Ratings and reviews",
                            style: GoogleFonts.exo2(
                                color: orangOpacityColor,
                                height: 2,
                                fontSize: 20),
                          ),
                          IconButton(
                            onPressed: () {},
                            tooltip: "no reviews yet",
                            icon: Icon(
                              Icons.arrow_forward_rounded,
                              color: orangOpacityColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "4.6",
                                    style: GoogleFonts.exo2(
                                        color: whiteOpacityColor, fontSize: 25),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star_rate_rounded,
                                        color: orangOpacityColor,
                                      ),
                                      Icon(
                                        Icons.star_rate_rounded,
                                        color: orangOpacityColor,
                                      ),
                                      Icon(
                                        Icons.star_rate_rounded,
                                        color: orangOpacityColor,
                                      ),
                                      Icon(
                                        Icons.star_rate_rounded,
                                        color: orangOpacityColor,
                                      ),
                                      Icon(
                                        Icons.star_half_rounded,
                                        color: orangOpacityColor,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "14,221",
                                    style: GoogleFonts.exo2(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Column(
                                children: [
                                  ratingPercent(5, 1, context),
                                  ratingPercent(4, 0.2, context),
                                  ratingPercent(3, 0.1, context),
                                  ratingPercent(2, 0.1, context),
                                  ratingPercent(1, 0.1, context),
                                ],
                              ),
                            ),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.electric_bolt_rounded,
                            color: orangOpacityColor,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          GlowText(
                            "Engines",
                            style: GoogleFonts.exo2(
                                color: orangOpacityColor,
                                height: 2,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "select the number of Engines that you want to your product:",
                        style: GoogleFonts.exo2(
                            color: whiteOpacityColor, height: 2, fontSize: 18),
                      ),
                    ),
                    const SliderWidget()
                  ],
                ),
              ),
              //add to cart botton
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SlideAction(
                    height: 70,
                    text: 'Add To Cart',
                    onSubmit: () {
                      setState(() {
                        quantityCount++;
                      });
                      addToCart();
                    },
                    sliderButtonIcon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.orange,
                    ),
                    // innerColor: Colors.green,
                    textColor: Colors.white,
                    outerColor: Colors.orange.shade800,
                    reversed: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget popupitem(IconData iconData, String text) {
    return Row(
      children: [
        Icon(
          iconData,
          color: orangOpacityColor,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: GoogleFonts.exo2(color: Colors.orange),
        ),
      ],
    );
  }
}

Widget ratingPercent(int number, double percent, BuildContext context) {
  return Row(
    children: [
      SizedBox(
        width: 20,
        child: Text(
          number.toString(),
          style: GoogleFonts.exo2(color: Colors.grey, fontSize: 12),
        ),
      ),
      LinearPercentIndicator(
        animation: true,
        animationDuration: 2000,
        curve: Curves.linear,
        barRadius: const Radius.circular(20),
        percent: percent,
        width: MediaQuery.of(context).size.width * 0.5,
        lineHeight: 10,
        progressColor: orangOpacityColor,
        backgroundColor: orangOpacityColor.withOpacity(0.5),
      ),
    ],
  );
}
