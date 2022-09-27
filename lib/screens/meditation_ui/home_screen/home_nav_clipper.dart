import 'package:flutter/material.dart';

class HomeNavClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final h = size.height, w = size.width;
    path.lineTo(w * .2, 0);

    final double x1 = w * .4, y1 = 0;
    final double x2 = w * .37, y2 = h * .5;
    final double x3 = w * .5, y3 = h * .6;
    path.cubicTo(x1, y1, x2, y2, x3, y3);

    final double px1 = w * .63, py1 = h * .6;
    final double px2 = w * .65, py2 = 0;
    final double px3 = w * .8, py3 = 0;
    path.cubicTo(px1, py1, px2, py2, px3, py3);
    path.lineTo(w, 0);
    path.lineTo(w, h);
    path.lineTo(0, h);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
