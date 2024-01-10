import 'package:flutter/material.dart';
import 'dart:math';

Color orangOpacityColor5 = Colors.orange.withOpacity(0.5);
Color orangOpacityColor4 = Colors.orange.withOpacity(0.4);
Color orangOpacityColor3 = Colors.orange.withOpacity(0.3);
Color orangOpacityColor = Colors.orange;
Color grayOpacityColor5 = Colors.grey.withOpacity(0.5);
Color whiteOpacityColor = Colors.white;
Color whiteOpacityColor5 = Colors.white.withOpacity(0.5);
Color balckOpacityColor = Colors.black;
Color redOpacityColor = Colors.red;

double degToRad(num deg) => deg * (pi / 180.0);

double normalize(value, min, max) => ((value - min) / (max - min));

const Color kScaffoldBackgroundColor = Color(0xFFF3FBFA);
const double kDiameter = 300;
const double kMinDegree = 16;
const double kMaxDegree = 28;
const kButtonColor = Color.fromRGBO(39, 39, 39, 1);
const kInactiveIndicatorColor = Color.fromRGBO(82, 82, 82, 1);
const kActiveIndicatorColor = Colors.white;
const kPrimaryBackgroundGradient = LinearGradient(
  colors: [
    Color(0xff161616),
    Color(0xff171717),
  ],
  stops: [0.25, 0.75],
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
);
/*
24/0.03
30
25/0.032
 */