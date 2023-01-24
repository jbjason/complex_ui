import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as math;

class SwdTempPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    const gradient = SweepGradient(colors: [
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.grey,
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
    ]);
    final center = Offset(w / 2, w / 2);
    final rect = Rect.fromCenter(center: center, width: w * 1.3, height: w);
    final paint = Paint()
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke
      ..shader = gradient.createShader(rect);

    canvas.drawArc(rect, math.radians(220), math.radians(300), false, paint);

    final center2 = Offset(w / 2, w / 2);
    final rect2 =
        Rect.fromCenter(center: center2, width: w * 1.1, height: w * .67);
    final paint2 = Paint()
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke
      ..shader = gradient.createShader(rect2);

    canvas.drawArc(rect2, math.radians(220), math.radians(300), false, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
