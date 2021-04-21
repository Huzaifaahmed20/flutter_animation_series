import 'dart:math';

import 'package:flutter/material.dart';

class CustomImplicitAnimation extends StatefulWidget {
  CustomImplicitAnimation({Key key}) : super(key: key);

  @override
  _CustomImplicitAnimationState createState() =>
      _CustomImplicitAnimationState();
}

class _CustomImplicitAnimationState extends State<CustomImplicitAnimation> {
  static final Image earth = Image.asset('assets/earth.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder<double>(
        child: earth,
        tween: Tween<double>(begin: 0, end: 2 * pi),
        duration: const Duration(seconds: 20),
        builder: (_, double angle, child) {
          return Transform.rotate(
            angle: angle,
            child: child,
          );
        },
      ),
    );
  }
}
