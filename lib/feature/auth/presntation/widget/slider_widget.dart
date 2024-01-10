// ignore_for_file: avoid_unnecessary_containers, library_private_types_in_public_api

import 'package:cyber_store/feature/auth/presntation/widget/coustomArc.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../../../../config/Theme/theme.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double progressVal = 0.5;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ShaderMask(
            shaderCallback: (rect) {
              return SweepGradient(
                startAngle: degToRad(0),
                endAngle: degToRad(184),
                colors: [Colors.orange, Colors.grey.withAlpha(50)],
                stops: [progressVal, progressVal],
                transform: GradientRotation(
                  degToRad(178),
                ),
              ).createShader(rect);
            },
            child: const Center(
              child: CustomArc(),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: kDiameter - 30,
                height: kDiameter - 30,
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 20,
                      style: BorderStyle.solid,
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 30,
                          spreadRadius: 10,
                          color: Colors.orange.withAlpha(
                              normalize(progressVal * 20000, 100, 255).toInt()),
                          offset: const Offset(1, 3))
                    ]),
                child: SleekCircularSlider(
                  min: kMinDegree,
                  max: kMaxDegree,
                  initialValue: 22,
                  appearance: CircularSliderAppearance(
                    startAngle: 180,
                    angleRange: 180,
                    size: kDiameter - 30,
                    customWidths: CustomSliderWidths(
                      trackWidth: 10,
                      shadowWidth: 0,
                      progressBarWidth: 01,
                      handlerSize: 15,
                    ),
                    customColors: CustomSliderColors(
                      hideShadow: true,
                      progressBarColor: Colors.transparent,
                      trackColor: Colors.transparent,
                      dotColor: Colors.orange,
                    ),
                  ),
                  onChange: (value) {
                    setState(() {
                      progressVal = normalize(value, kMinDegree, kMaxDegree);
                    });
                  },
                  innerWidget: (percentage) {
                    return Center(
                      child: Text(
                        '${percentage.toInt()}',
                        style: const TextStyle(
                          color: Colors.orange,
                          fontSize: 50,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 130,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "min engine",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  Text("max engine",
                      style: TextStyle(color: Colors.white, fontSize: 10))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
