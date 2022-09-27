import 'package:flutter/material.dart';

class HomeBodyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final w = size.width, h = size.height;
    path.lineTo(w, 0);
    path.lineTo(w, h);
    final double x1 = w, y1 = h * .8;
    final double x2 = 0, y2 = h * .815;
    final double x3 = 0, y3 = h * .6;
    path.cubicTo(x1, y1, x2, y2, x3, y3);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
