import 'package:flutter/material.dart';

class AnimatedFadeInWidget extends StatelessWidget {
  const AnimatedFadeInWidget({
    super.key,
    required this.widgetHOW,
    required this.duration,
  });

  final Widget widgetHOW;
  final Duration duration;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: duration,
      tween: Tween<double>(begin: 0.0, end: 1.0),
      curve: const Interval(0.33,1.0,),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: widgetHOW,
        );
      },
    );
  }
}
