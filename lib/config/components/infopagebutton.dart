import 'package:cyber_store/config/components/glassContainer.dart';
import 'package:flutter/material.dart';

class InfoWidgetView extends StatelessWidget {
  const InfoWidgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      width2: double.infinity,
      high2: MediaQuery.of(context).size.height * 0.16,
      widget: const Column(),
    );
  }
}
