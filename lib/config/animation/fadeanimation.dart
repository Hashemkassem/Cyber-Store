// ignore_for_file: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class MyAnimation extends StatelessWidget {
  final Widget child;
  final int index;
  const MyAnimation({super.key, required this.child, required this.index});

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      duration: const Duration(
        milliseconds: 300,
      ),
      position: index,
      child: SlideAnimation(
        verticalOffset: 200,
        child: FadeInAnimation(
          child: child,
        ),
      ),
    );
  }
}
