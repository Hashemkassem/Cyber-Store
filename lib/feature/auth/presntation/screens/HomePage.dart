// ignore_for_file: file_names, duplicate_ignore
// ignore_for_file: file_names, sized_box_for_whitespace
import 'package:flutter/material.dart';

import 'package:cyber_store/config/components/glassContainer.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomepageScreeen extends StatefulWidget {
  const HomepageScreeen({super.key});

  @override
  State<HomepageScreeen> createState() => _HomepageScreeenState();
}

class _HomepageScreeenState extends State<HomepageScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
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
                            backgroundImage: AssetImage('images/person.png'),
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
                      taplist(context, "ROBOTS", '25 robots', '/robotPage',
                          'images/9.png'),
                      taplist(context, "SHIPS", "13 ships", '/shipspage',
                          'images/26.png'),
                      taplist(context, "WEPONS", "7 wepons", '/weponpage',
                          'images/49.png'),
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
                            width2: MediaQuery.of(context).size.width * 0.46,
                            widget: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.036,
                                  ),
                                  // ignore: sized_box_for_whitespace
                                  Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.256,
                                      width: MediaQuery.of(context).size.width *
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

Widget taplist(BuildContext context, String title, String lable, String route,
    String image) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: GlassContainer(
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(30),
        //     color: Colors.grey.withOpacity(0.3)),
        // height: MediaQuery.of(context).size.height * 0.1,
        width2: MediaQuery.of(context).size.width * 0.46,
        widget: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 12),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 22),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 4),
                child: Row(
                  children: [
                    Text(
                      lable,
                      style:
                          const TextStyle(color: Colors.orange, fontSize: 16),
                    )
                  ],
                ),
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.257,
                      width: MediaQuery.of(context).size.width * 0.43,
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ])
            ],
          ),
        ),
      ),
    ),
  );
}
