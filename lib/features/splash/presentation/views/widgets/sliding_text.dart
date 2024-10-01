import 'package:flutter/material.dart';

import '../../../../../core/themes/styles.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Text(
              'The best chat app of this century',
              style: Styles.textStyle10.copyWith(color: Colors.black),
            ),
          );
        });
  }
}
