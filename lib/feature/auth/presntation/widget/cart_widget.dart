// ignore_for_file: sized_box_for_whitespace, avoid_print, unused_local_variable

import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cyber_store/feature/auth/data/source/data.dart';
import 'package:cyber_store/config/components/glassContainer.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../../../config/Theme/theme.dart';
import '../../data/models/models.dart';

class CartWidget extends StatefulWidget {
  final Cyberproduct item;
  const CartWidget({super.key, required this.item});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    void removeCart(Cyberproduct item) {
      final shop = context.read<Shop>();
      shop.removeFromCart(item);
    }

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
        } else if (quantityCount >= 0) {
          quantityCount++;
        } else {
          print(quantityCount);
        }
      });
    }

    final price = Random().nextInt(10);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Dismissible(
              key: ValueKey<String>(widget.item.id.toString()),
              onDismissed: (direction) => removeCart(widget.item),
              onUpdate: (details) {
                return removeCart(widget.item);
              },
              direction: DismissDirection.horizontal,
              background: Container(
                color: Colors.orange.withOpacity(0.5),
                child: const Icon(
                  Icons.delete_outline_outlined,
                  color: Colors.white,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.orange.withOpacity(0.5),
                      splashFactory: InkRipple.splashFactory,
                      // onHover: (constext) {},
                      onTap: () {},
                      child: GlassContainer(
                        // high2: MediaQuery.of(context).size.height * 0.15,
                        // width2: MediaQuery.of(context).size.width,
                        widget: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.24,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: CachedNetworkImage(
                                        imageUrl: widget.item.image,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.125,
                                        fit: BoxFit.fill,
                                        errorWidget:
                                            (context, error, stackTrace) {
                                          return const CircularProgressIndicator();
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.46,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 18),
                                      child: Row(
                                        children: [
                                          Text(
                                            widget.item.name,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 22),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 4),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            widget.item.subinfo,
                                            style: const TextStyle(
                                              color: Colors.orange,
                                              fontSize: 16,
                                              // overflow: TextOverflow.ellipsis
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 4),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '$quantityCount ',
                                            style: TextStyle(
                                              color: orangOpacityColor,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 7,
                                          ),
                                          Image.asset(
                                            'images/bitcoin.png',
                                            fit: BoxFit.cover,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.02,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.15,
                                child: SingleChildScrollView(
                                  physics: const NeverScrollableScrollPhysics(),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 110,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.orange
                                                  .withOpacity(0.5)),
                                          child: SingleChildScrollView(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            scrollDirection: Axis.vertical,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {
                                                        incrementQuantity();
                                                        print(quantityCount);
                                                      },
                                                      icon: const Icon(
                                                        Icons.add_rounded,
                                                        color: Colors.white,
                                                      )),
                                                  Text(
                                                    '$quantityCount',
                                                    style: TextStyle(
                                                      color: orangOpacityColor,
                                                    ),
                                                  ),
                                                  IconButton(
                                                      onPressed: () {
                                                        decrementQuantity();
                                                      },
                                                      icon: const Icon(
                                                        Icons.minimize_rounded,
                                                        color: Colors.white,
                                                      ))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
