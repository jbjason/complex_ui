import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as math;

class CartWClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final w = size.width, h = size.height;
    final path = Path();
    path.lineTo(0, h * .6);

    final double px1 = 0, py1 = h * .7;
    final double px2 = w * .15, py2 = h * .7;
    final double px3 = w * .15, py3 = h * .75;
    path.cubicTo(px1, py1, px2, py2, px3, py3);

    final double qx1 = w * .15, qy1 = h * .8;
    final double qx2 = 0, qy2 = h * .8;
    final double qx3 = 0, qy3 = h * .9;
    path.cubicTo(qx1, qy1, qx2, qy2, qx3, qy3);

    path.lineTo(0, h);
    path.lineTo(w, h);
    path.lineTo(w, h * .9);

    final double rx1 = w, ry1 = h * .8;
    final double rx2 = w * .85, ry2 = h * .8;
    final double rx3 = w * .85, ry3 = h * .75;
    path.cubicTo(rx1, ry1, rx2, ry2, rx3, ry3);

    final double sx1 = w * .85, sy1 = h * .7;
    final double sx2 = w, sy2 = h * .7;
    final double sx3 = w, sy3 = h * .6;
    path.cubicTo(sx1, sy1, sx2, sy2, sx3, sy3);

    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class CartHItemClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final w = size.width, h = size.height;

    path.lineTo(0, h);
    path.quadraticBezierTo(w / 2, h * .8, w, h);

    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CartHBodyMiddleClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final w = size.width, h = size.height;

    path.moveTo(0, h * .2);

    final px1 = w * .02, py1 = -h * .2;
    final px2 = w / 4, py2 = h * .2;
    final px3 = w / 2, py3 = h * .2;
    path.cubicTo(px1, py1, px2, py2, px3, py3);

    final qx1 = w * 3 / 4, qy1 = h * .2;
    final qx2 = w * .98, qy2 = -h * .2;
    final qx3 = w, qy3 = h * .2;
    path.cubicTo(qx1, qy1, qx2, qy2, qx3, qy3);

    path.lineTo(w, h * .8);

    final rx1 = w * .98, ry1 = h * 1.2;
    final rx2 = w * 3 / 4, ry2 = h * .7;
    final rx3 = w / 2, ry3 = h * .7;
    path.cubicTo(rx1, ry1, rx2, ry2, rx3, ry3);

    final sx1 = w / 4, sy1 = h * .7;
    final sx2 = w * .02, sy2 = h * 1.2;
    final sx3 = 0.0, sy3 = h * .8;
    path.cubicTo(sx1, sy1, sx2, sy2, sx3, sy3);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CartHBodyBottomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final w = size.width, h = size.height;

    path.moveTo(0, h * .2);

    final px1 = w * .02, py1 = -h * .2;
    final px2 = w / 4, py2 = h * .12;
    final px3 = w / 2, py3 = h * .12;
    path.cubicTo(px1, py1, px2, py2, px3, py3);

    final qx1 = w * 3 / 4, qy1 = h * .12;
    final qx2 = w * .98, qy2 = -h * .2;
    final qx3 = w, qy3 = h * .2;
    path.cubicTo(qx1, qy1, qx2, qy2, qx3, qy3);

    path.lineTo(w, h);
    path.lineTo(0, h);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CartCircularprogress extends CustomPainter {
  const CartCircularprogress({
    required this.backColor,
    required this.frontColor,
    required this.strokeWidth,
    required this.value,
  });
  final Color backColor, frontColor;
  final double strokeWidth, value;

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width, h = size.height;
    final paint1 = Paint()
      ..strokeWidth = strokeWidth
      ..color = backColor
      ..style = PaintingStyle.stroke;
    final paint2 = Paint()
      ..strokeWidth = strokeWidth
      ..color = frontColor
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final r =
        Rect.fromCenter(center: Offset(w / 2, h / 2), width: w, height: h);

    canvas.drawArc(r, math.radians(0), math.radians(360), false, paint1);
    canvas.drawArc(
        r, math.radians(270), math.radians(360 * value), false, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class CartHNavSelcted extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final w = size.width, h = size.height;
    final path = Path();
    path.lineTo(0, h);

    path.lineTo(w * .2, h);

    final px1 = w * .4, py1 = h;
    final px2 = w * .4, py2 = h * .68;
    final px3 = w * .5, py3 = h * .68;
    path.cubicTo(px1, py1, px2, py2, px3, py3);

    final qx1 = w * .6, qy1 = h * .68;
    final qx2 = w * .6, qy2 = h;
    final qx3 = w * .8, qy3 = h;
    path.cubicTo(qx1, qy1, qx2, qy2, qx3, qy3);

    path.lineTo(w, h);
    path.lineTo(w, 0);
    path.close();

    path.addArc(
        Rect.fromCenter(center: Offset(w / 2, h * .575), width: 5, height: 5),
        math.radians(0),
        math.radians(360));

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}
