import 'package:flutter/material.dart';

class AnimatedHorizontalContainer extends StatefulWidget {
  final double percentage;
  final Duration duration;

  AnimatedHorizontalContainer(
      {required this.percentage, required this.duration});

  @override
  _AnimatedHorizontalContainerState createState() =>
      _AnimatedHorizontalContainerState();
}

class _AnimatedHorizontalContainerState
    extends State<AnimatedHorizontalContainer> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: widget.percentage),
      duration: widget.duration,
      builder: (BuildContext context, double value, Widget? child) {
        return FractionallySizedBox(
          alignment: Alignment.centerLeft, // Align from left to right
          widthFactor: value,
          child: Container(
            color: Colors.blue, // color of the animated container
          ),
        );
      },
    );
  }
}
