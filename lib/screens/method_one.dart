import 'dart:math' show pi;
import 'package:flutter/material.dart';

class MethodOne extends StatefulWidget {
  _MethodOneState createState() => _MethodOneState();
}

class _MethodOneState extends State<MethodOne>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );

    animation = Tween<double>(
      begin: 0,
      end: 2 * pi,
    ).animate(animationController)
      ..addListener(() {
        setState(() {});
      });

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Transform.rotate(
        angle: animation.value,
        child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(30),
            child: Image.asset('assets/images/logo.png')),
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
