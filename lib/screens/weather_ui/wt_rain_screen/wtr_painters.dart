import 'package:flutter/cupertino.dart';
import 'package:complex_ui/screens/weather_ui/wt_constants.dart';

class WtrNavPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    const gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0, .3, .9],
      colors: [rBodyTopColor, rNavColor, rBodyBottomColor],
    );
    final center = Offset(w / 2, h / 2);
    final rect = Rect.fromCenter(center: center, width: w, height: h);
    final paint1 = Paint()..shader = gradient.createShader(rect);
    final path = Path();

    final x1 = w * .1, y1 = h * .3;
    final x2 = w * .2, y2 = -h * .4;
    final x3 = w * .3, y3 = h * .8;
    path.cubicTo(x1, y1, x2, y2, x3, y3);
    path.quadraticBezierTo(w * .33, h, w * .42, h);
    path.lineTo(w, h);
    path.lineTo(w, 0);

    final p1 = w * .9, q1 = h * .3;
    final p2 = w * .8, q2 = -h * .4;
    final p3 = w * .7, q3 = h * .8;
    path.cubicTo(p1, q1, p2, q2, p3, q3);
    path.quadraticBezierTo(w * .67, h, w * .58, h);
    path.lineTo(0, h);
    path.close();
    canvas.drawPath(path, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class WtrSwitchPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    // whole switch Arc
    const gradinet = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        rSwtichLeftColor,
        rSnowColor,
        rSwtichRightColor,
        rSwtichRightColor
      ],
    );
    final rect = Rect.fromLTRB(0, 0, w, h);
    final paint = Paint()..shader = gradinet.createShader(rect);
    final path = Path();

    path.moveTo(w * .2, h - 3);
    path.cubicTo(0, h / 2, w * .2, 0.0, w * .3, 0.0);
    path.cubicTo(w * .5, h * .1, w * .7, h * .1, w * .8, h * .1);
    path.cubicTo(w, h / 2, w * .8, h * .9, w * .7, h * .9);
    path.cubicTo(w * .5, h * .9, w * .4, h * .9, w * .3, h);
    path.close();
    canvas.drawPath(path, paint);

    // left button shadow Arc
    const gradinet2 = LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [rSnowColor, Color(0xFFFFFFFF), rSnowColor],
    );
    final paint2 = Paint()..shader = gradinet2.createShader(rect);
    final path2 = Path();
    path2.moveTo(w * .3, h);
    path2.cubicTo(0, h * .66, 0, h * .1, w * .3, 0.0);
    path2.cubicTo(w * .08, h * .1, w * .08, h * .75, w * .3, h);
    path2.close();
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class WtrBottomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    const gradient1 = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        rBodyTopColor,
        rBodyMiddleColor,
        rBackThirdColor,
        rBackThirdColor,
      ],
    );

    final center1 = Offset(w / 2, h / 2);
    final rect1 = Rect.fromCenter(center: center1, width: w, height: h);
    final paint1 = Paint()..shader = gradient1.createShader(rect1);
    final shadowBody = _body(w, h, 0.0);
    final frontBody = _body(w, h, 6);

    const gradient2 = SweepGradient(
      colors: [
        rRainColor,
        rBodyTopColor,
        rRainColor,
        rRainColor,
        rThunderColor,
        rRainColor,
        rRainColor,
      ],
    );
    final rect2 = Rect.fromCenter(center: center1, width: w, height: h);
    final paint2 = Paint()..shader = gradient2.createShader(rect2);
    canvas.drawPath(shadowBody, paint2);
    canvas.drawPath(frontBody, paint1);
  }

  Path _body(double w, double h, double topHeight) {
    final path = Path();
    path.moveTo(0, h * .2);
    final x1 = w * .2, y1 = -(h * .2) + topHeight;
    final x2 = w * .9, y2 = h * .35 + topHeight;
    final x3 = w, y3 = 0.0;
    path.cubicTo(x1, y1, x2, y2, x3, y3);
    path.lineTo(w, h);
    path.lineTo(0, h);
    path.close();
    return path;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
