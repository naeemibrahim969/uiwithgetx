import 'package:flutter/material.dart';
import 'dart:math' as math;

class Background extends StatelessWidget {
  final Widget child;
  const Background({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;//screen width height
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: Image.asset('assets/images/main_top.png',width: size.width * 0.3,),
            top: 0,
            left: 0,
          ),
          Positioned(
            child: Image.asset('assets/images/main_bottom.png',width: size.width * 0.2,),
            bottom: 0,
            left: 0,
          ),
          child,
        ],
      ),
    );
  }
}
