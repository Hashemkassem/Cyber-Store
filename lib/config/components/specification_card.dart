import 'package:flutter/material.dart';
import 'package:cyber_store/config/components/glassContainer.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecificationCard extends StatelessWidget {
  final IconData icon;

  const SpecificationCard({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    content: Text(
                      'The robot are able to connect using bluetooth and you can do easly your your jobs by using it.\nJust go ahead and use it :).',
                      style: GoogleFonts.exo2(
                        color: Colors.orange,
                      ),
                    ),
                  ));
        },
        child: GlassContainer(
          widget: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Icon(
                icon,
                size: 60,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
