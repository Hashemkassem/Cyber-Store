import 'package:cached_network_image/cached_network_image.dart';
import 'package:cyber_store/feature/auth/data/models/models.dart';
import 'package:cyber_store/feature/auth/presntation/screens/itemsdetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:cyber_store/config/components/glassContainer.dart';
import 'package:google_fonts/google_fonts.dart';

class WeponItem extends StatelessWidget {
  final int id;
  final String image;
  final String subinfo;
  final String name;
  final String bigimage;
  final String information;
  const WeponItem(
      {super.key,
      required this.id,
      required this.image,
      required this.subinfo,
      required this.name,
      required this.bigimage,
      required this.information});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.orange.withOpacity(0.5),
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
              // high2: MediaQuery.of(context).size.height * 0.5,
              widget: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CachedNetworkImage(
                          imageUrl: image,
                          errorWidget: (context, url, error) {
                            return const CircularProgressIndicator();
                          },
                          width: MediaQuery.of(context).size.width * 0.4),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        name,
                        style:
                            GoogleFonts.exo2(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
