import 'package:flutter/material.dart';
import 'dart:math' as math;

class FurDBlackShadow extends StatelessWidget {
  const FurDBlackShadow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * .43,
      right: -20,
      width: size.width * .55,
      height: size.height * .4,
      child: Center(
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..rotateX(-90 * 180 / math.pi)
            ..setEntry(3, 2, .002),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 3,
                  blurRadius: 80,
                ),
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 3,
                  blurRadius: 80,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
