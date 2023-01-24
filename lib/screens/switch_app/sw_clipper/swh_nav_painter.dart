import 'package:flutter/cupertino.dart';

class SwhNavPainter extends CustomPainter {
  const SwhNavPainter({required this.colors});
  final List<Color> colors;

  @override
  void paint(Canvas canvas, Size size) {
    final double h = size.height, w = size.width;
    final gradient2 = LinearGradient(colors: colors);
    final rect = Rect.fromLTRB(0, 0, w, h);
    final paint = Paint()..shader = gradient2.createShader(rect);
    final path = Path();

    // left curve
    const qx1 = 0.0, qy1 = 0.0;
    final qx2 = 0.0, qy2 = h * .35;
    final qx3 = w * .15, qy3 = h * .35;
    path.cubicTo(qx1, qy1, qx2, qy2, qx3, qy3);

    final rx1 = w * .45, ry1 = h * .25;
    final rx2 = w * .25, ry2 = h;
    final rx3 = w * .5, ry3 = h;
    path.cubicTo(rx1, ry1, rx2, ry2, rx3, ry3);

    path.lineTo(w, h);
    path.lineTo(w, 0);

    // Right Curve
    final nx1 = w, ny1 = 0.0;
    final nx2 = w, ny2 = h * .35;
    final nx3 = w * .85, ny3 = h * .35;
    path.cubicTo(nx1, ny1, nx2, ny2, nx3, ny3);

    final px1 = w * .55, py1 = h * .25;
    final px2 = w * .8, py2 = h;
    final px3 = w * .5, py3 = h;
    path.cubicTo(px1, py1, px2, py2, px3, py3);

    path.lineTo(0, h);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
