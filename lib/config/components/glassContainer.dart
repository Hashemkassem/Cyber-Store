// ignore_for_file: file_names

import 'dart:ui';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GlassContainer extends StatelessWidget {
  // ignore: non_constant_identifier_names

  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  double? high2;
  double? width2;
  Widget? widget;
  Decoration? decoration;
  EdgeInsetsGeometry? margain;
  GlassContainer({
    this.high2,
    this.width2,
    this.decoration,
    this.widget,
    this.margain,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child:
            //blur effect ==> the third layer of stack
            //GlowContainer
            Container(
          //glowColor: Colors.white.withOpacity(0.2),
          width: width2,
          height: high2,
          color: Colors.transparent,
          child: BackdropFilter(
              filter: ImageFilter.blur(
                //sigmaX is the Horizontal blur
                sigmaX: 4.0,
                //sigmaY is the Vertical blur
                sigmaY: 4.0,
              ),
              //we use this container to scale up the blur effect to fit its
              //  parent, without this container the blur effect doesn't appear.
              child: Container(
                  margin: margain,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white.withOpacity(0.13)),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          //begin color
                          Colors.white.withOpacity(0.15),
                          //end color
                          Colors.white.withOpacity(0.05),
                        ]),
                  ),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      child: widget))),
        ),
      ),
      //gradient effect ==> the second layer of stack
    );
  }
}
