import 'package:flutter/material.dart';

class DocHAppbarClip extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    final h = size.height, w = size.width;
    path.lineTo(0, h);

    // left first curve
    final double mx1 = 0, my1 = h * .75;
    final double mx2 = w * .1, my2 = h * .75;
    final double mx3 = w * .2, my3 = h * .75;
    path.cubicTo(mx1, my1, mx2, my2, mx3, my3);

    // middle curve left
    path.lineTo(w * .3, h * .75);
    final double nx1 = w * .4, ny1 = h * .75;
    final double nx2 = w * .4, ny2 = h * .35;
    final double nx3 = w * .5, ny3 = h * .345;
    path.cubicTo(nx1, ny1, nx2, ny2, nx3, ny3);

    // middle curve Right
    final double qx1 = w * .61, qy1 = h * .345;
    final double qx2 = w * .6, qy2 = h * .75;
    final double qx3 = w * .7, qy3 = h * .75;
    path.cubicTo(qx1, qy1, qx2, qy2, qx3, qy3);

    path.lineTo(w * .85, h * .75);

    // Right curve
    final double rx1 = w * .95, ry1 = h * .75;
    final double rx2 = w * .99, ry2 = h * .6;
    final double rx3 = w, ry3 = h * .6;
    path.cubicTo(rx1, ry1, rx2, ry2, rx3, ry3);

    //path.lineTo(w, h * .75);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}

class DocHBodyClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final w = size.width, h = size.height;

    final double mx1 = 0, my1 = h * .2;
    final double mx2 = w, my2 = 0;
    final double mx3 = w, my3 = h * .24;
    path.cubicTo(mx1, my1, mx2, my2, mx3, my3);

    path.lineTo(w, h);
    path.lineTo(0, h);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class DocHNavBarClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final h = size.height, w = size.width;
    path.moveTo(0, h * .2);

    // left first curve
    final double mx1 = h * .2, my1 = h * 0.5;
    final double mx2 = w * .15, my2 = h * 0.5;
    final double mx3 = w * .2, my3 = h * 0.5;
    path.cubicTo(mx1, my1, mx2, my2, mx3, my3);

    path.lineTo(w * .3, h * 0.5);

    // middle curve left
    final double nx1 = w * .4, ny1 = h * 0.5;
    final double nx2 = w * .4, ny2 = h * .9;
    final double nx3 = w * .5, ny3 = h * .9;
    path.cubicTo(nx1, ny1, nx2, ny2, nx3, ny3);

    // middle curve Right
    final double qx1 = w * .59, qy1 = h * .9;
    final double qx2 = w * .6, qy2 = h * 0.5;
    final double qx3 = w * .7, qy3 = h * 0.5;
    path.cubicTo(qx1, qy1, qx2, qy2, qx3, qy3);

    path.lineTo(w * .7, h * .5);
    path.lineTo(w * .85, h * .5);

    // Right curve
    final double rx1 = w * .9, ry1 = h * .5;
    final double rx2 = w * .99, ry2 = h * .4;
    final double rx3 = w, ry3 = 0;
    path.cubicTo(rx1, ry1, rx2, ry2, rx3, ry3);

    path.lineTo(w, h);
    path.lineTo(0, h);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class DocDBodyClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final w = size.width, h = size.height;

    path.lineTo(w, 0);
    path.lineTo(w, h);

    final double mx1 = w * .85, my1 = h * .7;
    final double mx2 = 0, my2 = h;
    final double mx3 = 0, my3 = h * .7;
    path.cubicTo(mx1, my1, mx2, my2, mx3, my3);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
