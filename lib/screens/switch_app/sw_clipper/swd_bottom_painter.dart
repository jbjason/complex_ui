import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as math;

class SwdBottomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final center = Offset(w / 2, w / 2);

    // back Shadow
    const gradient2 = SweepGradient(colors: [
      Color(0xFF616161),
      Colors.transparent,
      Colors.transparent,
      Color(0xFF616161),
      Colors.transparent,
    ]);
    final rect2 =
        Rect.fromCenter(center: center, width: w * 1.1, height: w * .909);
    final paint2 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..shader = gradient2.createShader(rect2);
    canvas.drawArc(rect2, math.radians(180), math.radians(360), false, paint2);

    // Front circle
    final rect =
        Rect.fromCenter(center: center, width: w * 1.4, height: w * .9);
    const gradient = SweepGradient(colors: [
      Colors.transparent,
      Color.fromARGB(255, 52, 57, 70),
      Colors.transparent,
      Color(0xFF202430),
    ]);
    final paint = Paint()..shader = gradient.createShader(rect);
    canvas.drawArc(rect, math.radians(180), math.radians(360), false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
