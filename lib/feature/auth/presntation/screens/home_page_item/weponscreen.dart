// ignore_for_file: unused_import, sized_box_for_whitespace

import 'package:cyber_store/config/animation/fadeanimation.dart';
import 'package:cyber_store/feature/auth/data/source/data.dart';
import 'package:cyber_store/feature/auth/presntation/widget/weponwidget.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:cyber_store/config/components/glassContainer.dart';

class WeponPage extends StatefulWidget {
  const WeponPage({super.key});

  @override
  State<WeponPage> createState() => _WeponPageState();
}

class _WeponPageState extends State<WeponPage> {
  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final wepon = shop.wepons;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.black),
        child: MyAnimation(
          index: 4,
          child: ListView(
              physics: const NeverScrollableScrollPhysics(),
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
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8),
                      child: Text(
                        "Chose Your",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                    const Text(
                      "Wepon",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: wepon.length,
                    itemBuilder: (context, index) {
                      return WeponItem(
                          id: wepon[index].id,
                          image: wepon[index].image,
                          subinfo: wepon[index].subinfo,
                          name: wepon[index].name,
                          bigimage: wepon[index].bigImage,
                          information: wepon[index].information);
                    },
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 6 / 8,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
