import 'package:flutter/material.dart';

class SlideText extends StatelessWidget {
  const SlideText({super.key, required this.slidnAnimation});
  final Animation<Offset> slidnAnimation;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidnAnimation,
      builder: (context, _) {
        return SlideTransition(
            position: slidnAnimation,
            child: const Text(
              'Read free books',
              textAlign: TextAlign.center,
            ));
      },
    );
  }
}
