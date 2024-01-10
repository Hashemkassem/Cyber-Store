// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../../config/animation/fadeanimation.dart';

class AllItems extends StatelessWidget {
  const AllItems({super.key});

  @override
  Widget build(BuildContext context) {
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
                children: const [],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
