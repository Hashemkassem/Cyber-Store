// ignore_for_file: file_names
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cyber_store/config/Theme/theme.dart';
import 'package:cyber_store/feature/auth/data/models/models.dart';
import 'package:cyber_store/feature/auth/presntation/screens/itemsdetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:cyber_store/config/components/glassContainer.dart';
import 'package:google_fonts/google_fonts.dart';

class RobotItems extends StatelessWidget {
  final int id;
  final String image;
  final String subinfo;
  final String name;
  final String bigimage;
  final String information;
  const RobotItems(
      {super.key,
      required this.id,
      required this.image,
      required this.subinfo,
      required this.name,
      required this.bigimage,
      required this.information});
//to get image rabedly form assest or network
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: orangOpacityColor5,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ItemDetails(
                              item: Cyberproduct(
                                id: id,
                                image: image,
                                subinfo: subinfo,
                                name: name,
                                information: information,
                                bigImage: bigimage,
                              ),
                            ),
                          ),
                        );
                      },
                      child: GlassContainer(
                        high2: MediaQuery.of(context).size.height * 0.388,
                        width2: MediaQuery.of(context).size.width * 0.55,
                        widget: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 18),
                                child: Row(
                                  children: [
                                    Text(name,
                                        style: GoogleFonts.exo2(
                                            color: Colors.white, fontSize: 26)
                                        // ),
                                        ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      subinfo,
                                      style: GoogleFonts.exo2(
                                        color: Colors.orange,
                                        fontSize: 16,
                                        // overflow: TextOverflow.ellipsis
                                      ),
                                    )
                                  ],
                                ),
                              ),

                              // ignore: sized_box_for_whitespace
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Hero(
                                  tag: image,
                                  child: CachedNetworkImage(
                                    imageUrl: image,
                                    fit: BoxFit.cover,
                                    errorWidget: (context, error, stackTrace) {
                                      return const CircularProgressIndicator();
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
