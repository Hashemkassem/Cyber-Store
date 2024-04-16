import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackgroundWording extends StatefulWidget {
  const BackgroundWording({
    super.key,
    required this.title,
    this.duration = const Duration(milliseconds: 300),
  });

  final String title;
  final Duration duration;

  @override
  State<BackgroundWording> createState() => _BackgroundWordingState();
}

class _BackgroundWordingState extends State<BackgroundWording>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _tween;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _tween = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_controller);

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _tween,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Text(
          widget.title,
          style: GoogleFonts.exo2(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 38.0,
            height: 1.30,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
